library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--counter
entity Lab_6 is
port(R, C : in std_logic;
	  HEX0: out unsigned(6 downto 0);
	  HEX1: out unsigned(6 downto 0);
     Q : out unsigned(3 downto 0));
end Lab_5;

architecture Lab_6_arc of Lab_6 is
begin
	process (R, C)
		variable : cnt : unsigned(3 downto 0) := "0000";
	begin
		if (R='0') then
			cnt := "0000";
		elsif(C' event and C = '1') then
			cnt = cnt + 1;
		end if;
		case cnt is 
			when "0000" => HEX0 <= "1000000"; HEX1 <= "1000000" --01
			when "0001" => HEX0 <= "1111001"; HEX1 <= "1000000" --01
			-- continue for all combinations
			when "1010" => HEX0 <= "1000000"; HEX1 <= "1111001" --10
			when "0000" => HEX0 <= "1111001"; HEX1 <= "1111001" --11
			--continue
			when others HEX0 <= "1111111"; HEX1 <= "1111111"
			--modify the code since you wrote this if statment below
		end case;
		if(cnt < 10) then 
				HEX1 <= "1000000";
			else
				HEX1 <= "1111001";
			end if;
		Q <= cnt;     
	end process;
end Lab_6_arc;