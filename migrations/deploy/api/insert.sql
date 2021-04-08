-- Deploy boardgames:api/insert to pg

BEGIN;

CREATE FUNCTION new_videogame(text, text, text, int, int, int) RETURNS int AS $$
    INSERT INTO videogame (name, editor, author, min_players, max_players, min_age)
    VALUES ($1, $2, $3, $4, $5, $6)
    RETURNING id;
$$ LANGUAGE sql VOLATILE STRICT;

COMMIT;
