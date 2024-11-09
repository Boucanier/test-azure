// app.js
const os = require('os');
const express = require('express');

const app = express();
const port = 80;

// Configurer le moteur de template EJS
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Servir les fichiers statiques depuis le dossier "public"
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
    const hostname = os.hostname();
    res.render('index', { hostname });
});

app.listen(port, () => {
    console.log(`Server running on http://localhost:${port}`);
});