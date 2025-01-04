const express = require('express');

const PORT = 3000;
const HOST = '0.0.0.0';

const app = express();

app.get('/', (_, res) => {
    res.send('Hello Wolrd 2s');
});

app.listen(PORT,HOST)