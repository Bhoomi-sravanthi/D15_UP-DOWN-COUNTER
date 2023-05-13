module up_down_counter_tb();
 reg Clk,reset,UpOrDown;
 wire [3 : 0] Count;
 
 up_down_counter dut(Clk,reset,UpOrDown,Count);
 
 initial Clk = 0;
    always #5 Clk = ~Clk;
    
    initial begin
       
        reset = 0;
        UpOrDown = 0;
        #300;
        UpOrDown = 1;
      #300;
        reset = 1;
        UpOrDown = 0;
        #100;
        reset = 0;  
    end

initial
#2000 $finish();

initial
$monitor("Output Count=%b",Count);
      
endmodule
