// app.js
import { hostname as _hostname } from 'os';
import express from 'express';

const app = express();
const port = 3000;

app.get('/', (req, res) => {
    const hostname = _hostname();
    res.send(`<h1>Nom de la machine : ${hostname}</h1>`);
});

app.listen(port, () => {
    console.log(`Serveur en cours d'exécution sur http://localhost:${port}`);
});
