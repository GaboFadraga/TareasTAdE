library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Oscilador50MHz is
    Port ( clk : in  STD_LOGIC;
           led : inout  STD_LOGIC);
end Oscilador50MHz;

architecture Behavioral of Oscilador50MHz is
signal conteo : integer range 0 to 99999999;
begin
process(clk)
 begin
  if(clk' event and clk='1') then
     conteo<=conteo+1;
  if(conteo=99999999) then
     conteo<=0;
	  led<=not(led);
	 end if;
   end if;
end process;

end Behavioral;

