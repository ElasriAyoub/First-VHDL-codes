library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

entity led_matrix is 
	port(clock_in:in std_logic;Lignes,colonnes_rouge,Colonnes_vertes: out std_logic_vector(7 downto 0);
		ctrl:out std_logic_vector(2 downto 0));
end led_matrix;


architecture code of led_matrix is
Signal compteur:std_logic_vector(2 downto 0);
signal clock_devided:std_logic;
begin 
	
--Amine ajoutes un diviseur de fréquence son entrée est clock_in et sa sortie est clock_devided de frequence 10 Hz tu divise par 10^6	
	process(clock_devided)
	begin 
		if(clock_devided'event and clock_devided='1')then 
			compteur<=compteur+1;end if;
		ctrl<=compteur;end process;
	
	
	Lignes<="11111111";
	colonnes_rouges<="00001000";
	colonnes_vertes<="111111111";

end code;	
--ctrl est connecté aux pins de control de la matrice
--ctrl(0) connecté au pin 37
--ctrl(1) connecté au pin 36	
--ctrl(2) connecté au pin 33
--Vu que je ne dispose pas du générateur de fréquence donc je ne peux pas compiler alors c'est impossible de faire l'assigement des pins 
--apres compilation tu n'as qu'à selectionner le pin planner et tu trouveras toutes les inputs et les outputs.

--Lignes(0) connecté au pin 88

--Lignes(1) connecté au pin 89

--Lignes(2) connecté au pin 90

--Lignes(3) connecté au pin 91

--Lignes(4) connecté au pin 92

--Lignes(5) connecté au pin 95

--Lignes(6) connecté au pin 96

--Lignes(7) connecté au pin 97


-- tu continues comme ca pour colonnes_vertes et colonnes_rouges tu trouveras les assigements des pins dans le TP.




