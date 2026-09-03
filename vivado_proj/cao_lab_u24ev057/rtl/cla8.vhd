----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/13/2026 04:46:52 PM
-- Design Name: 
-- Module Name: cla8 - structural
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

entity cla8 is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           cin : in std_logic;
           sum : out STD_LOGIC_VECTOR (7 downto 0);
           cout : out STD_LOGIC);
end cla8;

architecture structural of cla8 is
    
    signal c : std_logic_vector(7 downto 0);
    
    signal p : std_logic_vector(7 downto 0);
    signal g : std_logic_vector(7 downto 0);

begin
    
    p <= a xor b;
    g <= a and b;
    
    
    c(0) <= cin;
    c(1) <= g(0) or (p(0) and (cin));
    c(2) <= g(1) or (p(1) and (g(0) or (p(0) and (cin))));
    c(3) <= g(2) or (p(2) and (g(1) or (p(1) and (g(0) or (p(0) and (cin))))));
    c(4) <= g(3) or (p(3) and (g(2) or (p(2) and (g(1) or (p(1) and (g(0) or (p(0) and (cin))))))));
    c(5) <= g(4) or (p(4) and (g(3) or (p(3) and (g(2) or (p(2) and (g(1) or (p(1) and (g(0) or (p(0) and (cin))))))))));
    c(6) <= g(5) or (p(5) and (g(4) or (p(4) and (g(3) or (p(3) and (g(2) or (p(2) and (g(1) or (p(1) and (g(0) or (p(0) and (cin))))))))))));
    c(7) <= g(6) or (p(6) and (g(5) or (p(5) and (g(4) or (p(4) and (g(3) or (p(3) and (g(2) or (p(2) and (g(1) or (p(1) and (g(0) or (p(0) and (cin))))))))))))));
    cout <= g(7) or (p(7) and (g(6) or (p(6) and (g(5) or (p(5) and (g(4) or (p(4) and (g(3) or (p(3) and (g(2) or (p(2) and (g(1) or (p(1) and (g(0) or (p(0) and (cin))))))))))))))));
    
    sum(0) <= a(0) xor b(0) xor c(0);
    sum(1) <= a(1) xor b(1) xor (g(0) or (p(0) and (cin)));
    sum(2) <= a(2) xor b(2) xor (g(1) or (p(1) and (g(0) or (p(0) and (cin)))));
    sum(3) <= a(3) xor b(3) xor (g(2) or (p(2) and (g(1) or (p(1) and (g(0) or (p(0) and (cin)))))));
    sum(4) <= a(4) xor b(4) xor (g(3) or (p(3) and (g(2) or (p(2) and (g(1) or (p(1) and (g(0) or (p(0) and (cin)))))))));
    sum(5) <= a(5) xor b(5) xor (g(4) or (p(4) and (g(3) or (p(3) and (g(2) or (p(2) and (g(1) or (p(1) and (g(0) or (p(0) and (cin)))))))))));
    sum(6) <= a(6) xor b(6) xor (g(5) or (p(5) and (g(4) or (p(4) and (g(3) or (p(3) and (g(2) or (p(2) and (g(1) or (p(1) and (g(0) or (p(0) and (cin)))))))))))));
    sum(7) <= a(7) xor b(7) xor (g(6) or (p(6) and (g(5) or (p(5) and (g(4) or (p(4) and (g(3) or (p(3) and (g(2) or (p(2) and (g(1) or (p(1) and (g(0) or (p(0) and (cin)))))))))))))));
    
end structural;
