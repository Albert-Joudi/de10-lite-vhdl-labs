--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--
--multiplexer:
--entity Lab_4 is
--port(a, d, e : in std_logic_vector;
--		y: out std_logic);
--end Lab_4;
--
--architecture Lab_4_arc of Lab_4 is
--begin
--		y<= d(0) when (a ="000") and (e = '0') else
--		    d(0) when (a ="001") and (e = '0') else -- discribe all posible combonations(000-111)
--			 '0';
--
--end Lab_4_arc;



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--decoder:
--entity Lab_4 is
--port(a: in std_logic_vector(2 downto 0)
--     y: out std_logic_vector(7 downto 0)
--     cs1, cs2, cs3 : in std_logic);
--	
--end Lab_4;
--
--architecture Lab_4_arc of Lab_4 is
--begin
--		y<= "11111110" when (a ="000") and (cs1 = '1') and (cs2 = '0') and (cs3 = '0') else
--		    "11111101" when (a ="000") and (cs1 = '1') and (cs2 = '0') and (cs3 = '0') else
--         continue...
--		    "01111101" when (a ="000") and (cs1 = '1') and (cs2 = '0') and (cs3 = '0') else
--			 "11111111";
--
--end Lab_4_arc;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--encoder:
--entity Lab_4 is
--port(sw: in std_logic_vector(9 downto 0)
--     b: out std_logic_vector(3 downto 0)
--     cs1, cs2, cs3 : in std_logic);
--	
--end Lab_4;
--
--architecture Lab_4_arc of Lab_4 is
--begin
--		b<= "0000" when sw = "0000000001" else
--		    "0001" when sw = "0000000010" else
--		    "0010" when sw = "0000000100" else
--		    "0010" when sw = "0000000100" else
--         continue...
--		    "1111" when sw = "1000000000" else
--			 "0000";
--
--end Lab_4_arc;