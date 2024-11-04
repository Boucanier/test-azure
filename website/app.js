// app.js
const os = require('os');
const express = require('express');

const app = express();
const port = 80;

app.get('/', (req, res) => {
    const hostname = os.hostname();
    res.send(`<h1>Nom de la machine : ${hostname}</h1>`);
});

app.listen(port, () => {
    console.log(`Serveur en cours d'exécution sur http://localhost:${port}`);
});
