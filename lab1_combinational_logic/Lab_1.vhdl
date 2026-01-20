library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab_1 is
port(a, b : in std_logic;
		f: out std_logic);
end Lab_1;

architecture Lab_1_arc of Lab_1 is
begin
		f<= a or b;
end Lab_1_arc;