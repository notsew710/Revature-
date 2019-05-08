let script = require ('./script.sh')
let express = require('express');


let app = express();
let port = 8080;

app.use(express.static('./'));

app.get('/', function(request, response) { 
    response.render(''); 
}); 

app.listen(port, function () {
    console.log('server is up');
});


function textReader(str){
for (var i = 0; i <= str.length; i++) {
   if (str.charAt(i) == " ") {
        count ++;
    }
}
return count + 1;
}

console.log(textReader(script));
    
