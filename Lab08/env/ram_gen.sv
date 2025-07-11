/********************************************************************************************

Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
www.maven-silicon.com

All Rights Reserved.

This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd.
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.

Filename		   :  ram_gen.sv   

Description	   :  Generator class for Dual Port Ram Testbench

Author Name	   :  Putta Satish

Support e-mail :  techsupport_vm@maven-silicon.com 

Version		   :  1.0

Date			   :  02/06/2020

*********************************************************************************************/
//In class ram_gen

class ram_gen;

   //Declare a handle 'gen_trans' of class type ram_trans which has to be randomized
	
   //Declare a handle 'data2send' of class type ram_trans which has to be put into the mailboxes
   
   //Declare two mailboxes gen2rd, gen2wr  parameterized by ram_trans
	
   //In constructor
   //add mailboxes parameterized by transaction class as an argument and make the assignment 
   //and create the object for the handle to be randomized


   // In virtual task start
   virtual task start();
   //Inside fork join_none 
   //Generate random transactions equal to number_of_transactions(defined in package) 
					
   //Randomize using transaction handle using 'if' or 'assert' 
   //If randomization fails, display message "DATA NOT RANDOMIZED" and stop the simulation

   //Shallow copy gen_trans to data2send
                                
   //Put the handle into both the mailboxes
		
   endtask: start

endclass: ram_gen
	
	   
 


