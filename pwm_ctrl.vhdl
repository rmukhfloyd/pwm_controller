library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity pwm_ctrl is 

PORT( clk: IN std_logic;

		op: OUT std_logic_vector(7 downto 0));

end entity;
 
architecture arch of pwm_ctrl is

--constant dutcyc:unsigned(7 downto 0):=to_unsigned(32,8);

begin

--	process(clk)
--
--	variable count: unsigned(9 downto 0):=(others=>'0');
--	variable dutcyc:unsigned(9 downto 0):=(others=>'0');
--
--	begin
--
--		if(rising_edge(clk))then
--
--			count:=count+1;
--
--			if(count<dutcyc)then
--				op<='1';
--			else
--				op<='0';
--			end if;
--						
--			if(count=1023)then
--				dutcyc:=dutcyc+1;
--			end if;
--		end if;
--		
--	end process;

process(clk)
	
	variable dutcyc:unsigned(9 downto 0):=to_unsigned(0, 10);
	variable dutled:unsigned(9 downto 0):=to_unsigned(0, 10);
	variable count: unsigned(9 downto 0):=(others=>'0');
	variable direc: std_logic:='0';
	
	begin
		if(rising_edge(clk))then
			count:=count+1;
			
--			if(count<dutcyc)then
--				op<='1';
--			else
--				op<='0';
--			end if;

			for i in 0 to 7 loop
				dutled:=dutcyc+i*128;
				if(count<dutled)then
					op(i)<='0';
				else
					op(i)<='1';
				end if;
			end loop;
			
			if(count=to_unsigned(1023, 10)) then
				if(direc='0') then
					dutcyc:=dutcyc+1;
				elsif(direc='1') then
					dutcyc:=dutcyc-1;
				end if;
			end if;
			
			if(dutcyc=to_unsigned(1023, 10)) then
				direc:='1';
			elsif(dutcyc=to_unsigned(0, 10)) then
				direc:='1';
			end if;
		end if;
	end process;

end architecture;			