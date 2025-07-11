/********************************************************************************************

Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
www.maven-silicon.com

All Rights Reserved.

This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd.
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.

Filename       :  ram_sb.sv   

Description    :  Scoreboard for dual port ram_testbench

Author Name    :  Putta Satish

Support e-mail :  techsupport_vm@maven-silicon.com 

Version        :  1.0

Date           :  02/06/2020

********************************************************************************************/
//In class ram_sb

class ram_sb;
   //Declare an event DONE
    

   //Declare three variables of int datatype for counting
   //number of read data received from the reference model(rm_data_count)
   //number of read data received from the monitor(mon_data_count)
   //number of read data verified(data_verified)
   

   // Declare ram_trans handles as 'rm_data','rcvd_data' and cov_data 
   

   //Declare two mailboxes as 'rm2sb','rdmon2sb' parameterized by ram_trans 
         
   
   //Write the functional coverage model 
   //Define a covergroup as 'mem_coverage'   
   //Define coverpoints and bins for read, data_out and rd_address
   //Define cross for read,rd_address
   
   
   //In constructor
   //pass the mailboxes as arguments
   //make the connections
   

   //In virtual task start    
   virtual task start();
      
	  
	  
	  
	  
   endtask: start

   // Understand and include the virtual task check
   virtual task check(ram_trans rc_data);
      string diff;
      if(rc_data.read == 1) 
         begin
            if (rc_data.data_out == 0)
               $display("SB: Random data not written");
            else if(rc_data.read == 1 && rc_data.data_out != 0)
               begin
                  if(!rm_data.compare(rc_data,diff))
                     begin:failed_compare
                        rc_data.display("SB: Received Data");
                        rm_data.display("SB: Data sent to DUV");
                        $display("%s\n%m\n\n", diff);
                        $finish;
                     end:failed_compare
                  else
                     $display("SB:  %s\n%m\n\n", diff);
               end
            //shallow copy rm_data to cov_data
            
            //Call the sample function on the covergroup 
            
              
            //Increment data_verified 
            
            //Trigger the event if the verified data count is equal to the sum of number of read and read-write transactions 
            
   endtask: check

   //In virtual function report 
   //display rm_data_count, mon_data_count, data_verified 
   virtual function void report();
      
   endfunction: report
    
endclass: ram_sb
