library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity soundGenerator is
  port (
    clk_50     : in std_logic;
    sound      : out std_logic;
    anal_input : in std_logic_vector(11 downto 0)
  );
end soundGenerator;

architecture Behavioral of soundGenerator is
  constant CLOCK_FREQUENCY : natural := 50000000; -- 50 MHz clock frequency

  signal counter   : natural range 0 to CLOCK_FREQUENCY;
  signal flip      : std_logic;
  signal clk       : std_logic;
  signal frequency : natural;
  
begin
  -- Frequency assignment process
  process(anal_input)
  begin
    -- frequency <= to_integer(unsigned(anal_input));
	 frequency <= 400;
  end process;
  
  -- Counter process
  process(clk_50)
  begin
    if rising_edge(clk_50) then
      if counter = (CLOCK_FREQUENCY/frequency) - 1 then
        counter <= 0;
        flip <= not flip;
      else
        counter <= counter + 1;
      end if;
    end if;
  end process;
  
  -- Clock divider process to generate desired frequency
  process(clk_50)
  begin
    if rising_edge(clk_50) then
      clk <= flip;
    end if;
  end process;
  
  -- Assign the generated clock to the sound output
  sound <= clk;
  
end Behavioral;
