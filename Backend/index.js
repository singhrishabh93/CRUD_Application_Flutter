// This will Start my Server
const express = require("express");

const app = express();

app.use(express.json());

app.use(express.urlencoded({
    extended : true
}));

const personData = [];

app.listen(2000, () => {
    console.log("Connected to Server at 2000");
})

//post method here

app.post("/api/add_user",(req,res)=>{ //api endpoint

    console.log("Result", req.body);

    const pdata = {
        "id" : personData.length+1,
        "pname" : req.body.pname,
        "pemail" : req.body.pemail,
        "pdesg" : req.body.pdesg
    };


    personData.push(pdata);
    console.log("Final", pdata);

    res.status(200).send({
        "status_code" : 200,
        "message" : "Person Data Added Successfully",
        "person": pdata
    });


})


//get method here

