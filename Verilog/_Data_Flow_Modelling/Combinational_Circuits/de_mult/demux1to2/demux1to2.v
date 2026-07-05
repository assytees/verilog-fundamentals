//*****************************************************************************
// Module Name : demux1to2
// Author      : Abubakar Shuaibu
// Date        : 05 July 2026
// Description : 1-to-2 Demultiplexer using dataflow modeling.
//*****************************************************************************

module demux1to2(

    input d,           // Data input
    input sel,         // Select signal
    output y0, y1      // Output signals

);

// Route input to the selected output
assign y0 = (sel == 1'b0) ? d : 1'b0;
assign y1 = (sel == 1'b1) ? d : 1'b0;

endmodule