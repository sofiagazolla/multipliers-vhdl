library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
	port (
		a, b : in  std_logic;
		s, cout   : out std_logic
	);
end entity;

architecture rtl of half_adder is
    SIGNAL a_xor_b: STD_LOGIC;
begin
    s <= a XOR b;
    cout <= a AND b;
end architecture;
