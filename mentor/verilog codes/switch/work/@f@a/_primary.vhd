library verilog;
use verilog.vl_types.all;
entity FA is
    port(
        sum             : out    vl_logic;
        co              : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic
    );
end FA;
