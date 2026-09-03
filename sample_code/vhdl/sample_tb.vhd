library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter_tb is
end counter_tb;

architecture Behavioral of counter_tb is

    component counter
        Port (
            clk   : in  STD_LOGIC;
            rst   : in  STD_LOGIC;
            en    : in  STD_LOGIC;
            count : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    signal clk   : STD_LOGIC := '0';
    signal rst   : STD_LOGIC := '0';
    signal en    : STD_LOGIC := '0';
    signal count : STD_LOGIC_VECTOR(3 downto 0);

begin

    DUT : counter
        port map (
            clk   => clk,
            rst   => rst,
            en    => en,
            count => count
        );

    ------------------------------------------------
    -- Clock Generation (10 ns period)
    ------------------------------------------------
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for 5 ns;

            clk <= '1';
            wait for 5 ns;
        end loop;
    end process;

    ------------------------------------------------
    -- Stimulus
    ------------------------------------------------
    stimulus : process
    begin

        rst <= '1';
        en  <= '0';
        wait for 20 ns;

        rst <= '0';
        en  <= '1';

        wait for 100 ns;

        en <= '0';
        wait for 30 ns;

        en <= '1';
        wait for 60 ns;

        rst <= '1';
        wait for 20 ns;

        rst <= '0';

        wait for 50 ns;

        assert false
            report "Simulation Finished"
            severity failure;

    end process;

end Behavioral;
