library verilog;
use verilog.vl_types.all;
entity ALU_EXT_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        func            : in     vl_logic_vector(2 downto 0);
        src0            : in     vl_logic_vector(31 downto 0);
        src1            : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALU_EXT_vlg_sample_tst;
