library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab_6 is
  port (C    : in  std_logic;        -- Input clock (50 MHz)
    LED  : out std_logic);         -- Output LED signal
end Lab_6;

architecture Lab_6_arc of Lab_6 is
  signal CLK : std_logic := '0'; -- Internal signal for generated clock
begin
  process (C)
    variable cnt : unsigned(31 downto 0) := x"00000000"; 
  begin
    if rising_edge(C) then
      cnt := cnt + 1; 
      if cnt < 1250000 then    -- Adjust this for your specific period requirement
        CLK <= '1';
      else
        CLK <= '0';
      end if;
      
      if cnt = 1250000 then 
        cnt := x"00000000";    -- Reset the counter after reaching the target count
      end if;
      
      LED <= CLK;               -- Assign CLK to LED output
    end if;
  end process;  
end Lab_6_arc;








--entity Lab_6 is
--  port (C  : in std_logic
--		  HEX1
--		  HEX2
--		  LED);
--end Lab_6;
--
--architecture Lab_6_arc of Lab_6 is
--signal CLK: std_logic
--begin
--  process (C)
--    variable cnt : unsigned(31 downto 0) := x"00000000"; 
--  begin
--    
--    if C'event and C = '1' then
--      cnt := cnt + 1; 
--		if(cnt < 1250000) then 
--		   CLK <= '1';
--		else 
--			CLK <= '0';
--    end if;
--	 		if(cnt = 1250000) then 
--			cnt := x"00000000";
--	      end if;
--			LED <= CLK;
--
--    end process;
--	 
--	 process(CLK)
--		variable cnt2 : unsigned(7 downto 0) := x"00"
--		variable ones : unsigned(7 downto 0) := x"00"
--
--	 begin
--	 if CLK'event and CLK = '1' then
--      cnt2 := cnt2 + 1; 
--		if (cnt2 > 99) then
--			cnt2 := x"00";
--		end if;
--		if ((cnt2 < 20) and (cnt2 > 9)) then --cnt2 is between 10 and 19
--		HEX1 <= 1111001;
--		ones := cnt2 -10
--		elsif
--		
--		((cnt2 < 20) and (cnt2 > 9)) then --cnt2 is between 10 and 19
--		HEX1 <= 0100100;
--		ones := cnt2 -20
--		elsif
--			--continue for all other values
--			
--		case(ones 3 downto 0) is
--			-- complete this
--		end case;
--	 end process;