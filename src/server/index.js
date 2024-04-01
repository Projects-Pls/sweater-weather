import express from 'express';
import ViteExpress from 'vite-express';

const app = express();

app.get('/message', (_, res) => res.send('Hello from express!'));

const server = app.listen(3000, () =>
  console.log('Express listening on port 3000')
);

app.get('/api/test', (req, res) => {
  res.send('WELCOME TO TEST API');
});

// ViteExpress.listen(app, 3000, () => console.log('Server is listening...'));
ViteExpress.bind(app, server);
