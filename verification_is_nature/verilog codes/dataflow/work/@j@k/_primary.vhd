library verilog;
use verilog.vl_types.all;
entity JK is
    port(
        q               : out    vl_logic;
        p               : out    vl_logic;
        j               : in     vl_logic;
        k               : in     vl_logic;
        clk             : in     vl_logic;
        pre             : in     vl_logic;
        re              : in     vl_logic
    );
end JK;
