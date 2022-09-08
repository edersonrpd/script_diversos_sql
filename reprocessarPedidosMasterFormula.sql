--Se o Ped_Percentual_Faturado estiver como NULL o sistema irá reprocessar o orçamento
UPDATE Mov_Estoque SET Ped_Percentual_Faturado = NULL WHERE IdMovimento in ()