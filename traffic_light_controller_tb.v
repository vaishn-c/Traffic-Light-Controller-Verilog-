module tb_traffic_light;
    reg clk, reset;
    wire red, yellow, green;

    traffic_light uut(clk, reset, red, yellow, green);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; #10;
        reset = 0;
        #100 $stop;
    end
endmodule
