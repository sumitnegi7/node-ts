
import { Router } from 'express';

export const api = Router();

type Payload = {
  message: string,
};

let payload: Payload = {
    "message": "Hello brother  👶 "
};

api.get('/', (_req, res) => {
  res.send(payload);
});