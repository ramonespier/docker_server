import express from "express";
const PORT = 3000;

const app = express()

app.get('/', (req, res) => {
    res.send('Hello World')
})

app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
})