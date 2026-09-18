library ieee;
use ieee.std_logic_1164.all;

entity axc_testbench is
end entity;

architecture tb of axc_testbench is

    signal x4, x3, x2, x1 : std_logic;
    signal cin            : std_logic;
    signal carry, sum     : std_logic;
    signal cout           : std_logic;

begin
    dut: entity work.axc_1(rtl)
        port map (
            x4    => x4,
            x3    => x3,
            x2    => x2,
            x1    => x1,
            cin   => cin,
            cout  => cout,
            carry => carry,
            sum   => sum
        );

    stim_proc: process
    begin
        -- cin como zero pq ele nao eh considerado nos aproximados
        cin <= '0';

        x4 <= '0'; x3 <= '0'; x2 <= '0'; x1 <= '0';
        wait for 10 ns;
        assert (carry = '0' and sum = '0') report "Erro no Teste 0" severity error;

        x4 <= '0'; x3 <= '0'; x2 <= '0'; x1 <= '1';
        wait for 10 ns;
        assert (carry = '0' and sum = '1') report "Erro no Teste 1" severity error;

        x4 <= '0'; x3 <= '0'; x2 <= '1'; x1 <= '0';
        wait for 10 ns;
        assert (carry = '0' and sum = '1') report "Erro no Teste 2" severity error;

        x4 <= '0'; x3 <= '0'; x2 <= '1'; x1 <= '1';
        wait for 10 ns;
        assert (carry = '1' and sum = '0') report "Erro no Teste 3" severity error;

        x4 <= '0'; x3 <= '1'; x2 <= '0'; x1 <= '0';
        wait for 10 ns;
        assert (carry = '0' and sum = '1') report "Erro no Teste 4" severity error;

        x4 <= '0'; x3 <= '1'; x2 <= '0'; x1 <= '1';
        wait for 10 ns;
        assert (carry = '1' and sum = '0') report "Erro no Teste 5" severity error;

        x4 <= '0'; x3 <= '1'; x2 <= '1'; x1 <= '0';
        wait for 10 ns;
        assert (carry = '1' and sum = '0') report "Erro no Teste 6" severity error;

        x4 <= '0'; x3 <= '1'; x2 <= '1'; x1 <= '1';
        wait for 10 ns;
        assert (carry = '1' and sum = '1') report "Erro no Teste 7" severity error;

        x4 <= '1'; x3 <= '0'; x2 <= '0'; x1 <= '0';
        wait for 10 ns;
        assert (carry = '0' and sum = '1') report "Erro no Teste 8" severity error;

        x4 <= '1'; x3 <= '0'; x2 <= '0'; x1 <= '1';
        wait for 10 ns;
        assert (carry = '1' and sum = '0') report "Erro no Teste 9" severity error;

        x4 <= '1'; x3 <= '0'; x2 <= '1'; x1 <= '0';
        wait for 10 ns;
        assert (carry = '1' and sum = '0') report "Erro no Teste 10" severity error;

        x4 <= '1'; x3 <= '0'; x2 <= '1'; x1 <= '1';
        wait for 10 ns;
        assert (carry = '1' and sum = '1') report "Erro no Teste 11" severity error;

        x4 <= '1'; x3 <= '1'; x2 <= '0'; x1 <= '0';
        wait for 10 ns;
        assert (carry = '1' and sum = '0') report "Erro no Teste 12" severity error;

        x4 <= '1'; x3 <= '1'; x2 <= '0'; x1 <= '1';
        wait for 10 ns;
        assert (carry = '1' and sum = '1') report "Erro no Teste 13" severity error;

        x4 <= '1'; x3 <= '1'; x2 <= '1'; x1 <= '0';
        wait for 10 ns;
        assert (carry = '1' and sum = '1') report "Erro no Teste 14" severity error;

        x4 <= '1'; x3 <= '1'; x2 <= '1'; x1 <= '1';
        wait for 10 ns;
        assert (carry = '0' and sum = '0') report "Erro no Teste 15" severity error;

        report "16 testes executados com sucesso!!";
        wait;
    end process;

end architecture;