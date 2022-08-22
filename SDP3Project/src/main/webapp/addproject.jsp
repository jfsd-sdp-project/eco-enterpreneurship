<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up Form</title>
        <link rel="stylesheet" href="https://codepen.io/gymratpacks/pen/VKzBEp#0">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <style>
*, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
}

form {
  max-width: 300px;
  margin: 10px auto;
  padding: 10px 20px;
  background: #f4f7f8;
  border-radius: 8px;
}

h1 {
  margin: 0 0 30px 0;
  text-align: center;
}

input[type="text"],
input[type="password"],
input[type="date"],
input[type="datetime"],
input[type="email"],
input[type="number"],
input[type="search"],
input[type="tel"],
input[type="time"],
input[type="url"],
textarea,
select {
  background: rgba(255,255,255,0.1);
  border: none;
  font-size: 16px;
  height: auto;
  margin: 0;
  outline: 0;
  padding: 15px;
  width: 100%;
  background-color: #e8eeef;
  color: #8a97a0;
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: 30px;
}

input[type="radio"],
input[type="checkbox"] {
  margin: 0 4px 8px 0;
}

select {
  padding: 6px;
  height: 32px;
  border-radius: 2px;
}

button {
  padding: 19px 39px 18px 39px;
  color: #FFF;
  background-color: #4bc970;
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 100%;
  border: 1px solid #3ac162;
  border-width: 1px 1px 3px;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}

fieldset {
  margin-bottom: 30px;
  border: none;
}

legend {
  font-size: 1.4em;
  margin-bottom: 10px;
}

label {
  display: block;
  margin-bottom: 8px;
}

label.light {
  font-weight: 300;
  display: inline;
}

.number {
  background-color: #5fcf80;
  color: #fff;
  height: 30px;
  width: 30px;
  display: inline-block;
  font-size: 0.8em;
  margin-right: 4px;
  line-height: 30px;
  text-align: center;
  text-shadow: 0 1px 0 rgba(255,255,255,0.2);
  border-radius: 100%;
}

@media screen and (min-width: 480px) {

  form {
    max-width: 480px;
  }
}
.container {
  width: 200px;
  height: 200px;
  overflow: auto;
  overflow-x: hidden;
}
</style>
    </head>
    <body>
      <div class="row">
    <div class="col-md-12">
      <form method="post" action="/submitproject" modelAttribute="form">
        <h1> Business Details </h1>
        
        <fieldset>
          
          <legend><span class="number">1</span> Your Basic Info</legend>
        
          <label for="name">Name:</label>
          <input type="text" id="name" name="name" path="name">
        
          <label for="email">Email:</label>
          <input type="email" id="mail" name="email">
       
          <label for="qualification">Qualification:</label>
          <input type="text" id="qualification" name="qualification">
        
          <label>Age:</label>
          <input type="radio" id="under_20" value="under_20" name="age"><label for="under_20" class="light">Under 20</label><br>
          <input type="radio" id="over_20" value="over_20" name="age"><label for="over_20" class="light">Over 20</label>
          
        </fieldset>
        <fieldset>  
        
          <legend><span class="number">2</span> Your Profile</legend>
         <label for="bio">Project Name:</label>
          <input type="text" name="bio" path="bio">
        
       
        
         <label for="job">Project Type:</label>
          <select id="job" name="job">
            <optgroup label="Web">
              <option value="frontend_developer">Front-End Developer</option>
              <option value="php_developer">PHP Developer</option>
              <option value="python_developer">Python Developer</option>
              <option value="rails_developer">Rails Developer</option>
              <option value="web_designer">Web Designer</option>
              <option value="wordpress_developer">Wordpress Developer</option>
            </optgroup>
            <optgroup label="Mobile">
              <option value="android_developer">Android Developer</option>
              <option value="ios_developer">IOS Developer</option>
              <option value="mobile_designer">Mobile Designer</option>
            </optgroup>
            <optgroup label="Business">
              <option value="business_owner">Business Owner</option>
              <option value="freelancer">Freelancer</option>
            </optgroup>
          </select>
          
          <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script src="https://mozilla.github.io/pdf.js/build/pdf.js"></script>
<script src="js/extract.js"></script>
<label>Breif Details:</label>

<textarea name="briefdetails" rows="4" cols="100">
</textarea>
<br>

<label>Business details:</label>

  <textarea name="bdetails" rows="4" cols="100">
  </textarea>
<br><br>
 <button type="submit">Upload</button>

          
         </fieldset>

       
       
        
       </form>
        </div>
      </div>
      
    </body>
</html>