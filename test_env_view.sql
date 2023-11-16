CREATE VIEW tp_and_notebook AS 
SELECT tp.tp_id, tp.tp_name, notebooks.notebook_id, notebooks.notebook_name
FROM tp
JOIN notebooks ON tp.tp_id = notebooks.tp_id;