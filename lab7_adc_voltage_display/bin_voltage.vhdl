library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin_voltage is
  port (
    response_valid : in std_logic;
	 bin_input : in std_logic_vector (11 downto 0)
    hex1, hex0 : out std_logic_vector (6 downto 0));
end bin_voltage;