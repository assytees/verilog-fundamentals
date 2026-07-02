module not_gate (
    input a,
    output y
);

//assign y = ~a; - MODEL FLOW
not not1(y,a);

endmodule
