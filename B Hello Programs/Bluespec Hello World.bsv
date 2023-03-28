package HelloWorld;

(* synthesize *)
module mkTb (Empty);
    rule greet;
        $display("Hello World!");
        $finish(0);
    endrule: greet
endmodule: mkTb

endpackage: HelloWorld
