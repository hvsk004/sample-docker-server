import express from 'express';

const app = express();

app.get('/', (_req, res) => {
  res.status(200).send('Hello World');
});

app.listen(8080, () => {
    console.log('Server is running on http://localhost:8080');
})