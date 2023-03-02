
//--------------TEST ENV------
const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const port = 3001;
const API_KEY = '2f5ae96c-b558-4c7b-a590-a501ae1c3f6c';


app.use(bodyParser.json());

app.post('/DevOps', (req, res) => {

  
  const apiKey = req.get('X-PARSE-REST-API-Key');
  if (apiKey !== API_KEY) {
    res.status(401).json({ message: 'ERROR: Unauthorized' });
    return;
  }
  const { message, to, from, timeToLifeSec } = req.body;

  console.log(req.body)

  // Log the received data for debugging purposes
  console.log(`Received POST request with message "${message}", to "${to}", from "${from}", and TTL ${timeToLifeSec} seconds`);


  res.status(201).json({ message: `Hello "${to}" your message will be send` });
});


app.all('/DevOps', (req, res) => {
  res.status(405).json({ message: 'ERROR: Method Not Allowed' });
});


//================================

 app.listen(port, () => {

 });
//==================================

module.exports.app =app