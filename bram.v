/*
  Author : Rakotojaona Nambinina
  email : Andrianoelisoa.rakotojaona@gmail.com
  Description : Verilog code for BRAM 
*/
module bram #(
             parameter WIDTH = 32,
             parameter LENGHT = 8
             )
            (
            clk,
            rst,
            we,
            wr_add,
            wr_data,
            rd_en,
            rd_add,
            rd_data
            );
   input clk;
   input rst;
   input we;
   input [2:0] wr_add;
   input [31:0] wr_data;
   input rd_en;
   input [2:0] rd_add;
   output reg [31:0] rd_data;
   
   // MEMORY 
   reg [WIDTH-1:0] mem [LENGHT-1:0];
   
   // writing operation 
   always @ (posedge clk)
   begin
      if (rst)
      begin
      end 
      else 
      begin
        if (we)
        begin
          mem [wr_add] <= wr_data;
        end
        else
        begin
          // do nothing
        end 
      end 
   end 
   
   // read operation 
   always @ (posedge clk)
   begin
      if (rst)
      begin
      end 
      else 
      begin
        if (rd_en)
        begin
          rd_data <= mem [rd_add];
        end
        else
        begin
          // do nothing
        end 
      end 
   end 
endmodule
