SELECT  NúmeroDocumento,MotivoCancelamento, IdMovimento FROM Mov_Estoque WHERE NúmeroDocumento in (74136,73773,73689,73493,73636,73638,73645,73648,73652,73658,73660,73670,73671,73672,73673,73677,73682,73684,73685,73691,73697,73699,73703,73708,73709,73715,73717,73721,73726,73728,73799,73804,73812,73816,73844,73847,73868,73869,73871,73880,73884,73895,73897,73900,73986,73989,73991,74002,74005,74124,74135)
 AND DataEmissão BETWEEN '2022-08-01' AND '2022-08-03' AND IdUsuário LIKE '%MASTER%' ORDER BY MotivoCancelamento ASC

--SELECT  NúmeroDocumento,MotivoCancelamento, IdMovimento FROM Mov_Estoque WHERE IdMovimento in (22430631)
--AND DataEmissão BETWEEN '2022-08-01' AND '2022-08-03' AND IdUsuário LIKE '%MASTER%' ORDER BY MotivoCancelamento ASC
--UPDATE Mov_Estoque SET MotivoCancelamento = 'Pedido não alcançou o valor mínimo' WHERE IdMovimento in (22430651)
--UPDATE Mov_Estoque SET MotivoCancelamento = 'Validade curta' WHERE IdMovimento in (22429923)
--UPDATE Mov_Estoque SET MotivoCancelamento = 'Sem saldo' WHERE IdMovimento in (22430074)

