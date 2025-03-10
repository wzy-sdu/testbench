#!/usr/bin/python3

import os
import re
import math

file_path = "./data1/"
files = sorted(os.listdir(file_path))
count_data1 = (sum(1 for file in files if file.startswith("data1-")))
count_data2 = (sum(1 for file in files if file.startswith("data2-")))
if count_data2 != 1:
    pass
else:
    fal = []
    with open(file_path+"data2-1.txt", "r") as read2:
        lines = read2.readlines()
        del fal[0]
        for line in lines:
            value2 = line.split()
            value2[1] = str(math.sqrt(int(value2[1]))/128)
            fal.append(value2[0]+"\t"+value2[1]+"\t"+value2[2]+"\t")
                sql.write(value2[0]+"\t"+value2[1]+"\t"+value2[2]+"\t")
            
    read2.close()
   
    for i in range(count_data1):
        with open(file_path+files[i], "r") as read1:
            lines = read1.readlines()          
            del lines[0]
            for line in lines:
                value = line.split()
                value[1] = str(math.sqrt(int(value[1]))/128)
                
             
        with open(file_path+"sql.txt", "r") as sql:
                    line_sql = sql.readlines()
                    
                    for line in line_sql:
                        line = line.rstrip("\n") + value[1] + "\t" 
                        
                                             
                 

    
        
               
        
            
       