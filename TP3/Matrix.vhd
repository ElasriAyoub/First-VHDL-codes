Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.Matrix_package.all;
entity matrix is 
	port(clkin:in std_logic;Q:out std_logic_vector(2 downto 0);
			R,CR,CG: out std_logic_vector(8 downto 1));
end matrix;
architecture description_matrix of matrix is 
signal clkind,clko: std_logic;
type SR is Array(0 to 7) of std_logic_vector(8 downto 1);
type SCR is Array(0 to 7) of std_logic_vector(8 downto 1);
type Bonjour is Array (0 to 7) of SCR;--Two dimensions array it contains the 7 sequences to display a specific letter
signal n:integer:=0;
signal sequenceRB:SR;--sequence of rows
signal sequenceCRB,sequenceCRN,sequenceCRJ:SCR;--sequence of columns
signal sequenceCRO,sequenceCRR,sequenceCRU,sequenceCR0:SCR;--sequence of columns
signal Bo:Bonjour;
signal m,cpt:integer:=0;


begin 
sequenceRB(0)<="00000001";
sequenceRB(1)<="00000010";
sequenceRB(2)<="00000100";
sequenceRB(3)<="00001000";
sequenceRB(4)<="00010000";
sequenceRB(5)<="00100000";
sequenceRB(6)<="01000000";
sequenceRB(7)<="10000000";


--Letter B

sequenceCRB(0)<="00011100";
sequenceCRB(1)<="00100100";
sequenceCRB(2)<="00100100";
sequenceCRB(3)<="00011100";
sequenceCRB(4)<="00100100";
sequenceCRB(5)<="00100100";
sequenceCRB(6)<="00100100";
sequenceCRB(7)<="00011100";

--Letter O
sequenceCRO(0)<="00011000";
sequenceCRO(1)<="00100100";
sequenceCRO(2)<="00100100";
sequenceCRO(3)<="00100100";
sequenceCRO(4)<="00100100";
sequenceCRO(5)<="00100100";
sequenceCRO(6)<="00100100";
sequenceCRO(7)<="00011000";

--letter N
sequenceCRN(0)<="01000100";
sequenceCRN(1)<="01001100";
sequenceCRN(2)<="01000100";
sequenceCRN(3)<="01010100";
sequenceCRN(4)<="01000100";
sequenceCRN(5)<="01100100";
sequenceCRN(6)<="01000100";
sequenceCRN(7)<="01000100";



--letter J
sequenceCRJ(0)<="01111000";
sequenceCRJ(1)<="00100000";
sequenceCRJ(2)<="00100000";
sequenceCRJ(3)<="00111000";
sequenceCRJ(4)<="00100100";
sequenceCRJ(5)<="00100100";
sequenceCRJ(6)<="00100100";
sequenceCRJ(7)<="00111000";
--letter U
sequenceCRU(0)<="00000000";
sequenceCRU(1)<="00100100";
sequenceCRU(2)<="00100100";
sequenceCRU(3)<="00100100";
sequenceCRU(4)<="00100100";
sequenceCRU(5)<="00100100";
sequenceCRU(6)<="00100100";
sequenceCRU(7)<="00011000";

--letter R
sequenceCRR(0)<="00011100";
sequenceCRR(1)<="00100100";
sequenceCRR(2)<="00100100";
sequenceCRR(3)<="00011100";
sequenceCRR(4)<="00010100";
sequenceCRR(5)<="00100100";
sequenceCRR(6)<="01000100";
sequenceCRR(7)<="10000100";

--Smily
sequenceCR0(0)<="00111100";
sequenceCR0(1)<="01000010";
sequenceCR0(2)<="10100101";
sequenceCR0(3)<="10000001";
sequenceCR0(4)<="11000011";
sequenceCR0(5)<="10111101";
sequenceCR0(6)<="01000010";
sequenceCR0(7)<="00111100";
--Storing of letter's sequences in the two dimensional array
Bo(0)<=sequenceCRB;
Bo(1)<=sequenceCRO;
Bo(2)<=sequenceCRN;
Bo(3)<=sequenceCRJ;
Bo(4)<=sequenceCRO;
Bo(5)<=sequenceCRU;
Bo(6)<=sequenceCRR;
Bo(7)<=sequenceCR0;
-------------------------------------------
I1: FD port map(clkin,1000000,clkind);
I2: mod8 port map(clkind,Q);
I3: FD port map(clkin, 1000, clko);


			process(clko)
				begin 			
					if (rising_edge(clko))then
						cpt<=cpt+1;
						R<=sequenceRB(n);
						CR<=Bo(m)(n);
						CG<=(Bo(m)(n));
						n<=n+1;
							if (n=8)then
									n<=0;
							end if;
							if(cpt=20000) then
									m<=m+1;
									cpt<=0;
							end if;
							
				
					end if;
				
				end process;
				
end description_matrix;
	
	
	