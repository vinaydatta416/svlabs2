/********************************************************************************************

Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
www.maven-silicon.com

All Rights Reserved.

This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd.
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.

Filename		   :  ram_write_mon.sv   

Description	   :  Write monitor class for dual port ram_testbench

Author Name	   :  Putta Satish

Support e-mail :  techsupport_vm@maven-silicon.com 

Version		   :  1.0

Date			   :  02/06/2020

*****************************************************************************************/
//In class ram_write_mon

class ram_write_mon;

   //Instantiate virtual interface instance wr_mon_if of type ram_if with WR_MON_MP modport
	
   //Declare two handles 'wrdata' and 'data2rm' of class type ram_trans

   //Declare a mailbox 'mon2rm' parameterized by type ram_trans
		
   //In constructor
   //Pass the following as the input arguments 	
   //virtual interface 
   //mailbox handle 'mon2rm' parameterized by ram_trans	
   //make the connections and allocate memory for 'wrdata' 
	
   virtual task monitor();
	   @(wr_mon_if.wr_mon_cb)
	   wait(wr_mon_if.wr_mon_cb.write==1) 
      @(wr_mon_if.wr_mon_cb);
	   begin
		   wrdata.write      = wr_mon_if.wr_mon_cb.write;
		   wrdata.wr_address = wr_mon_if.wr_mon_cb.wr_address;
		   wrdata.data       = wr_mon_if.wr_mon_cb.data_in;
		   //call the display of ram_trans to display the monitor data
		   wrdata.display("DATA FROM WRITE MONITOR");
		
	   end
   endtask: monitor
	
   //In virtual task start 			
   virtual task start();
	   //within fork-join_none
	   //In forever loop
			
	   //Call the monitor task
	   //Understand the provided monitor task
	   //Monitor task samples the interface signals 
	   //according to the protocol and convert to transaction items 
						
	   //shallow copy wrdata to data2rm				
	   //Put the transaction item into the mailbox mon2rm
						
				
   endtask: start

endclass: ram_write_mon
