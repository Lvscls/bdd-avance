ALTER TABLE session
ADD COLUMN connected_at_month INTEGER;

UPDATE session
SET connected_at_month = EXTRACT(MONTH FROM connected_at);
