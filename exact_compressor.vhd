library ieee;
use ieee.std_logic_1164.all;

entity exact_compressor is
	port (
		x1, x2, x3, x4, cin 	: in  std_logic;
		cout, sum, carry	: out std_logic
	);
end entity;

architecture rtl of exact_compressor is
    signal x1_xor_x2 : std_logic;
    signal s         : std_logic;
begin
    x1_xor_x2 <= x1 xor x2;
    s         <= x1_xor_x2 xor x3;
    sum       <= s xor x4 xor cin;
    carry     <= ((s xor x4) and cin) or (s and x4);
    cout      <= (x1_xor_x2 and x3) or (x1 and x2);
end architecture;