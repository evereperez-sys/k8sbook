const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Respuesta de texto desde Express prueba actividad3');
});

app.listen(3000, '0.0.0.0', () => {
  console.log('API con Express en http://localhost:3000/');
});

app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

