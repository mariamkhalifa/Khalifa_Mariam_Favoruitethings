const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, Image, Title FROM tbl_mysteries";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { mysteries : result });
    })
})

router.get('/:id', (req,res) => {
    console.log('at the user route');
    console.log(req.params.id);
    let query = `SELECT * FROM tbl_favouritethings WHERE mystery_ID = "${req.params.id}"`;
    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }
        console.log(result);
        })
        res.json(result[0]);
})

module.exports = router;