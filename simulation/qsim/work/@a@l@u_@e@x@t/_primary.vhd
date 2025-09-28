library verilog;
use verilog.vl_types.all;
entity ALU_EXT is
    port(
        clk             : in     vl_logic;
        src1            : in     vl_logic_vector(31 downto 0);
        src0            : in     vl_logic_vector(31 downto 0);
        func            : in     vl_logic_vector(2 downto 0);
        dst_EX_DM       : out    vl_logic_vector(31 downto 0);
        ov              : out    vl_logic;
        zr              : out    vl_logic;
        neg             : out    vl_logic
    );
end ALU_EXT;
