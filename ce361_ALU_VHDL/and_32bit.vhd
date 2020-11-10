-- This file is generated by automatic tools.
library ieee;
use ieee.std_logic_1164.all;
use work.eecs361_gates.all;

entity and_32bit is
  port (
    x   : in  std_logic_vector(31 downto 0);
    y   : in  std_logic_vector(31 downto 0);
    z   : out std_logic_vector(31 downto 0)
  );
end and_32bit;

architecture structural of and_32bit is
	component and_1bit is
		port (
			x : in std_logic;
			y : in std_logic;
			z : out std_logic
		     );
	end component and_1bit;
begin
  and0_map : and_1bit port map (
				x => x(0),
				y => y(0), 
				z => z(0)
				);
  and1_map : and_1bit port map (
				x => x(1),
				y => y(1), 
				z => z(1)
				);
  and2_map : and_1bit port map (
				x => x(2),
				y => y(2), 
				z => z(2)
				);
  and3_map : and_1bit port map (
				x => x(3),
				y => y(3), 
				z => z(3)
				);
  and4_map : and_1bit port map (
				x => x(4),
				y => y(4), 
				z => z(4)
				);
  and5_map : and_1bit port map (
				x => x(5),
				y => y(5), 
				z => z(5)
				);
  and6_map : and_1bit port map (
				x => x(6),
				y => y(6), 
				z => z(6)
				);
  and7_map : and_1bit port map (
				x => x(7),
				y => y(7), 
				z => z(7)
				);
  and8_map : and_1bit port map (
				x => x(8),
				y => y(8), 
				z => z(8)
				);
  and9_map : and_1bit port map (
				x => x(9),
				y => y(9), 
				z => z(9)
				);
  and10_map : and_1bit port map (
				x => x(10),
				y => y(10), 
				z => z(10)
				);
  and11_map : and_1bit port map (
				x => x(11),
				y => y(11), 
				z => z(11)
				);
  and12_map : and_1bit port map (
				x => x(12),
				y => y(12), 
				z => z(12)
				);
  and13_map : and_1bit port map (
				x => x(13),
				y => y(13), 
				z => z(13)
				);
  and14_map : and_1bit port map (
				x => x(14),
				y => y(14), 
				z => z(14)
				);
  and15_map : and_1bit port map (
				x => x(15),
				y => y(15), 
				z => z(15)
				);
  and16_map : and_1bit port map (
				x => x(16),
				y => y(16), 
				z => z(16)
				);
  and17_map : and_1bit port map (
				x => x(17),
				y => y(17), 
				z => z(17)
				);
  and18_map : and_1bit port map (
				x => x(18),
				y => y(18), 
				z => z(18)
				);
  and19_map : and_1bit port map (
				x => x(19),
				y => y(19), 
				z => z(19)
				);
  and20_map : and_1bit port map (
				x => x(20),
				y => y(20), 
				z => z(20)
				);
  and21_map : and_1bit port map (
				x => x(21),
				y => y(21), 
				z => z(21)
				);
  and22_map : and_1bit port map (
				x => x(22),
				y => y(22), 
				z => z(22)
				);
  and23_map : and_1bit port map (
				x => x(23),
				y => y(23), 
				z => z(23)
				);
  and24_map : and_1bit port map (
				x => x(24),
				y => y(24), 
				z => z(24)
				);
  and25_map : and_1bit port map (
				x => x(25),
				y => y(25), 
				z => z(25)
				);
  and26_map : and_1bit port map (
				x => x(26),
				y => y(26), 
				z => z(26)
				);
  and27_map : and_1bit port map (
				x => x(27),
				y => y(27), 
				z => z(27)
				);
  and28_map : and_1bit port map (
				x => x(28),
				y => y(28), 
				z => z(28)
				);
  and29_map : and_1bit port map (
				x => x(29),
				y => y(29), 
				z => z(29)
				);
  and30_map : and_1bit port map (
				x => x(30),
				y => y(30), 
				z => z(30)
				);
  and31_map : and_1bit port map (
				x => x(31),
				y => y(31), 
				z => z(31)
				);
end architecture structural;
