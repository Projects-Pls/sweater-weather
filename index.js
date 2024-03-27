const app = require('express')();
require('dotenv').config();
const PORT = 1337;

app.listen(PORT, () => {
  console.log(
    `listening on PORT: ${PORT}, Server is live on http://localhost:${PORT}.`
  );
});

//TO BE REPLACED WITH ROUTING
app.get('/', (req, res) => {
  res.send('WELCOME TO HOMEPAGE');
});
