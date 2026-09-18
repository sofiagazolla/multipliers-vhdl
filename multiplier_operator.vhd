library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier_operator is
	port (
		a       : in  unsigned(7 downto 0);
		b       : in  unsigned(7 downto 0);
		product : out unsigned(15 downto 0)
	);
end entity;

architecture rtl of multiplier_operator is
begin
	product <= a * b;
end architecture;