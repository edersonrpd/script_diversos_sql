--Se o Ped_Percentual_Faturado estiver como NULL o sistema ir� reprocessar o or�amento
UPDATE Mov_Estoque SET Ped_Percentual_Faturado = NULL WHERE IdMovimento in ()