-- Revert boardgames:init from pg

BEGIN;

DROP TABLE videogame;

DROP DOMAIN pint;

COMMIT;
