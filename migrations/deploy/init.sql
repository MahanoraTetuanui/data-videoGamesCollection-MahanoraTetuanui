-- Deploy boardgames:init to pg

BEGIN;

CREATE DOMAIN pint AS int CHECK (value > 0);

-- nom, auteur, editeur,
-- nombre de joueurs maximum, nombre de joueurs minimum, age minimal

CREATE TABLE videogame (
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name text NOT NULL UNIQUE,
    author text NOT NULL,
    editor text NOT NULL,
    min_players pint NOT NULL,
    max_players pint NOT NULL,
    min_age pint NOT NULL,
    CHECK (min_players < max_players)
);

COMMIT;
