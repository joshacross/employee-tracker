const express = require('express');

// connecting to mySQL database under db/connection
const db = require('./db/connection');

// pulling in employeeTracker() from index.js file
const employeeTracker = require('./index');

// adding PORT destination and app expression
const PORT = process.env.PORT || 3001;
const app = express();

// middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Telling app to append suffix to look use routes
app.use('/api', employeeTracker);

//Route to handle user requests that are not supported by the app (aka - default response for any other request (not found))
app.use((req, res) => {
    res.status(404).end();
});


// Start server after DB connection + function to start Express.js server on port 3001 
db.connect(err => {
    if (err) throw err;
    console.log('Database connected');
    app.listen(PORT, () => {
        console.log(`Server running on port ${PORT}`);
    });
});