library ieee;
use ieee.std_logic_1164.all;

entity fa_theory is
	port (
		a, b, cin : in  std_logic;
		s, cout   : out std_logic
	);
end entity;

architecture rtl of fa_theory is
    SIGNAL a_xor_b: STD_LOGIC;
begin
    a_xor_b <= a XOR b;
    s <= a_xor_b XOR cin;
    cout <= (a NAND b) NAND (cin NAND a_xor_b);
end architecture;
