library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
    Port (
        clk   : in  STD_LOGIC;
        rst   : in  STD_LOGIC;
        en    : in  STD_LOGIC;
        count : out STD_LOGIC_VECTOR(3 downto 0)
    );
end counter;

architecture Behavioral of counter is

    signal cnt : unsigned(3 downto 0) := "0000";

begin

    process(clk)
    begin
        if rising_edge(clk) then

            if rst = '1' then
                cnt <= (others => '0');

            elsif en = '1' then
                cnt <= cnt + 1;

            end if;

        end if;
    end process;

    count <= std_logic_vector(cnt);

end Behavioral;
