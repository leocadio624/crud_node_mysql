const express = require('express');
const path = require('path');
const app = express();

//settings
app.set('port', process.env.PORT || 3000);
app.set('view engine', 'ejs');
app.set('views', )

app.listen(app.get('port'), () =>{
    console.log('servidor iniciado');
});