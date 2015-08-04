//credit: http://hawksworx.com/blog/adding-a-static-comments-system-to-my-jekyll-build/

//build package.json file with 'npm init'

// run with "gulp comment"

var gulp = require('gulp'); //npm install gulp
var http = require('http'); //node already has it
var gravatar = require('gravatar'); //npm install gravatar
var yaml = require('yamljs'); //npm install yamljs
var fs = require('fs'); //node already has it

gulp.task("default", function() { console.log("run with 'gulp comment'"); });

// Get comments from Poole
gulp.task("comments", function() {

  var options = {
    hostname: 'pooleapp.com',
    port: 80,
    path: '/data/{API_SECRET_KEY}',
    method: 'GET'
  };

  http.get(options, function(res) {
    var body = '';
    res.on('data', function(chunk) {
        body += chunk;
    });
    res.on('end', function() {
      var comments = JSON.parse(body);
      console.log(comments);

      // add gravatar image links if available
      for (var i = 0; i < comments.sessions.length; i++) {
        comments.sessions[i].avatar = gravatar.url(comments.sessions[i].email, {s: '50', r: 'pg', d: '404'});
      }

      // convert the json to yaml and save it for jekyll to use.
      var ymlText = yaml.stringify(comments);
      fs.writeFile('_data/comments.yml', ymlText, function(err) {
        if(err) {
          console.log(err);
        } else {
          console.log("Comments data saved.");
        }
      });

    });
  }).on('error', function(e) {
    console.log("Got error: ", e);
  });

});
