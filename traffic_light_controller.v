module traffic_light(clk, reset, red, yellow, green);
    input clk, reset;
    output reg red, yellow, green;
    reg [1:0] state;

    parameter RED = 2'b00, GREEN = 2'b01, YELLOW = 2'b10;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= RED;
        end else begin
            case (state)
                RED: state <= GREEN;
                GREEN: state <= YELLOW;
                YELLOW: state <= RED;
            endcase
        end
    end

    always @(*) begin
        red = (state == RED);
        green = (state == GREEN);
        yellow = (state == YELLOW);
    end
endmodule
