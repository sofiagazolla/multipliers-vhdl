library ieee;
use ieee.std_logic_1164.all;

entity fa_testbench is
end entity;

architecture tb of fa_testbench is

    signal a, b, cin : std_logic := '0';
    signal s, cout   : std_logic;

begin
    dut: entity work.fa_pratice(rtl)
        port map (
            a    => a,
            b    => b,
            cin  => cin,
            s    => s,
            cout => cout
        );

    stim_proc: process
    begin

        a <= '0'; b <= '0'; cin <= '0';
        wait for 10 ns;
        assert (cout = '0' and s = '0') report "Erro no Teste 0" severity error;

        a <= '0'; b <= '0'; cin <= '1';
        wait for 10 ns;
        assert (cout = '0' and s = '1') report "Erro no Teste 1" severity error;

        a <= '0'; b <= '1'; cin <= '0';
        wait for 10 ns;
        assert (cout = '0' and s = '1') report "Erro no Teste 2" severity error;

        a <= '0'; b <= '1'; cin <= '1';
        wait for 10 ns;
        assert (cout = '1' and s = '0') report "Erro no Teste 3" severity error;

        a <= '1'; b <= '0'; cin <= '0';
        wait for 10 ns;
        assert (cout = '0' and s = '1') report "Erro no Teste 4" severity error;

        a <= '1'; b <= '0'; cin <= '1';
        wait for 10 ns;
        assert (cout = '1' and s = '0') report "Erro no Teste 5" severity error;

        a <= '1'; b <= '1'; cin <= '0';
        wait for 10 ns;
        assert (cout = '1' and s = '0') report "Erro no Teste 6" severity error;

        a <= '1'; b <= '1'; cin <= '1';
        wait for 10 ns;
        assert (cout = '1' and s = '1') report "Erro no Teste 7" severity error;

        report "8 testes executados com sucesso!!";
        wait;
    end process;

end architecture;