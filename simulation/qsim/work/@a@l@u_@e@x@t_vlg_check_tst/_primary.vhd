library verilog;
use verilog.vl_types.all;
entity ALU_EXT_vlg_check_tst is
    port(
        dst_EX_DM       : in     vl_logic_vector(31 downto 0);
        neg             : in     vl_logic;
        ov              : in     vl_logic;
        zr              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ALU_EXT_vlg_check_tst;
