SELECT TRG.name "Nome Trigger",
TAB.NAME "Nome Tabela",
CASE TRG.is_disabled
WHEN '0' THEN 'HABILITADA'
WHEN '1' THEN 'DESABILITADA' END "Status"
FROM sys.triggers TRG
INNER JOIN sys.tables TAB
ON TRG.parent_id = TAB.object_id
