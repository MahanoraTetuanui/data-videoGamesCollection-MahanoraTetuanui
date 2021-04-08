# Projet VideoGamesCollection

Ce projet est une API REST pour gérer une collection de jeux video.

## Stack technique

- [Node 14](https://nodejs.org/en/download/)
- [NPM](https://www.npmjs.com/get-npm)
- [Postgresql](https://www.postgresql.org/download/) 
- [Sqitch 0.9999](https://sqitch.org/download/)

## Installation

Cloner le repo en local

```bash
git clone <url de ce repo>
```

Puis, dans le dossier local, installer les dépendances NPM

```bash
npm i
```

Enfin, créer une base de données PostgreSQL et déployer le projet Sqitch dessus

```bash
createdb videogame
sqitch deploy db:pg:videogame
```