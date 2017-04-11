module vga(input wire clk,clr,
input wire [1:0] vga_ctrl,
output wire hsync,vsync,
output [3:0] red, // three bit signal to drive color red
output [3:0] green, // three bit signal to drive color green
output [3:0] blue // two bit signal to drive color blue (human eye is less sensitive to color blue)
);
	 
reg video_on;
// defining constants
localparam HD = 320; // horizontal display area
localparam HF = 4; // front porch (right border)
localparam HB = 28; //right porch (left border)
localparam HR = 48; // horizontal retrace
localparam VD = 240; // vertical display area
localparam VF = 4; // front porch (bottom border)
localparam VB = 15; // back porch (top border)
localparam VR = 1; // vertical retrace
localparam h_end = 400; // total horizontal timing
localparam v_end = 260; // total vertical timing
//localparam sq_size = 20; // size of square
localparam sq_x_l = 30; //  left coordinate of square
localparam sq_x_r = 290;
localparam sq_y_t = 22;     
localparam sq_y_b = 217;

//horizontal and vertical counter

reg [10:0] h_count_reg,v_count_reg ; // registers for sequential horizontal and vertical counters
reg[10:0] h_count_next , v_count_next;
//reg v_sync_reg , h_sync_reg ;
//wire v_sync_next , h_sync_next ;
reg v_sync_next , h_sync_next = 0 ;





always @ ( posedge clk)
begin
v_count_reg <= v_count_next;
h_count_reg <= h_count_next;
//v_sync_reg <= v_sync_next ;
//h_sync_reg <= h_sync_next ;
end

// horizontal and vertical counters
always @(posedge clk) 
begin
if(h_count_next < h_end-1)
begin
			
h_count_next <= h_count_next + 1;
end
else 
begin
h_count_next <= 0;
			
if(v_count_next < v_end-1)
v_count_next <= v_count_next + 1;
else
v_count_next <= 0;
end
end

// horizontal and vertical synchronization signals
always @(posedge clk)
if(h_count_reg < HR)
h_sync_next <= 1;
else
h_sync_next <= 0;
			
	
//VSync logic		
	
always @(posedge clk)
if(v_count_reg < VR)
v_sync_next <= 1;
else
v_sync_next <= 0;

assign hsync = h_sync_next;
assign vsync = v_sync_next;


	
reg h_video_on,v_video_on; // these registers ensure that the display signals are sent only when the pixels are within the display region of the monitor.
//horizontal logic

always @(posedge clk) 
if((h_count_reg >= HR + HF) && (h_count_reg< HR + HF + HD))
h_video_on <= 1;
else
h_video_on <= 0;
			
	
//Vertical logic
	
always @(posedge clk)
if((v_count_reg >= VR + VF) && (v_count_reg < VR + VF+ VD))
v_video_on <= 1;
else
v_video_on <= 0;

always @(posedge clk)
if(h_video_on && v_video_on)
video_on <= 1;
else
video_on <= 0;


reg [9:0] pixel_x,pixel_y; // registers to describe current position of pixel within display area.

always @(posedge clk)
if(h_video_on)
pixel_x <= h_count_reg - HR - HF;
else
pixel_x <= 0;

always @(posedge clk) 
if(v_video_on)
pixel_y <= v_count_reg - VR - VF;
else
pixel_y <= 0;

//color output
wire [11:0] coloroutput1; // 8 bit register which describes which color has to be displayed but only when video_on signal is turned on.
wire [11:0] coloroutput2;
wire [11:0] coloroutput3;
reg [11:0] coloroutputtemp;
left_dab_rom left(.clk(clk), .row(pixel_y), .col(pixel_x), .color_data(coloroutput1));
right_dab_rom right(.clk(clk), .row(pixel_y), .col(pixel_x), .color_data(coloroutput2));
//no_dab_rom none(.clk(clk), .row(pixel_y), .col(pixel_x), .color_data(coloroutput3));

always @(posedge clk)
if(~video_on)
begin
    coloroutputtemp <= 0;
end
else
begin
    case (vga_ctrl)
    0: coloroutputtemp <= 12'b000000001111;
    1: coloroutputtemp <= coloroutput1;
    2: coloroutputtemp <= coloroutput2;
    3: coloroutputtemp <= 0;
    endcase
end


assign red = coloroutputtemp[3:0];
assign green = coloroutputtemp[7:4];
assign blue = coloroutputtemp[11:8];


endmodule