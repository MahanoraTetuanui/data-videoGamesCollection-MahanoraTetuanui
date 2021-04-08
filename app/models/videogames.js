const db = require('../database');

class Videogame {

    constructor(data = {}) {
        for (const prop in data) {
            this[prop] = data[prop];
        }
    }

    static async findOne(id) {
        const { rows } = await db.query('SELECT * FROM videogame WHERE id = $1;', [id]);

        if (rows[0]) {
            return new Videogame(rows[0]);
        } else {
            throw new Error(`no videogame with id ${id}`);
        }
    }

    static async findAll() {
        const { rows } = await db.query('SELECT * FROM videogame;');

        return rows.map(bg => new Videogame(bg));
    }

    async save() {
        if (this.id) {
            // UPDATE
        } else {
            // INSERT
            const { rows } = await db.query('SELECT new_videogame($1, $2, $3, $4, $5, $6) AS id;', [
                this.name,
                this.editor,
                this.author,
                this.minPlayers,
                this.maxPlayers,
                this.minAge
            ]);

            this.id = rows[0].id;
        }
    }
}

module.exports = Videogame;