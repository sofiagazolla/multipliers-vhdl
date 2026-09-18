library ieee;
use ieee.std_logic_1164.all;

entity ha_testbench is
end entity;

architecture tb of ha_testbench is

    signal a, b     : std_logic := '0';
    signal s, cout  : std_logic;

begin
    dut: entity work.half_adder(rtl)
        port map (
            a    => a,
            b    => b,
            s    => s,
            cout => cout
        );

    stim_proc: process
    begin

        a <= '0'; b <= '0';
        wait for 10 ns;
        assert (cout = '0' and s = '0') report "Erro no Teste 0" severity error;

        a <= '0'; b <= '1';
        wait for 10 ns;
        assert (cout = '0' and s = '1') report "Erro no Teste 1" severity error;

        a <= '1'; b <= '0';
        wait for 10 ns;
        assert (cout = '0' and s = '1') report "Erro no Teste 2" severity error;

        a <= '1'; b <= '1';
        wait for 10 ns;
        assert (cout = '1' and s = '0') report "Erro no Teste 3" severity error;

        report "4 testes executados com sucesso!!";
        wait;
    end process;

end architecture;