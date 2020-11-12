library ieee;
use ieee.std_logic_1164.all;
use work.eecs361_gates.all;
use work.eecs361.all;

entity reg_file_bitslice is
    port (
    Ra      : in std_logic_vector(4 downto 0);
    Rb      : in std_logic_vector(4 downto 0);
    Rw      : in std_logic_vector(4 downto 0);
    busWi   : in std_logic;
    RegWr   : in std_logic;
    clk     : in std_logic;
    busAi   : out std_logic;
    busBi   : out std_logic
    );
end reg_file_bitslice;

architecture structural of reg_file_bitslice is
    signal outputs : std_logic_vector(31 downto 0);
    signal dec_res : std_logic_vector(31 downto 0);
    signal resa : std_logic;
    signal resb : std_logic;

    component register_bitslice is
        port (
    busWi   : in std_logic;
    Rw_dec  : in std_logic_vector(31 downto 0);
    RegWr   : in std_logic;
    clk     : in std_logic;
    outputs : out std_logic_vector(31 downto 0)
        );
    end component;

    component dec_32 is
      port (
       src	: in std_logic_vector(4 downto 0);
       z	: out std_logic_vector(31 downto 0)
      );
    end component;

    component mux_32to1 is
  	port (
		sel  : in  std_logic_vector(4 downto 0);
		src  : in  std_logic_vector(31 downto 0);
		z    : out std_logic
  		);
    end component;

begin

    dec_map  : dec_32 port map (src => Rw, z=> dec_res);
    reg_map : register_bitslice port map (busWi => busWi, Rw_dec => dec_res, RegWr => RegWr, clk => clk, outputs => outputs);
    --outputs <= "11111111111111111111111111111111";
    m321    : mux_32to1 port map (sel => Ra, src => outputs, z=> resa);
    busAi <= resa;
    m321_b  : mux_32to1 port map (sel => Rb, src => outputs, z=> resb);
    busBi <= resb;
    

end architecture structural;