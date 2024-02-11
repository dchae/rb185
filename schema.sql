DROP TABLE expenses;
DROP SEQUENCE expenses_id_seq;

CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount decimal(6, 2) NOT NULL,
  memo text NOT NULL,
  created_on timestamp DEFAULT NOW(),
  CHECK (amount > 0)
);