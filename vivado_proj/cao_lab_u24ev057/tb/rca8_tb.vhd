----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/13/2026 04:13:11 PM
-- Design Name: 
-- Module Name: rca8_tb - testing
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rca8_tb is
--  Port ( );
end rca8_tb;

architecture testing of rca8_tb is

    component rca8 is
        Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
            b : in STD_LOGIC_VECTOR (7 downto 0);
            sum : out STD_LOGIC_VECTOR (7 downto 0);
            cout : out STD_LOGIC);
    end component;
    

    signal a : std_logic_vector(7 downto 0);
    signal b : std_logic_vector(7 downto 0);
    signal s : std_logic_vector(7 downto 0);
    signal c : std_logic;
    
        
     
begin


    rca_test : rca8 port map(
        a => a,
        b => b,
        sum => s,
        cout =>c
    );
    
    
    process
    
    begin
        a <= "01010101";
        b <= "10101010";
        
        wait for 10ns;
        
        a <= "00110011";
        b <= "11001100";
        
        wait for 10ns;
        
        a <= "10101010";
        b <= "11001100";
        
        wait for 10ns;
        
        a <= "00110001";
        b <= "10011100";
        
        wait for 10ns;
        
        a <= "11001010";
        b <= "11000011";
        
        wait for 10ns;
        
        a <= "11111111";
        b <= "11111111";
        
        wait for 10ns;
        
        a <= "00000000";
        b <= "00000000";
        
        wait for 10ns;
        
        a <= "01011010";
        b <= "11110011";
        
        wait for 10ns;
        
        a <= "00000001";
        b <= "10000111";
        
        wait for 10ns;
        
        a <= "10101010";
        b <= "11111111";
        
        
        wait;
    
    end process;
    


end testing;
