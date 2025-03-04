#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif
#include <stdio.h>
#include <dlfcn.h>

#ifdef __cplusplus
extern "C" {
#endif

extern void* VCS_dlsymLookup(const char *);
extern void vcsMsgReportNoSource1(const char *, const char*);

/* PLI routine: $fsdbDumpvars:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbDumpvars
#define __VCS_PLI_STUB_novas_call_fsdbDumpvars
extern void novas_call_fsdbDumpvars(int data, int reason);
#pragma weak novas_call_fsdbDumpvars
void novas_call_fsdbDumpvars(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbDumpvars");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbDumpvars");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbDumpvars");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbDumpvars)(int data, int reason) = novas_call_fsdbDumpvars;
#endif /* __VCS_PLI_STUB_novas_call_fsdbDumpvars */

/* PLI routine: $fsdbDumpvars:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbDumpvars
#define __VCS_PLI_STUB_novas_check_fsdbDumpvars
extern void novas_check_fsdbDumpvars(int data, int reason);
#pragma weak novas_check_fsdbDumpvars
void novas_check_fsdbDumpvars(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbDumpvars");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbDumpvars");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbDumpvars)(int data, int reason) = novas_check_fsdbDumpvars;
#endif /* __VCS_PLI_STUB_novas_check_fsdbDumpvars */

/* PLI routine: $fsdbDumpvars:misc */
#ifndef __VCS_PLI_STUB_novas_misc
#define __VCS_PLI_STUB_novas_misc
extern void novas_misc(int data, int reason);
#pragma weak novas_misc
void novas_misc(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_misc");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_misc");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_misc)(int data, int reason) = novas_misc;
#endif /* __VCS_PLI_STUB_novas_misc */

/* PLI routine: $fsdbDumpvarsByFile:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbDumpvarsByFile
#define __VCS_PLI_STUB_novas_call_fsdbDumpvarsByFile
extern void novas_call_fsdbDumpvarsByFile(int data, int reason);
#pragma weak novas_call_fsdbDumpvarsByFile
void novas_call_fsdbDumpvarsByFile(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbDumpvarsByFile");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbDumpvarsByFile");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbDumpvarsByFile");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbDumpvarsByFile)(int data, int reason) = novas_call_fsdbDumpvarsByFile;
#endif /* __VCS_PLI_STUB_novas_call_fsdbDumpvarsByFile */

/* PLI routine: $fsdbDumpvarsByFile:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbDumpvarsByFile
#define __VCS_PLI_STUB_novas_check_fsdbDumpvarsByFile
extern void novas_check_fsdbDumpvarsByFile(int data, int reason);
#pragma weak novas_check_fsdbDumpvarsByFile
void novas_check_fsdbDumpvarsByFile(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbDumpvarsByFile");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbDumpvarsByFile");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbDumpvarsByFile)(int data, int reason) = novas_check_fsdbDumpvarsByFile;
#endif /* __VCS_PLI_STUB_novas_check_fsdbDumpvarsByFile */

/* PLI routine: $fsdbAddRuntimeSignal:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbAddRuntimeSignal
#define __VCS_PLI_STUB_novas_call_fsdbAddRuntimeSignal
extern void novas_call_fsdbAddRuntimeSignal(int data, int reason);
#pragma weak novas_call_fsdbAddRuntimeSignal
void novas_call_fsdbAddRuntimeSignal(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbAddRuntimeSignal");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbAddRuntimeSignal");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbAddRuntimeSignal");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbAddRuntimeSignal)(int data, int reason) = novas_call_fsdbAddRuntimeSignal;
#endif /* __VCS_PLI_STUB_novas_call_fsdbAddRuntimeSignal */

/* PLI routine: $fsdbAddRuntimeSignal:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbAddRuntimeSignal
#define __VCS_PLI_STUB_novas_check_fsdbAddRuntimeSignal
extern void novas_check_fsdbAddRuntimeSignal(int data, int reason);
#pragma weak novas_check_fsdbAddRuntimeSignal
void novas_check_fsdbAddRuntimeSignal(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbAddRuntimeSignal");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbAddRuntimeSignal");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbAddRuntimeSignal)(int data, int reason) = novas_check_fsdbAddRuntimeSignal;
#endif /* __VCS_PLI_STUB_novas_check_fsdbAddRuntimeSignal */

/* PLI routine: $sps_create_transaction_stream:call */
#ifndef __VCS_PLI_STUB_novas_call_sps_create_transaction_stream
#define __VCS_PLI_STUB_novas_call_sps_create_transaction_stream
extern void novas_call_sps_create_transaction_stream(int data, int reason);
#pragma weak novas_call_sps_create_transaction_stream
void novas_call_sps_create_transaction_stream(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_sps_create_transaction_stream");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_sps_create_transaction_stream");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_sps_create_transaction_stream");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_sps_create_transaction_stream)(int data, int reason) = novas_call_sps_create_transaction_stream;
#endif /* __VCS_PLI_STUB_novas_call_sps_create_transaction_stream */

/* PLI routine: $sps_create_transaction_stream:check */
#ifndef __VCS_PLI_STUB_novas_check_sps_create_transaction_stream
#define __VCS_PLI_STUB_novas_check_sps_create_transaction_stream
extern void novas_check_sps_create_transaction_stream(int data, int reason);
#pragma weak novas_check_sps_create_transaction_stream
void novas_check_sps_create_transaction_stream(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_sps_create_transaction_stream");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_sps_create_transaction_stream");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_sps_create_transaction_stream)(int data, int reason) = novas_check_sps_create_transaction_stream;
#endif /* __VCS_PLI_STUB_novas_check_sps_create_transaction_stream */

/* PLI routine: $sps_begin_transaction:call */
#ifndef __VCS_PLI_STUB_novas_call_sps_begin_transaction
#define __VCS_PLI_STUB_novas_call_sps_begin_transaction
extern void novas_call_sps_begin_transaction(int data, int reason);
#pragma weak novas_call_sps_begin_transaction
void novas_call_sps_begin_transaction(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_sps_begin_transaction");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_sps_begin_transaction");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_sps_begin_transaction");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_sps_begin_transaction)(int data, int reason) = novas_call_sps_begin_transaction;
#endif /* __VCS_PLI_STUB_novas_call_sps_begin_transaction */

/* PLI routine: $sps_begin_transaction:check */
#ifndef __VCS_PLI_STUB_novas_check_sps_begin_transaction
#define __VCS_PLI_STUB_novas_check_sps_begin_transaction
extern void novas_check_sps_begin_transaction(int data, int reason);
#pragma weak novas_check_sps_begin_transaction
void novas_check_sps_begin_transaction(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_sps_begin_transaction");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_sps_begin_transaction");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_sps_begin_transaction)(int data, int reason) = novas_check_sps_begin_transaction;
#endif /* __VCS_PLI_STUB_novas_check_sps_begin_transaction */

/* PLI routine: $sps_end_transaction:call */
#ifndef __VCS_PLI_STUB_novas_call_sps_end_transaction
#define __VCS_PLI_STUB_novas_call_sps_end_transaction
extern void novas_call_sps_end_transaction(int data, int reason);
#pragma weak novas_call_sps_end_transaction
void novas_call_sps_end_transaction(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_sps_end_transaction");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_sps_end_transaction");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_sps_end_transaction");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_sps_end_transaction)(int data, int reason) = novas_call_sps_end_transaction;
#endif /* __VCS_PLI_STUB_novas_call_sps_end_transaction */

/* PLI routine: $sps_end_transaction:check */
#ifndef __VCS_PLI_STUB_novas_check_sps_end_transaction
#define __VCS_PLI_STUB_novas_check_sps_end_transaction
extern void novas_check_sps_end_transaction(int data, int reason);
#pragma weak novas_check_sps_end_transaction
void novas_check_sps_end_transaction(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_sps_end_transaction");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_sps_end_transaction");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_sps_end_transaction)(int data, int reason) = novas_check_sps_end_transaction;
#endif /* __VCS_PLI_STUB_novas_check_sps_end_transaction */

/* PLI routine: $sps_free_transaction:call */
#ifndef __VCS_PLI_STUB_novas_call_sps_free_transaction
#define __VCS_PLI_STUB_novas_call_sps_free_transaction
extern void novas_call_sps_free_transaction(int data, int reason);
#pragma weak novas_call_sps_free_transaction
void novas_call_sps_free_transaction(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_sps_free_transaction");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_sps_free_transaction");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_sps_free_transaction");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_sps_free_transaction)(int data, int reason) = novas_call_sps_free_transaction;
#endif /* __VCS_PLI_STUB_novas_call_sps_free_transaction */

/* PLI routine: $sps_free_transaction:check */
#ifndef __VCS_PLI_STUB_novas_check_sps_free_transaction
#define __VCS_PLI_STUB_novas_check_sps_free_transaction
extern void novas_check_sps_free_transaction(int data, int reason);
#pragma weak novas_check_sps_free_transaction
void novas_check_sps_free_transaction(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_sps_free_transaction");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_sps_free_transaction");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_sps_free_transaction)(int data, int reason) = novas_check_sps_free_transaction;
#endif /* __VCS_PLI_STUB_novas_check_sps_free_transaction */

/* PLI routine: $sps_add_attribute:call */
#ifndef __VCS_PLI_STUB_novas_call_sps_add_attribute
#define __VCS_PLI_STUB_novas_call_sps_add_attribute
extern void novas_call_sps_add_attribute(int data, int reason);
#pragma weak novas_call_sps_add_attribute
void novas_call_sps_add_attribute(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_sps_add_attribute");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_sps_add_attribute");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_sps_add_attribute");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_sps_add_attribute)(int data, int reason) = novas_call_sps_add_attribute;
#endif /* __VCS_PLI_STUB_novas_call_sps_add_attribute */

/* PLI routine: $sps_add_attribute:check */
#ifndef __VCS_PLI_STUB_novas_check_sps_add_attribute
#define __VCS_PLI_STUB_novas_check_sps_add_attribute
extern void novas_check_sps_add_attribute(int data, int reason);
#pragma weak novas_check_sps_add_attribute
void novas_check_sps_add_attribute(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_sps_add_attribute");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_sps_add_attribute");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_sps_add_attribute)(int data, int reason) = novas_check_sps_add_attribute;
#endif /* __VCS_PLI_STUB_novas_check_sps_add_attribute */

/* PLI routine: $sps_update_label:call */
#ifndef __VCS_PLI_STUB_novas_call_sps_update_label
#define __VCS_PLI_STUB_novas_call_sps_update_label
extern void novas_call_sps_update_label(int data, int reason);
#pragma weak novas_call_sps_update_label
void novas_call_sps_update_label(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_sps_update_label");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_sps_update_label");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_sps_update_label");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_sps_update_label)(int data, int reason) = novas_call_sps_update_label;
#endif /* __VCS_PLI_STUB_novas_call_sps_update_label */

/* PLI routine: $sps_update_label:check */
#ifndef __VCS_PLI_STUB_novas_check_sps_update_label
#define __VCS_PLI_STUB_novas_check_sps_update_label
extern void novas_check_sps_update_label(int data, int reason);
#pragma weak novas_check_sps_update_label
void novas_check_sps_update_label(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_sps_update_label");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_sps_update_label");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_sps_update_label)(int data, int reason) = novas_check_sps_update_label;
#endif /* __VCS_PLI_STUB_novas_check_sps_update_label */

/* PLI routine: $sps_add_relation:call */
#ifndef __VCS_PLI_STUB_novas_call_sps_add_relation
#define __VCS_PLI_STUB_novas_call_sps_add_relation
extern void novas_call_sps_add_relation(int data, int reason);
#pragma weak novas_call_sps_add_relation
void novas_call_sps_add_relation(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_sps_add_relation");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_sps_add_relation");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_sps_add_relation");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_sps_add_relation)(int data, int reason) = novas_call_sps_add_relation;
#endif /* __VCS_PLI_STUB_novas_call_sps_add_relation */

/* PLI routine: $sps_add_relation:check */
#ifndef __VCS_PLI_STUB_novas_check_sps_add_relation
#define __VCS_PLI_STUB_novas_check_sps_add_relation
extern void novas_check_sps_add_relation(int data, int reason);
#pragma weak novas_check_sps_add_relation
void novas_check_sps_add_relation(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_sps_add_relation");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_sps_add_relation");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_sps_add_relation)(int data, int reason) = novas_check_sps_add_relation;
#endif /* __VCS_PLI_STUB_novas_check_sps_add_relation */

/* PLI routine: $fsdbWhatif:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbWhatif
#define __VCS_PLI_STUB_novas_call_fsdbWhatif
extern void novas_call_fsdbWhatif(int data, int reason);
#pragma weak novas_call_fsdbWhatif
void novas_call_fsdbWhatif(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbWhatif");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbWhatif");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbWhatif");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbWhatif)(int data, int reason) = novas_call_fsdbWhatif;
#endif /* __VCS_PLI_STUB_novas_call_fsdbWhatif */

/* PLI routine: $fsdbDumpClassMethod:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbDumpClassMethod
#define __VCS_PLI_STUB_novas_call_fsdbDumpClassMethod
extern void novas_call_fsdbDumpClassMethod(int data, int reason);
#pragma weak novas_call_fsdbDumpClassMethod
void novas_call_fsdbDumpClassMethod(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbDumpClassMethod");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbDumpClassMethod");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbDumpClassMethod");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbDumpClassMethod)(int data, int reason) = novas_call_fsdbDumpClassMethod;
#endif /* __VCS_PLI_STUB_novas_call_fsdbDumpClassMethod */

/* PLI routine: $fsdbDumpClassMethod:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbDumpClassMethod
#define __VCS_PLI_STUB_novas_check_fsdbDumpClassMethod
extern void novas_check_fsdbDumpClassMethod(int data, int reason);
#pragma weak novas_check_fsdbDumpClassMethod
void novas_check_fsdbDumpClassMethod(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbDumpClassMethod");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbDumpClassMethod");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbDumpClassMethod)(int data, int reason) = novas_check_fsdbDumpClassMethod;
#endif /* __VCS_PLI_STUB_novas_check_fsdbDumpClassMethod */

/* PLI routine: $fsdbSuppressClassMethod:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbSuppressClassMethod
#define __VCS_PLI_STUB_novas_call_fsdbSuppressClassMethod
extern void novas_call_fsdbSuppressClassMethod(int data, int reason);
#pragma weak novas_call_fsdbSuppressClassMethod
void novas_call_fsdbSuppressClassMethod(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbSuppressClassMethod");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbSuppressClassMethod");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbSuppressClassMethod");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbSuppressClassMethod)(int data, int reason) = novas_call_fsdbSuppressClassMethod;
#endif /* __VCS_PLI_STUB_novas_call_fsdbSuppressClassMethod */

/* PLI routine: $fsdbSuppressClassMethod:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbSuppressClassMethod
#define __VCS_PLI_STUB_novas_check_fsdbSuppressClassMethod
extern void novas_check_fsdbSuppressClassMethod(int data, int reason);
#pragma weak novas_check_fsdbSuppressClassMethod
void novas_check_fsdbSuppressClassMethod(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbSuppressClassMethod");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbSuppressClassMethod");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbSuppressClassMethod)(int data, int reason) = novas_check_fsdbSuppressClassMethod;
#endif /* __VCS_PLI_STUB_novas_check_fsdbSuppressClassMethod */

/* PLI routine: $fsdbSuppressClassProp:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbSuppressClassProp
#define __VCS_PLI_STUB_novas_call_fsdbSuppressClassProp
extern void novas_call_fsdbSuppressClassProp(int data, int reason);
#pragma weak novas_call_fsdbSuppressClassProp
void novas_call_fsdbSuppressClassProp(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbSuppressClassProp");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbSuppressClassProp");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbSuppressClassProp");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbSuppressClassProp)(int data, int reason) = novas_call_fsdbSuppressClassProp;
#endif /* __VCS_PLI_STUB_novas_call_fsdbSuppressClassProp */

/* PLI routine: $fsdbSuppressClassProp:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbSuppressClassProp
#define __VCS_PLI_STUB_novas_check_fsdbSuppressClassProp
extern void novas_check_fsdbSuppressClassProp(int data, int reason);
#pragma weak novas_check_fsdbSuppressClassProp
void novas_check_fsdbSuppressClassProp(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbSuppressClassProp");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbSuppressClassProp");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbSuppressClassProp)(int data, int reason) = novas_check_fsdbSuppressClassProp;
#endif /* __VCS_PLI_STUB_novas_check_fsdbSuppressClassProp */

/* PLI routine: $fsdbDumpMDAByFile:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbDumpMDAByFile
#define __VCS_PLI_STUB_novas_call_fsdbDumpMDAByFile
extern void novas_call_fsdbDumpMDAByFile(int data, int reason);
#pragma weak novas_call_fsdbDumpMDAByFile
void novas_call_fsdbDumpMDAByFile(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbDumpMDAByFile");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbDumpMDAByFile");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbDumpMDAByFile");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbDumpMDAByFile)(int data, int reason) = novas_call_fsdbDumpMDAByFile;
#endif /* __VCS_PLI_STUB_novas_call_fsdbDumpMDAByFile */

/* PLI routine: $fsdbDumpMDAByFile:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbDumpMDAByFile
#define __VCS_PLI_STUB_novas_check_fsdbDumpMDAByFile
extern void novas_check_fsdbDumpMDAByFile(int data, int reason);
#pragma weak novas_check_fsdbDumpMDAByFile
void novas_check_fsdbDumpMDAByFile(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbDumpMDAByFile");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbDumpMDAByFile");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbDumpMDAByFile)(int data, int reason) = novas_check_fsdbDumpMDAByFile;
#endif /* __VCS_PLI_STUB_novas_check_fsdbDumpMDAByFile */

/* PLI routine: $fsdbTrans_create_stream_begin:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbEvent_create_stream_begin
#define __VCS_PLI_STUB_novas_call_fsdbEvent_create_stream_begin
extern void novas_call_fsdbEvent_create_stream_begin(int data, int reason);
#pragma weak novas_call_fsdbEvent_create_stream_begin
void novas_call_fsdbEvent_create_stream_begin(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbEvent_create_stream_begin");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbEvent_create_stream_begin");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbEvent_create_stream_begin");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbEvent_create_stream_begin)(int data, int reason) = novas_call_fsdbEvent_create_stream_begin;
#endif /* __VCS_PLI_STUB_novas_call_fsdbEvent_create_stream_begin */

/* PLI routine: $fsdbTrans_create_stream_begin:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbEvent_create_stream_begin
#define __VCS_PLI_STUB_novas_check_fsdbEvent_create_stream_begin
extern void novas_check_fsdbEvent_create_stream_begin(int data, int reason);
#pragma weak novas_check_fsdbEvent_create_stream_begin
void novas_check_fsdbEvent_create_stream_begin(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbEvent_create_stream_begin");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbEvent_create_stream_begin");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbEvent_create_stream_begin)(int data, int reason) = novas_check_fsdbEvent_create_stream_begin;
#endif /* __VCS_PLI_STUB_novas_check_fsdbEvent_create_stream_begin */

/* PLI routine: $fsdbTrans_define_attribute:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbEvent_add_stream_attribute
#define __VCS_PLI_STUB_novas_call_fsdbEvent_add_stream_attribute
extern void novas_call_fsdbEvent_add_stream_attribute(int data, int reason);
#pragma weak novas_call_fsdbEvent_add_stream_attribute
void novas_call_fsdbEvent_add_stream_attribute(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbEvent_add_stream_attribute");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbEvent_add_stream_attribute");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbEvent_add_stream_attribute");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbEvent_add_stream_attribute)(int data, int reason) = novas_call_fsdbEvent_add_stream_attribute;
#endif /* __VCS_PLI_STUB_novas_call_fsdbEvent_add_stream_attribute */

/* PLI routine: $fsdbTrans_define_attribute:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbEvent_add_stream_attribute
#define __VCS_PLI_STUB_novas_check_fsdbEvent_add_stream_attribute
extern void novas_check_fsdbEvent_add_stream_attribute(int data, int reason);
#pragma weak novas_check_fsdbEvent_add_stream_attribute
void novas_check_fsdbEvent_add_stream_attribute(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbEvent_add_stream_attribute");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbEvent_add_stream_attribute");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbEvent_add_stream_attribute)(int data, int reason) = novas_check_fsdbEvent_add_stream_attribute;
#endif /* __VCS_PLI_STUB_novas_check_fsdbEvent_add_stream_attribute */

/* PLI routine: $fsdbTrans_create_stream_end:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbEvent_create_stream_end
#define __VCS_PLI_STUB_novas_call_fsdbEvent_create_stream_end
extern void novas_call_fsdbEvent_create_stream_end(int data, int reason);
#pragma weak novas_call_fsdbEvent_create_stream_end
void novas_call_fsdbEvent_create_stream_end(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbEvent_create_stream_end");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbEvent_create_stream_end");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbEvent_create_stream_end");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbEvent_create_stream_end)(int data, int reason) = novas_call_fsdbEvent_create_stream_end;
#endif /* __VCS_PLI_STUB_novas_call_fsdbEvent_create_stream_end */

/* PLI routine: $fsdbTrans_create_stream_end:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbEvent_create_stream_end
#define __VCS_PLI_STUB_novas_check_fsdbEvent_create_stream_end
extern void novas_check_fsdbEvent_create_stream_end(int data, int reason);
#pragma weak novas_check_fsdbEvent_create_stream_end
void novas_check_fsdbEvent_create_stream_end(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbEvent_create_stream_end");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbEvent_create_stream_end");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbEvent_create_stream_end)(int data, int reason) = novas_check_fsdbEvent_create_stream_end;
#endif /* __VCS_PLI_STUB_novas_check_fsdbEvent_create_stream_end */

/* PLI routine: $fsdbTrans_begin:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbEvent_begin
#define __VCS_PLI_STUB_novas_call_fsdbEvent_begin
extern void novas_call_fsdbEvent_begin(int data, int reason);
#pragma weak novas_call_fsdbEvent_begin
void novas_call_fsdbEvent_begin(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbEvent_begin");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbEvent_begin");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbEvent_begin");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbEvent_begin)(int data, int reason) = novas_call_fsdbEvent_begin;
#endif /* __VCS_PLI_STUB_novas_call_fsdbEvent_begin */

/* PLI routine: $fsdbTrans_begin:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbEvent_begin
#define __VCS_PLI_STUB_novas_check_fsdbEvent_begin
extern void novas_check_fsdbEvent_begin(int data, int reason);
#pragma weak novas_check_fsdbEvent_begin
void novas_check_fsdbEvent_begin(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbEvent_begin");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbEvent_begin");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbEvent_begin)(int data, int reason) = novas_check_fsdbEvent_begin;
#endif /* __VCS_PLI_STUB_novas_check_fsdbEvent_begin */

/* PLI routine: $fsdbTrans_set_label:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbEvent_set_label
#define __VCS_PLI_STUB_novas_call_fsdbEvent_set_label
extern void novas_call_fsdbEvent_set_label(int data, int reason);
#pragma weak novas_call_fsdbEvent_set_label
void novas_call_fsdbEvent_set_label(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbEvent_set_label");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbEvent_set_label");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbEvent_set_label");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbEvent_set_label)(int data, int reason) = novas_call_fsdbEvent_set_label;
#endif /* __VCS_PLI_STUB_novas_call_fsdbEvent_set_label */

/* PLI routine: $fsdbTrans_set_label:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbEvent_set_label
#define __VCS_PLI_STUB_novas_check_fsdbEvent_set_label
extern void novas_check_fsdbEvent_set_label(int data, int reason);
#pragma weak novas_check_fsdbEvent_set_label
void novas_check_fsdbEvent_set_label(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbEvent_set_label");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbEvent_set_label");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbEvent_set_label)(int data, int reason) = novas_check_fsdbEvent_set_label;
#endif /* __VCS_PLI_STUB_novas_check_fsdbEvent_set_label */

/* PLI routine: $fsdbTrans_add_attribute:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbEvent_add_attribute
#define __VCS_PLI_STUB_novas_call_fsdbEvent_add_attribute
extern void novas_call_fsdbEvent_add_attribute(int data, int reason);
#pragma weak novas_call_fsdbEvent_add_attribute
void novas_call_fsdbEvent_add_attribute(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbEvent_add_attribute");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbEvent_add_attribute");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbEvent_add_attribute");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbEvent_add_attribute)(int data, int reason) = novas_call_fsdbEvent_add_attribute;
#endif /* __VCS_PLI_STUB_novas_call_fsdbEvent_add_attribute */

/* PLI routine: $fsdbTrans_add_attribute:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbEvent_add_attribute
#define __VCS_PLI_STUB_novas_check_fsdbEvent_add_attribute
extern void novas_check_fsdbEvent_add_attribute(int data, int reason);
#pragma weak novas_check_fsdbEvent_add_attribute
void novas_check_fsdbEvent_add_attribute(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbEvent_add_attribute");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbEvent_add_attribute");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbEvent_add_attribute)(int data, int reason) = novas_check_fsdbEvent_add_attribute;
#endif /* __VCS_PLI_STUB_novas_check_fsdbEvent_add_attribute */

/* PLI routine: $fsdbTrans_add_tag:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbEvent_add_tag
#define __VCS_PLI_STUB_novas_call_fsdbEvent_add_tag
extern void novas_call_fsdbEvent_add_tag(int data, int reason);
#pragma weak novas_call_fsdbEvent_add_tag
void novas_call_fsdbEvent_add_tag(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbEvent_add_tag");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbEvent_add_tag");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbEvent_add_tag");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbEvent_add_tag)(int data, int reason) = novas_call_fsdbEvent_add_tag;
#endif /* __VCS_PLI_STUB_novas_call_fsdbEvent_add_tag */

/* PLI routine: $fsdbTrans_add_tag:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbEvent_add_tag
#define __VCS_PLI_STUB_novas_check_fsdbEvent_add_tag
extern void novas_check_fsdbEvent_add_tag(int data, int reason);
#pragma weak novas_check_fsdbEvent_add_tag
void novas_check_fsdbEvent_add_tag(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbEvent_add_tag");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbEvent_add_tag");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbEvent_add_tag)(int data, int reason) = novas_check_fsdbEvent_add_tag;
#endif /* __VCS_PLI_STUB_novas_check_fsdbEvent_add_tag */

/* PLI routine: $fsdbTrans_end:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbEvent_end
#define __VCS_PLI_STUB_novas_call_fsdbEvent_end
extern void novas_call_fsdbEvent_end(int data, int reason);
#pragma weak novas_call_fsdbEvent_end
void novas_call_fsdbEvent_end(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbEvent_end");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbEvent_end");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbEvent_end");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbEvent_end)(int data, int reason) = novas_call_fsdbEvent_end;
#endif /* __VCS_PLI_STUB_novas_call_fsdbEvent_end */

/* PLI routine: $fsdbTrans_end:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbEvent_end
#define __VCS_PLI_STUB_novas_check_fsdbEvent_end
extern void novas_check_fsdbEvent_end(int data, int reason);
#pragma weak novas_check_fsdbEvent_end
void novas_check_fsdbEvent_end(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbEvent_end");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbEvent_end");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbEvent_end)(int data, int reason) = novas_check_fsdbEvent_end;
#endif /* __VCS_PLI_STUB_novas_check_fsdbEvent_end */

/* PLI routine: $fsdbTrans_add_relation:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbEvent_add_relation
#define __VCS_PLI_STUB_novas_call_fsdbEvent_add_relation
extern void novas_call_fsdbEvent_add_relation(int data, int reason);
#pragma weak novas_call_fsdbEvent_add_relation
void novas_call_fsdbEvent_add_relation(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbEvent_add_relation");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbEvent_add_relation");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbEvent_add_relation");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbEvent_add_relation)(int data, int reason) = novas_call_fsdbEvent_add_relation;
#endif /* __VCS_PLI_STUB_novas_call_fsdbEvent_add_relation */

/* PLI routine: $fsdbTrans_add_relation:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbEvent_add_relation
#define __VCS_PLI_STUB_novas_check_fsdbEvent_add_relation
extern void novas_check_fsdbEvent_add_relation(int data, int reason);
#pragma weak novas_check_fsdbEvent_add_relation
void novas_check_fsdbEvent_add_relation(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbEvent_add_relation");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbEvent_add_relation");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbEvent_add_relation)(int data, int reason) = novas_check_fsdbEvent_add_relation;
#endif /* __VCS_PLI_STUB_novas_check_fsdbEvent_add_relation */

/* PLI routine: $fsdbTrans_get_error_code:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbEvent_get_error_code
#define __VCS_PLI_STUB_novas_call_fsdbEvent_get_error_code
extern void novas_call_fsdbEvent_get_error_code(int data, int reason);
#pragma weak novas_call_fsdbEvent_get_error_code
void novas_call_fsdbEvent_get_error_code(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbEvent_get_error_code");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbEvent_get_error_code");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbEvent_get_error_code");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbEvent_get_error_code)(int data, int reason) = novas_call_fsdbEvent_get_error_code;
#endif /* __VCS_PLI_STUB_novas_call_fsdbEvent_get_error_code */

/* PLI routine: $fsdbTrans_get_error_code:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbEvent_get_error_code
#define __VCS_PLI_STUB_novas_check_fsdbEvent_get_error_code
extern void novas_check_fsdbEvent_get_error_code(int data, int reason);
#pragma weak novas_check_fsdbEvent_get_error_code
void novas_check_fsdbEvent_get_error_code(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbEvent_get_error_code");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbEvent_get_error_code");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbEvent_get_error_code)(int data, int reason) = novas_check_fsdbEvent_get_error_code;
#endif /* __VCS_PLI_STUB_novas_check_fsdbEvent_get_error_code */

/* PLI routine: $fsdbTrans_add_stream_attribute:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbTrans_add_stream_attribute
#define __VCS_PLI_STUB_novas_call_fsdbTrans_add_stream_attribute
extern void novas_call_fsdbTrans_add_stream_attribute(int data, int reason);
#pragma weak novas_call_fsdbTrans_add_stream_attribute
void novas_call_fsdbTrans_add_stream_attribute(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbTrans_add_stream_attribute");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbTrans_add_stream_attribute");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbTrans_add_stream_attribute");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbTrans_add_stream_attribute)(int data, int reason) = novas_call_fsdbTrans_add_stream_attribute;
#endif /* __VCS_PLI_STUB_novas_call_fsdbTrans_add_stream_attribute */

/* PLI routine: $fsdbTrans_add_stream_attribute:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbTrans_add_stream_attribute
#define __VCS_PLI_STUB_novas_check_fsdbTrans_add_stream_attribute
extern void novas_check_fsdbTrans_add_stream_attribute(int data, int reason);
#pragma weak novas_check_fsdbTrans_add_stream_attribute
void novas_check_fsdbTrans_add_stream_attribute(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbTrans_add_stream_attribute");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbTrans_add_stream_attribute");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbTrans_add_stream_attribute)(int data, int reason) = novas_check_fsdbTrans_add_stream_attribute;
#endif /* __VCS_PLI_STUB_novas_check_fsdbTrans_add_stream_attribute */

/* PLI routine: $fsdbTrans_add_scope_attribute:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbTrans_add_scope_attribute
#define __VCS_PLI_STUB_novas_call_fsdbTrans_add_scope_attribute
extern void novas_call_fsdbTrans_add_scope_attribute(int data, int reason);
#pragma weak novas_call_fsdbTrans_add_scope_attribute
void novas_call_fsdbTrans_add_scope_attribute(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbTrans_add_scope_attribute");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbTrans_add_scope_attribute");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbTrans_add_scope_attribute");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbTrans_add_scope_attribute)(int data, int reason) = novas_call_fsdbTrans_add_scope_attribute;
#endif /* __VCS_PLI_STUB_novas_call_fsdbTrans_add_scope_attribute */

/* PLI routine: $fsdbTrans_add_scope_attribute:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbTrans_add_scope_attribute
#define __VCS_PLI_STUB_novas_check_fsdbTrans_add_scope_attribute
extern void novas_check_fsdbTrans_add_scope_attribute(int data, int reason);
#pragma weak novas_check_fsdbTrans_add_scope_attribute
void novas_check_fsdbTrans_add_scope_attribute(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbTrans_add_scope_attribute");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbTrans_add_scope_attribute");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbTrans_add_scope_attribute)(int data, int reason) = novas_check_fsdbTrans_add_scope_attribute;
#endif /* __VCS_PLI_STUB_novas_check_fsdbTrans_add_scope_attribute */

/* PLI routine: $sps_interactive:call */
#ifndef __VCS_PLI_STUB_novas_call_sps_interactive
#define __VCS_PLI_STUB_novas_call_sps_interactive
extern void novas_call_sps_interactive(int data, int reason);
#pragma weak novas_call_sps_interactive
void novas_call_sps_interactive(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_sps_interactive");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_sps_interactive");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_sps_interactive");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_sps_interactive)(int data, int reason) = novas_call_sps_interactive;
#endif /* __VCS_PLI_STUB_novas_call_sps_interactive */

/* PLI routine: $sps_interactive:check */
#ifndef __VCS_PLI_STUB_novas_check_sps_interactive
#define __VCS_PLI_STUB_novas_check_sps_interactive
extern void novas_check_sps_interactive(int data, int reason);
#pragma weak novas_check_sps_interactive
void novas_check_sps_interactive(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_sps_interactive");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_sps_interactive");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_sps_interactive)(int data, int reason) = novas_check_sps_interactive;
#endif /* __VCS_PLI_STUB_novas_check_sps_interactive */

/* PLI routine: $sps_test:call */
#ifndef __VCS_PLI_STUB_novas_call_sps_test
#define __VCS_PLI_STUB_novas_call_sps_test
extern void novas_call_sps_test(int data, int reason);
#pragma weak novas_call_sps_test
void novas_call_sps_test(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_sps_test");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_sps_test");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_sps_test");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_sps_test)(int data, int reason) = novas_call_sps_test;
#endif /* __VCS_PLI_STUB_novas_call_sps_test */

/* PLI routine: $fsdbDumpClassObject:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbDumpClassObject
#define __VCS_PLI_STUB_novas_call_fsdbDumpClassObject
extern void novas_call_fsdbDumpClassObject(int data, int reason);
#pragma weak novas_call_fsdbDumpClassObject
void novas_call_fsdbDumpClassObject(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbDumpClassObject");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbDumpClassObject");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbDumpClassObject");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbDumpClassObject)(int data, int reason) = novas_call_fsdbDumpClassObject;
#endif /* __VCS_PLI_STUB_novas_call_fsdbDumpClassObject */

/* PLI routine: $fsdbDumpClassObject:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbDumpClassObject
#define __VCS_PLI_STUB_novas_check_fsdbDumpClassObject
extern void novas_check_fsdbDumpClassObject(int data, int reason);
#pragma weak novas_check_fsdbDumpClassObject
void novas_check_fsdbDumpClassObject(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbDumpClassObject");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbDumpClassObject");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbDumpClassObject)(int data, int reason) = novas_check_fsdbDumpClassObject;
#endif /* __VCS_PLI_STUB_novas_check_fsdbDumpClassObject */

/* PLI routine: $ridbDump:call */
#ifndef __VCS_PLI_STUB_novas_call_ridbDump
#define __VCS_PLI_STUB_novas_call_ridbDump
extern void novas_call_ridbDump(int data, int reason);
#pragma weak novas_call_ridbDump
void novas_call_ridbDump(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_ridbDump");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_ridbDump");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_ridbDump");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_ridbDump)(int data, int reason) = novas_call_ridbDump;
#endif /* __VCS_PLI_STUB_novas_call_ridbDump */

/* PLI routine: $ridbDump:check */
#ifndef __VCS_PLI_STUB_novas_check_ridbDump
#define __VCS_PLI_STUB_novas_check_ridbDump
extern void novas_check_ridbDump(int data, int reason);
#pragma weak novas_check_ridbDump
void novas_check_ridbDump(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_ridbDump");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_ridbDump");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_ridbDump)(int data, int reason) = novas_check_ridbDump;
#endif /* __VCS_PLI_STUB_novas_check_ridbDump */

/* PLI routine: $sps_flush_file:call */
#ifndef __VCS_PLI_STUB_novas_call_sps_flush_file
#define __VCS_PLI_STUB_novas_call_sps_flush_file
extern void novas_call_sps_flush_file(int data, int reason);
#pragma weak novas_call_sps_flush_file
void novas_call_sps_flush_file(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_sps_flush_file");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_sps_flush_file");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_sps_flush_file");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_sps_flush_file)(int data, int reason) = novas_call_sps_flush_file;
#endif /* __VCS_PLI_STUB_novas_call_sps_flush_file */

/* PLI routine: $fsdbDumpSingle:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbDumpSingle
#define __VCS_PLI_STUB_novas_call_fsdbDumpSingle
extern void novas_call_fsdbDumpSingle(int data, int reason);
#pragma weak novas_call_fsdbDumpSingle
void novas_call_fsdbDumpSingle(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbDumpSingle");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbDumpSingle");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbDumpSingle");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbDumpSingle)(int data, int reason) = novas_call_fsdbDumpSingle;
#endif /* __VCS_PLI_STUB_novas_call_fsdbDumpSingle */

/* PLI routine: $fsdbDumpSingle:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbDumpSingle
#define __VCS_PLI_STUB_novas_check_fsdbDumpSingle
extern void novas_check_fsdbDumpSingle(int data, int reason);
#pragma weak novas_check_fsdbDumpSingle
void novas_check_fsdbDumpSingle(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbDumpSingle");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbDumpSingle");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbDumpSingle)(int data, int reason) = novas_check_fsdbDumpSingle;
#endif /* __VCS_PLI_STUB_novas_check_fsdbDumpSingle */

/* PLI routine: $fsdbDumpIO:call */
#ifndef __VCS_PLI_STUB_novas_call_fsdbDumpIO
#define __VCS_PLI_STUB_novas_call_fsdbDumpIO
extern void novas_call_fsdbDumpIO(int data, int reason);
#pragma weak novas_call_fsdbDumpIO
void novas_call_fsdbDumpIO(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_call_fsdbDumpIO");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_call_fsdbDumpIO");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    } else {
        vcsMsgReportNoSource1("PLI-DIFNF", "novas_call_fsdbDumpIO");
    }
}
void (*__vcs_pli_dummy_reference_novas_call_fsdbDumpIO)(int data, int reason) = novas_call_fsdbDumpIO;
#endif /* __VCS_PLI_STUB_novas_call_fsdbDumpIO */

/* PLI routine: $fsdbDumpIO:check */
#ifndef __VCS_PLI_STUB_novas_check_fsdbDumpIO
#define __VCS_PLI_STUB_novas_check_fsdbDumpIO
extern void novas_check_fsdbDumpIO(int data, int reason);
#pragma weak novas_check_fsdbDumpIO
void novas_check_fsdbDumpIO(int data, int reason)
{
    static int _vcs_pli_stub_initialized_ = 0;
    static void (*_vcs_pli_fp_)(int data, int reason) = NULL;
    if (!_vcs_pli_stub_initialized_) {
        _vcs_pli_stub_initialized_ = 1;
        _vcs_pli_fp_ = (void (*)(int data, int reason)) dlsym(RTLD_NEXT, "novas_check_fsdbDumpIO");
        if (_vcs_pli_fp_ == NULL) {
            _vcs_pli_fp_ = (void (*)(int data, int reason)) VCS_dlsymLookup("novas_check_fsdbDumpIO");
        }
    }
    if (_vcs_pli_fp_) {
        _vcs_pli_fp_(data, reason);
    }
}
void (*__vcs_pli_dummy_reference_novas_check_fsdbDumpIO)(int data, int reason) = novas_check_fsdbDumpIO;
#endif /* __VCS_PLI_STUB_novas_check_fsdbDumpIO */

#ifdef __cplusplus
}
#endif
