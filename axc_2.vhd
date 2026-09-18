library ieee;
use ieee.std_logic_1164.all;

entity axc_2 is
	port (
		x1, x2, x3, x4, cin 	: in  std_logic;
		sum, carry	: out std_logic
	);
end entity;

architecture rtl of axc_2 is
begin
    sum       <= '1';
    carry     <= x4;
end architecture;