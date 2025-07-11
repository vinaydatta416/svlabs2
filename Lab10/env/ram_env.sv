/********************************************************************************************

Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
www.maven-silicon.com

All Rights Reserved.

This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd.
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.

Filename       :  ram_env.sv   

Description    :  Environment class for dual port ram_testbench

Author Name    :  Putta Satish & 

Support e-mail :  techsupport_vm@maven-silicon.com 

Version        :  1.0

Date           :  02/06/2020

*********************************************************************************************/
class ram_env;

   //Instantiate virtual interface with Write Driver modport,
   //Read Driver modport,Write monitor modport,Read monitor modport
 

   //Declare 6 mailboxes parameterized by ram_trans and construct it
   
   

   
   
   
   
   
   
   
   
   //Create handle for ram_gen,ram_write_drv,ram_read_drv,ram_write_mon,
   //ram_read_mon,ram_model,ram_sb


   //In constructor
   //pass the Driver and monitor interfaces as the argument
   //connect them with the virtual interfaces of ram_env
                                   
   //In virtual task build
   //create instances for generator,Write Driver,Read Driver,
   //Write monitor,Read monitor,Reference model,Scoreboard

   //Understand and include the virtual task reset_dut

   virtual task reset_dut();
      begin
         rd_drv_if.rd_drv_cb.rd_address<='0;
         rd_drv_if.rd_drv_cb.read<='0;

         wr_drv_if.wr_drv_cb.wr_address<=0;
         wr_drv_if.wr_drv_cb.write<='0;

         repeat(5) @(wr_drv_if.wr_drv_cb);
         for (int i=0; i<4096; i++)
            begin
               wr_drv_if.wr_drv_cb.write<='1;
               wr_drv_if.wr_drv_cb.wr_address<=i;
               wr_drv_if.wr_drv_cb.data_in<='0;
               @(wr_drv_if.wr_drv_cb);
            end
         wr_drv_if.wr_drv_cb.write<='0;
         repeat (5) @(wr_drv_if.wr_drv_cb);
      end
   endtask : reset_dut

   //In virtual task start
   //call the start methods of generator,Write Driver,Read Driver,
   //Write monitor,Read Monitor,reference model,scoreboard

   virtual task stop();
      wait(sb_h.DONE.triggered);
   endtask : stop 

   //In virtual task run, call reset_dut, start, stop methods & report function from scoreboard

endclass : ram_env
