# Node.js

Enables us to run JS as an application.
Don't need the browser to run JS, can run it directly from the shell.
This allows us to do backend. Back then, there weren't any backend that is in JS so people had to learn different languages for the backend.

https://learnxinyminutes.com/ is a good website for learning languages.

## Some JavaScript

### Creating Objects in JS.
```js
var obj = {};
  obj.a = "bla bla";
  obj.b = "na na"
```

### JSON Javascript
```js
var obj = {};
obj.a = "hello";
JSON.stringify(obj); // obj { "a" : "hello" }

JSON.parse('obj'); // obj becomes { a: "hello" }
```

### Callbacks

Think of all things in JS as objects. So you can assign variables like this.
```js
var add = function (a,b) {return a + b};
```

Can pass functions in as an argument. Can either use stored variables or pass in
as an anonymous function.
```js
function foo(a, b, callback) {  // Declaration
  return callback(a,b);
}

foo(1,2, (a,b) =>{              // Call
    return a + b;
});
```

## Node.js

Running a simple server on your localhost. Run these in the terminal after installing Node.js.

* `npm init` which creates some JSON file.
* `npm install --save express` which creates some node_modules folder.
* Create a 'something.js' file in the parent directory. NOT inside the node_modules folder. Put this inside.

```js
const express = require('express');
const bodyParser = require('body-parser');

var app = express();
app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.send("asdf");
});


app.get('/bad', (req, res) => {
  var a = {};
  a.motto = "this is a supercool motto";

  res.json(a);

});

app.post('/', (req, res) => {
  res.send("Hi " + req.body.name);
});

app.listen(3000);
```
* `node something.js` in terminal
* Go to http://localhost:3000 to see your website.

This is for running it on background that will update upon save.
1. `npm install --save body-parser`
2. `sudo npm install -g nodemon`
3. `nodemon something.js`
4. `rs` to restart nodemon.

### Syntaxes
* `--save` installs it to the local directory.
* `--global` installs globally.
* npm = node package manager
