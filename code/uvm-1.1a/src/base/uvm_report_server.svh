//
//------------------------------------------------------------------------------
//   Copyright 2007-2010 Mentor Graphics Corporation
//   Copyright 2007-2011 Cadence Design Systems, Inc. 
//   Copyright 2010 Synopsys, Inc.
//   All Rights Reserved Worldwide
//
//   Licensed under the Apache License, Version 2.0 (the
//   "License"); you may not use this file except in
//   compliance with the License.  You may obtain a copy of
//   the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in
//   writing, software distributed under the License is
//   distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
//   CONDITIONS OF ANY KIND, either express or implied.  See
//   the License for the specific language governing
//   permissions and limitations under the License.
//------------------------------------------------------------------------------

`ifndef UVM_REPORT_SERVER_SVH
`define UVM_REPORT_SERVER_SVH

typedef class uvm_report_object;

//------------------------------------------------------------------------------
//
// CLASS: uvm_report_server
//
// uvm_report_server is a global server that processes all of the reports
// generated by an uvm_report_handler. None of its methods are intended to be
// called by normal testbench code, although in some circumstances the virtual
// methods process_report and/or compose_uvm_info may be overloaded in a
// subclass.
//
//------------------------------------------------------------------------------

typedef class uvm_report_catcher;
class uvm_report_server extends uvm_object;

  local int max_quit_count; 
  local int quit_count;
  local int severity_count[uvm_severity];

  // Needed for callbacks
  function string get_type_name();
    return "uvm_report_server";
  endfunction
 
  // Variable: id_count
  //
  // An associative array holding the number of occurences
  // for each unique report ID.

  protected int id_count[string];

  bit enable_report_id_count_summary=1;


  // Function: new
  //
  // Creates the central report server, if not already created. Else, does
  // nothing. The constructor is protected to enforce a singleton.

  function new();
    set_name("uvm_report_server");
    set_max_quit_count(0);
    reset_quit_count();
    reset_severity_counts();
  endfunction


  static protected uvm_report_server m_global_report_server = get_server();

  // Function: set_server
  //
  // Sets the global report server to use for reporting. The report
  // server is responsible for formatting messages.

  static function void set_server(uvm_report_server server);
    if(m_global_report_server != null) begin
      server.set_max_quit_count(m_global_report_server.get_max_quit_count());
      server.set_quit_count(m_global_report_server.get_quit_count());
      m_global_report_server.copy_severity_counts(server);
      m_global_report_server.copy_id_counts(server);
    end

    m_global_report_server = server;
  endfunction


  // Function: get_server
  //
  // Gets the global report server. The method will always return 
  // a valid handle to a report server.

  static function uvm_report_server get_server();
    if (m_global_report_server == null)
      m_global_report_server = new;
    return m_global_report_server;
  endfunction

  local bit m_max_quit_overridable = 1;

  // Function: set_max_quit_count

  function void set_max_quit_count(int count, bit overridable = 1);
    if (m_max_quit_overridable == 0) begin
      uvm_report_info("NOMAXQUITOVR", $sformatf("The max quit count setting of %0d is not overridable to %0d due to a previous setting.", max_quit_count, count), UVM_NONE);
      return;
    end
    m_max_quit_overridable = overridable;
    max_quit_count = count < 0 ? 0 : count;
  endfunction

  // Function: get_max_quit_count
  //
  // Get or set the maximum number of COUNT actions that can be tolerated
  // before an UVM_EXIT action is taken. The default is 0, which specifies
  // no maximum.

  function int get_max_quit_count();
    return max_quit_count;
  endfunction


  // Function: set_quit_count

  function void set_quit_count(int quit_count);
    quit_count = quit_count < 0 ? 0 : quit_count;
  endfunction

  // Function: get_quit_count

  function int get_quit_count();
    return quit_count;
  endfunction

  // Function: incr_quit_count

  function void incr_quit_count();
    quit_count++;
  endfunction

  // Function: reset_quit_count
  //
  // Set, get, increment, or reset to 0 the quit count, i.e., the number of
  // COUNT actions issued.

  function void reset_quit_count();
    quit_count = 0;
  endfunction

  // Function: is_quit_count_reached
  //
  // If is_quit_count_reached returns 1, then the quit counter has reached
  // the maximum.

  function bit is_quit_count_reached();
    return (quit_count >= max_quit_count);
  endfunction


  // Function: set_severity_count

  function void set_severity_count(uvm_severity severity, int count);
    severity_count[severity] = count < 0 ? 0 : count;
  endfunction

  // Function: get_severity_count

  function int get_severity_count(uvm_severity severity);
    return severity_count[severity];
  endfunction

  // Function: incr_severity_count

  function void incr_severity_count(uvm_severity severity);
    severity_count[severity]++;
  endfunction

  // Function: reset_severity_counts
  //
  // Set, get, or increment the counter for the given severity, or reset
  // all severity counters to 0.

  function void reset_severity_counts();
    uvm_severity_type s;
    s = s.first();
    forever begin
      severity_count[s] = 0;
      if(s == s.last()) break;
      s = s.next();
    end
  endfunction


  // Function: set_id_count

  function void set_id_count(string id, int count);
    id_count[id] = count < 0 ? 0 : count;
  endfunction

  // Function: get_id_count

  function int get_id_count(string id);
    if(id_count.exists(id))
      return id_count[id];
    return 0;
  endfunction

  // Function: incr_id_count
  //
  // Set, get, or increment the counter for reports with the given id.

  function void incr_id_count(string id);
    if(id_count.exists(id))
      id_count[id]++;
    else
      id_count[id] = 1;
  endfunction


  // f_display
  //
  // This method sends string severity to the command line if file is 0 and to
  // the file(s) specified by file if it is not 0.

  function void f_display(UVM_FILE file, string str);
    if (file == 0)
      $display("%s", str);
    else
      $fdisplay(file, "%s", str);
  endfunction


  // Function- report
  //
  //

  virtual function void report(
      uvm_severity severity,
      string name,
      string id,
      string message,
      int verbosity_level,
      string filename,
      int line,
      uvm_report_object client
      );
    string m;
    uvm_action a;
    UVM_FILE f;
    bit report_ok;
    uvm_report_handler rh;

    rh = client.get_report_handler();
  
    // filter based on verbosity level
 
    if(!client.uvm_report_enabled(verbosity_level, severity, id)) begin
       return;
    end

    // determine file to send report and actions to execute

    a = rh.get_action(severity, id); 
    if( uvm_action_type'(a) == UVM_NO_ACTION )
      return;

    f = rh.get_file_handle(severity, id);

    // The hooks can do additional filtering.  If the hook function
    // return 1 then continue processing the report.  If the hook
    // returns 0 then skip processing the report.

    if(a & UVM_CALL_HOOK)
      report_ok = rh.run_hooks(client, severity, id,
                              message, verbosity_level, filename, line);
    else
      report_ok = 1;

    if(report_ok)
      report_ok = uvm_report_catcher::process_all_report_catchers(
                     this, client, severity, name, id, message,
                     verbosity_level, a, filename, line);

    if(report_ok) begin	
      m = compose_message(severity, name, id, message, filename, line); 
      process_report(severity, name, id, message, a, f, filename,
                     line, m, verbosity_level, client);
    end
  
  endfunction



  // Function: process_report
  //
  // Calls <compose_message> to construct the actual message to be
  // output. It then takes the appropriate action according to the value of
  // action and file. 
  //
  // This method can be overloaded by expert users to customize the way the
  // reporting system processes reports and the actions enabled for them.

  virtual function void process_report(
      uvm_severity severity,
      string name,
      string id,
      string message,
      uvm_action action,
      UVM_FILE file,
      string filename,
      int line,
      string composed_message,
      int verbosity_level,
      uvm_report_object client
      );
    // update counts
    incr_severity_count(severity);
    incr_id_count(id);

    if(action & UVM_DISPLAY)
      $display("%s",composed_message);

    // if log is set we need to send to the file but not resend to the
    // display. So, we need to mask off stdout for an mcd or we need
    // to ignore the stdout file handle for a file handle.
    if(action & UVM_LOG)
      if( (file == 0) || (file != 32'h8000_0001) ) //ignore stdout handle
      begin
        UVM_FILE tmp_file = file;
        if( (file&32'h8000_0000) == 0) //is an mcd so mask off stdout
        begin
           tmp_file = file & 32'hffff_fffe;
        end
        f_display(tmp_file,composed_message);
      end    

    if(action & UVM_EXIT) client.die();

    if(action & UVM_COUNT) begin
      if(get_max_quit_count() != 0) begin
          incr_quit_count();
        if(is_quit_count_reached()) begin
          client.die();
        end
      end  
    end

    if (action & UVM_STOP) $stop;

  endfunction



  // Function: compose_message
  //
  // Constructs the actual string sent to the file or command line
  // from the severity, component name, report id, and the message itself. 
  //
  // Expert users can overload this method to customize report formatting.

  virtual function string compose_message(
      uvm_severity severity,
      string name,
      string id,
      string message,
      string filename,
      int    line
      );
    uvm_severity_type sv;
    string time_str;
    string line_str;
    
    sv = uvm_severity_type'(severity);
    $swrite(time_str, "%0t", $realtime);
 
    case(1)
      (name == "" && filename == ""):
	       return {sv.name(), " @ ", time_str, " [", id, "] ", message};
      (name != "" && filename == ""):
	       return {sv.name(), " @ ", time_str, ": ", name, " [", id, "] ", message};
      (name == "" && filename != ""):
           begin
               $swrite(line_str, "%0d", line);
		 return {sv.name(), " ",filename, "(", line_str, ")", " @ ", time_str, " [", id, "] ", message};
           end
      (name != "" && filename != ""):
           begin
               $swrite(line_str, "%0d", line);
	         return {sv.name(), " ", filename, "(", line_str, ")", " @ ", time_str, ": ", name, " [", id, "] ", message};
           end
    endcase
  endfunction 




  // Function: summarize
  //
  // See <uvm_report_object::report_summarize> method.

  virtual function void summarize(UVM_FILE file=0);
    string id;
    string name;
    string output_str;
    uvm_report_catcher::summarize_report_catcher(file);
    f_display(file, "");
    f_display(file, "--- UVM Report Summary ---");
    f_display(file, "");

    if(max_quit_count != 0) begin
      if ( quit_count >= max_quit_count ) f_display(file, "Quit count reached!");
      $sformat(output_str, "Quit count : %5d of %5d",
                             quit_count, max_quit_count);
      f_display(file, output_str);
    end

    f_display(file, "** Report counts by severity");
    for(uvm_severity_type s = s.first(); 1; s = s.next()) begin
      if(severity_count.exists(s)) begin
        int cnt;
        cnt = severity_count[s];
        name = s.name();
        $sformat(output_str, "%s :%5d", name, cnt);
        f_display(file, output_str);
      end
      if(s == s.last()) break;
    end

    if (enable_report_id_count_summary) begin

      f_display(file, "** Report counts by id");
      for(int found = id_count.first(id);
           found;
           found = id_count.next(id)) begin
        int cnt;
        cnt = id_count[id];
        $sformat(output_str, "[%s] %5d", id, cnt);
        f_display(file, output_str);
      end

    end

  endfunction


  // Function: dump_server_state
  //
  // Dumps server state information.

  function void dump_server_state();

    string s;
    uvm_severity_type sev;
    string id;

    f_display(0, "report server state");
    f_display(0, "");   
    f_display(0, "+-------------+");
    f_display(0, "|   counts    |");
    f_display(0, "+-------------+");
    f_display(0, "");

    $sformat(s, "max quit count = %5d", max_quit_count);
    f_display(0, s);
    $sformat(s, "quit count = %5d", quit_count);
    f_display(0, s);

    sev = sev.first();
    forever begin
      int cnt;
      cnt = severity_count[sev];
      s = sev.name();
      $sformat(s, "%s :%5d", s, cnt);
      f_display(0, s);
      if(sev == sev.last())
        break;
      sev = sev.next();
    end

    if(id_count.first(id))
    do begin
      int cnt;
      cnt = id_count[id];
      $sformat(s, "%s :%5d", id, cnt);
      f_display(0, s);
    end
    while (id_count.next(id));

  endfunction


  // Function- copy_severity_counts
  //
  // Internal method.

  function void copy_severity_counts(uvm_report_server dst);
    foreach(severity_count[s]) begin
      dst.set_severity_count(s,severity_count[s]);
    end
  endfunction


  // Function- copy_severity_counts
  //
  // Internal method.

  function void copy_id_counts(uvm_report_server dst);
    foreach(id_count[s]) begin
      dst.set_id_count(s,id_count[s]);
    end
  endfunction


endclass



//----------------------------------------------------------------------
// CLASS- uvm_report_global_server
//
// Singleton object that maintains a single global report server
//----------------------------------------------------------------------
class uvm_report_global_server;

  function new();
    void'(get_server());
  endfunction


  // Function: get_server
  //
  // Returns a handle to the central report server.

  function uvm_report_server get_server();
    return uvm_report_server::get_server();
  endfunction


  // Function- set_server (deprecated)
  //
  //

  function void set_server(uvm_report_server server);
    uvm_report_server::set_server(server);
  endfunction

endclass


`endif // UVM_REPORT_SERVER_SVH
