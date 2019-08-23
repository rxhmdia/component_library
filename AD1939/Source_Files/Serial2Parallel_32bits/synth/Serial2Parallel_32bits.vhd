-- Serial2Parallel_32bits.vhd

-- Generated using ACDS version 18.0 614

library IEEE;
library Serial2Parallel_32bits_lpm_shiftreg_180;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use Serial2Parallel_32bits_lpm_shiftreg_180.Serial2Parallel_32bits_pkg.all;

entity Serial2Parallel_32bits is
	port (
		clock   : in  std_logic                     := '0'; --  lpm_shiftreg_input.clock
		shiftin : in  std_logic                     := '0'; --                    .shiftin
		q       : out std_logic_vector(31 downto 0)         -- lpm_shiftreg_output.q
	);
end entity Serial2Parallel_32bits;

architecture rtl of Serial2Parallel_32bits is
begin

	serial2parallel_32bits : component Serial2Parallel_32bits_lpm_shiftreg_180.Serial2Parallel_32bits_pkg.Serial2Parallel_32bits_lpm_shiftreg_180_gizevoi
		port map (
			clock   => clock,   --  lpm_shiftreg_input.clock
			shiftin => shiftin, --                    .shiftin
			q       => q        -- lpm_shiftreg_output.q
		);

end architecture rtl; -- of Serial2Parallel_32bits
