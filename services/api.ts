// services/api.js
import axios from 'axios';

const api = axios.create({
  baseURL: 'http://localhost:8000/api', // Laravel API ka URL
  headers: {
    'Content-Type': 'application/json',
  },
});

export const signup = (data) => api.post('/signup', data);
export const signin = (data) => api.post('/signin', data);
export const getUser = (token) =>
  api.get('/user', { headers: { Authorization: `Bearer ${token}` } });
export const logout = (token) =>
  api.post('/logout', {}, { headers: { Authorization: `Bearer ${token}` } });
