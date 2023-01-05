const express = require('express');

const app = express();

app.get('/', (req, res) => {
  const data = {
    aaa: 11111
  };
  res.send(data);
});

app.get('/test', (req, res) => {
  const data = {
    name: 11111,
    age: 12,
    phone: '18899992222',
    address: '成都市高新区'
  };
  res.send(data);
});

app.listen(3000, ()=> {
  console.log(`Example app listening on localhost:3000`);
});