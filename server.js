const express = require('express')
const app = express()
const path = require('path')
const PORT = 3000
const mysql = require('mysql')
const session = require('express-session')

const connection = mysql.createConnection({
    host: 'localhost',
    user: "root",
    password: "",
    database: 'cpd'
})

const preference = {
    connection
}

const bodyParser = require('body-parser')
app.use(bodyParser.urlencoded({ extended: true, parameterLimit: 1000000  }))
app.use(express.static('public'))

app.set('views', path.join(__dirname, 'public'))
app.set('view engine', 'ejs')


app.get('/', (request, response) => {
    const data = {
        submitted:false }
    response.render('index', data)
})

connection.connect(err => {
    if (err) {
        console.log('Error to connect to database ' + err)
        return false
    }
    app.listen(PORT, () => console.log('Server running on port ' + PORT))
})