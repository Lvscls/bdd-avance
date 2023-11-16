CREATE TABLE IF NOT EXISTS tp (
    tp_id INT PRIMARY KEY NOT NULL,
    tp_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS notebooks (
    notebook_id INT PRIMARY KEY NOT NULL,
    notebook_name VARCHAR(255),
    tp_id INT,
    FOREIGN KEY (tp_id) REFERENCES tp(tp_id)
);

INSERT INTO tp VALUES (1, 'tp1');
INSERT INTO tp VALUES (2, 'tp2');
INSERT INTO notebooks VALUES (1, 'notebook1', 1);
INSERT INTO notebooks VALUES (2, 'notebook2', 1);
INSERT INTO notebooks VALUES (3, 'notebook3', 2);

CREATE VIEW tp_and_notebook AS 
    SELECT tp.tp_id, tp.tp_name, notebooks.notebook_id, notebooks.notebook_name
    FROM tp
    LEFT JOIN notebooks ON tp.tp_id = notebooks.tp_id;
