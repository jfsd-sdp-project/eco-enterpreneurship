<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

  <meta charset="UTF-8">
  
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png">
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">

<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">


  <title>CodePen - CSS Grid Responsive Image Gallery</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
  
<style>
@import url("https://fonts.googleapis.com/css?family=Arvo");
body,
html {
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  width: 100%;
  height: 100%;
  background: #f5f4f4;
  font-size: 13px;
  font-family: "Arvo", monospace;
}
@supports (display: grid) {
  body,
html {
    display: block;
  }
}

.message {
  border: 1px solid #d2d0d0;
  padding: 2em;
  font-size: 1.7vw;
  box-shadow: -2px 2px 10px 0px rgba(68, 68, 68, 0.4);
}
@supports (display: grid) {
  .message {
    display: none;
  }
}

.section {
  display: none;
  padding: 2rem;
}
@media screen and (min-width: 768px) {
  .section {
    padding: 4rem;
  }
}
@supports (display: grid) {
  .section {
    display: block;
  }
}

h1 {
  font-size: 2rem;
  margin: 0 0 1.5em;
}

.grid {
  display: grid;
  grid-gap: 30px;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  grid-auto-rows: 150px;
  grid-auto-flow: row dense;
}

.item {
  position: relative;
  display: flex;
  font-size:15px;
  flex-direction: column;
  justify-content: flex-end;
  box-sizing: border-box;
  background: #0c9a9a;
  color: #fff;
  color: #fff;
  background-size: cover;
  background-position: center;
  box-shadow: -2px 2px 10px 0px rgba(68, 68, 68, 0.4);
  transition: transform 0.3s ease-in-out;
  cursor: pointer;
  counter-increment: item-counter;
}
.item:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: black;
  opacity: 0.3;
  transition: opacity 0.3s ease-in-out;
}
.item:hover {
  transform: scale(1.05);
}
.item:hover:after {
  opacity: 0;
}
.item--medium {
  grid-row-end: span 2;
}
.item--large {
  grid-row-end: span 3;
}
.item--full {
  grid-column-end: auto;
}
@media screen and (min-width: 768px) {
  .item--full {
    grid-column: 1/-1;
    grid-row-end: span 2;
  }
}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>

  
  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<body translate="no">
  <div class="message">
  Sorry, your browser does not support CSS Grid. 😅
</div>
<section class="section">
  <h1 style="text-align:center">Existing Projects</h1>
  <div class="grid">
  <% int i=1; %>
  <c:forEach var="form" items="${formdata}">

          
    <div class="item">
    
			<table style="width:100%">
				  <tr>
				    <th>Name:</th>
				    <td>${form.name}</td>
				  </tr>
				  <tr>
				    <th>Age:</th>
				    <td>${form.age}</td>
				  </tr>
				  
				  <tr>
				    <th>email:</th>
				    <td>${form.email}</td>
				  </tr>
				  
				  <tr>
				    <th>Job:</th>
				    <td>${form.job}</td>
				  </tr>
				  
				  <tr>
				    <th>Qualification:</th>
				    <td>${form.qualification}</td>
				  </tr>
				  <tr>
				    <th>Project Name:</th>
				    <td>${form.bio}</td>
				  </tr>
				  
				  <tr>
				    <th>Brief Details:</th>
				    <td>${form.briefdetails}</td>
				  </tr>
				  
				  <tr><td>  &nbsp;</td></tr>
			</table>
          
    </div>
          <%i=i+1;%>
          
      </c:forEach>
    
  
  
  
  




 
</section></body></html>