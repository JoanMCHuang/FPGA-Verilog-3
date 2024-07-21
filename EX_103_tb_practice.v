`timescale 1 ns/1 ns

module testbench;
reg	    [4:0]	a, b, c, d, e, f;
reg		sel1, sel2, sel3, sel4, sel5;
wire	[4:0]	g;

EX_103_module_structure_demo_practice EX103_instance_practice (
	.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .sel1(sel1), .sel2(sel2), .sel3(sel3), .sel4(sel4), .sel5(sel5), .g(g));

initial
begin
 a  = 4'b0000;   // Time = 0
 b  = 4'b0000;
 c  = 4'b0000;
 d  = 4'b0000;
 e  = 4'b0000;
 f  = 4'b0000;
 sel1 = 1'b0;
 sel2 = 1'b0;
 sel3 = 1'b0;
 sel4 = 1'b0;
 sel5 = 1'b0;
 
 #20;
 sel1  = 1'b1;	// Time = 20
 #20;			// Time = 40
 sel1  = 1'b0;
 sel2  = 1'b1;
 sel3  = 1'b1;
 #20;			// Time = 60
 sel1  = 1'b0 ;
 sel2  = 1'b1 ;
 sel3  = 1'b0 ;
 #20;			// Time = 80
 sel1  = 1'b0;
 sel2  = 1'b0;
 sel4  = 1'b1;
 #20;           // Time = 100
 sel1  = 1'b0;
 sel2  = 1'b0;
 sel4  = 1'b0;
 sel5  = 1'b1;
 #20;           // Time = 120
 sel1  = 1'b0;
 sel2  = 1'b0;
 sel4  = 1'b0;
 sel5  = 1'b0;
end

/*
initial
begin
  fork
    #0   a  = 4'b0000;   // Time = 0
	     b  = 4'b0000;
		 c  = 4'b0000;
		 d  = 4'b0000;
		 e  = 4'b0000;
		 f  = 4'b0000;
		 sel1 = 1'b0;
		 sel2 = 1'b0;
		 sel3 = 1'b0;
		 sel4 = 1'b0;
		 sel5 = 1'b0;
    #20	 sel1  = 1'b1;	// Time = 20
    #40	 sel1  = 1'b0;	// Time = 40
	     sel2  = 1'b1;
		 sel3  = 1'b1;
    #60  sel1  = 1'b0;	// Time = 60
	     sel2  = 1'b1;
		 sel3  = 1'b0;
    #80  sel1  = 1'b0;	// Time = 80
	     sel2  = 1'b0;
		 sel4  = 1'b1;
    #100  sel1  = 1'b0;  // Time = 100
	     sel2  = 1'b0;
		 sel4  = 1'b0; 
		 sel5  = 1'b1;
	#120 sel1  = 1'b0;  // Time = 120
	     sel2  = 1'b0;
		 sel4  = 1'b0;
		 sel5  = 1'b0;
  join
end 
*/

endmodule
