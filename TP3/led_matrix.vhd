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
	
--Amine ajoutes un diviseur de fr�quence son entr�e est clock_in et sa sortie est clock_devided de frequence 10 Hz tu divise par 10^6	
	process(clock_devided)
	begin 
		if(clock_devided'event and clock_devided='1')then 
			compteur<=compteur+1;end if;
		ctrl<=compteur;end process;
	
	
	Lignes<="11111111";
	colonnes_rouges<="00001000";
	colonnes_vertes<="111111111";

end code;	
--ctrl est connect� aux pins de control de la matrice
--ctrl(0) connect� au pin 37
--ctrl(1) connect� au pin 36	
--ctrl(2) connect� au pin 33
--Vu que je ne dispose pas du g�n�rateur de fr�quence donc je ne peux pas compiler alors c'est impossible de faire l'assigement des pins 
--apres compilation tu n'as qu'� selectionner le pin planner et tu trouveras toutes les inputs et les outputs.

--Lignes(0) connect� au pin 88

--Lignes(1) connect� au pin 89

--Lignes(2) connect� au pin 90

--Lignes(3) connect� au pin 91

--Lignes(4) connect� au pin 92

--Lignes(5) connect� au pin 95

--Lignes(6) connect� au pin 96

--Lignes(7) connect� au pin 97


-- tu continues comme ca pour colonnes_vertes et colonnes_rouges tu trouveras les assigements des pins dans le TP.




