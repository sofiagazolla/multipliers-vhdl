library ieee;
use ieee.std_logic_1164.all;

entity axc_1 is
	port (
		x1, x2, x3, x4, cin : in  std_logic;
		cout, sum, carry	: out std_logic
	);
end entity;

architecture rtl of axc_1 is
begin
    sum       <= x2;
    carry     <= x3 or x4;
end architecture;