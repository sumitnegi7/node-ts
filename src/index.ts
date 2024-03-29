import express from 'express';
import { api } from './api';

const app = express();
const PORT = 8080;

// Body parsing Middleware
app.use(express.static('public'));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use('/api', api);

app.listen(PORT)
  .on('listening', () => {
    console.log(`Listening on the  http://localhost:${PORT}`);
  });