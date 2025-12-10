CREATE TABLE lists (
  id serial PRIMARY KEY,
  title text NOT NULL UNIQUE
);

CREATE TABLE todos (
  id serial PRIMARY KEY,
  title text NOT NULL,
  completed BOOLEAN NOT NULL DEFAULT false,
  list_id integer NOT NULL
                  REFERENCES lists (id)
                  ON DELETE CASCADE
);