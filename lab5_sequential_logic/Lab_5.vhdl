library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Lab_5 is
port(S, R, D, C : in std_logic;
     Q : out std_logic);
end Lab_5;

architecture Lab_5_arc of Lab_5 is
begin
	process (S, R, D, C)
	begin
		if ((S = '0') and (R = '1')) then
			Q ='1';
		elsif ((S = '1') and (R = '0')) then
			Q <= '0';
			elsif ((S = '1') and (R = '1')) then
				if(C'event and C = '1') then -- C = 0: (falling clock age), C = 1: (rising clock age)
					Q <= D;
				end if;
			end if;
	end process
end Lab_5_arc;



--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--entity Lab_5 is
--port(R, C, DATA : in std_logic;
--     Q : out std_logic_vector(3 downto 0));  -- change 7 downto 0 for 8 bit
--end Lab_5;
--
--architecture Lab_5_arc of Lab_5 is
--begin
--	process (R, DATA, C,)
--	begin
--		if (R = '0') then
--			 Q <= "0000"; -- dont forget to change this to 00000000 for 8 bit
--		elsif (C' event and C = '1') then
--			if DIR = '0' then
--			Q(0) <= DATA;
--			Q(1) <= Q(0);
--			Q(2) <= Q(1);
--			Q(3) <= Q(2)
--			-- continue for all for 8 bit
--			else Q(7) <= DATA;
--			     Q(6) <= Q(7);
--				  Q(5) <= Q(6);
--			     Q(4) <= Q(5);
--			     Q(3) <= Q(4);
--			     Q(2) <= Q(3);
--			     Q(1) <= Q(2);
--			     Q(0) <= Q(1);
--			end if;
--		end if;
--	end process
--end Lab_5_arc;