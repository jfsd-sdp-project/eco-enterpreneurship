<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<style>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);
/* @import url(https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.css); */
@import url(https://use.fontawesome.com/releases/v5.2.0/css/all.css);
@import url(https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.4.0/animate.min.css);
@import url(https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css);
html {
  box-sizing: border-box;
}

*,
*:before,
*:after {
  box-sizing: inherit;
}

body {
  font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  background: #fdfffc;
  font-size: 16px;
  color: #011627;
  min-height: 100vh;
  /*Force the header at the top, section at the middle and footer at the bottom*/
  display: flex;
  flex-direction: column;
  -webkit-font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
}
main {
  flex: 1;
}

a {
  color: #2ec4b6;
  text-decoration: none;
}

a:hover,
a:focus {
  /*TODO: Colors needs to be changed*/
  color: #27a498;
  text-decoration: none;
  /*text-shadow: 0 0 1.6em rgba(255,255,255, 0.9);*/
}

a:focus {
  outline: none;
}

b {
  font-weight: 700;
}

hr {
  margin-top: 1rem;
  margin-bottom: 1rem;
  border: 0;
  border-top: 1px solid rgba(0, 0, 0, 0.1);
}

p {
  margin: 1em 0;
  line-height: 1.33;
}
.section-container {
  width: 100%;
  text-align: center;
}
/* Use this when there is only 1 section and you want it to be vertically aligned */
#section-main {
  flex: 1;
  max-width: 100%;
  max-height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 0;
}
#force-full-height {
  flex: 1;
  max-width: 100%;
  max-height: 100%;
}
section .w800 {
  align-self: flex-start;
  max-width: 800px;
  width: 100%;
}
.flex {
  display: flex;
}
.spacer {
  height: 2em;
}
.hide {
  display: none;
}
.spacer-v {
  margin-left: 1em;
}

/*FILE UPLOAD*************************/
.inputfile {
  width: 0.1px;
  height: 0.1px;
  opacity: 0;
  overflow: hidden;
  position: absolute;
  z-index: -1;
}

.inputfile + label {
  text-overflow: ellipsis;
  white-space: nowrap;
  cursor: pointer;
  display: inline-block;
  overflow: hidden;
  font-size: 16px;
  font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  outline: none;
  font-weight: 400;
  /*   color: #434a54; */
  color: rgba(67, 74, 84, 0.6);
  border-color: #aab2bd;
  display: inline-block;
  padding: 6px 12px;
  line-height: 1.42857143;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
  transition: background-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
  /*   width: 100%; */
}

.inputfile:focus + label,
.inputfile.has-focus + label,
.inputfile + label:hover {
  background-color: #022c4d;
  border-color: #022c4d;
  color: #fdfffc;
}

.inputfile + label * {
  /* pointer-events: none; */
  /* in case of FastClick lib use */
}

.inputfile + label i {
  margin-right: 0.25em;
}

/*HEADERS*****************************/

h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: inherit;
  font-weight: 700;
  line-height: 1.1;
  color: inherit;
}
h1,
h2,
h3 {
  margin-top: 34px;
  margin-bottom: 17px;
}
h4,
h5,
h6 {
  margin-top: 17px;
  margin-bottom: 17px;
}
h1 {
  font-size: 3.64em;
}
h2 {
  font-size: 3.07em;
}
h3 {
  font-size: 2.22em;
}
h4 {
  font-size: 1.35em;
}
h5 {
  font-size: 1.285em;
}
.title {
  text-shadow: 2px 2px 2px rgba(255, 255, 255, 1);
}
.title span {
  color: #e71d36;
  font-size: 0.77em;
}
h6 {
  font-size: 1em;
  font-weight: 400;
}

/*ALERTS*****************************/
.alert {
  padding: 0.75rem 1.25rem;
  margin-bottom: 1rem;
  border: 1px solid transparent;
  border-radius: 0.25rem;
  line-height: 1.5;
  text-align: left;
}
.alert-link {
  /* All links inside alerts */
  font-weight: 700;
}
.alert-heading {
  margin-top: 0;
}
.alert-primary {
  color: #004085;
  background-color: #cce5ff;
  border-color: #b8daff;
}
.alert-primary .alert-link {
  color: #002752;
}
.alert-success {
  color: #155724;
  background-color: #d4edda;
  border-color: #c3e6cb;
}
.alert-success .alert-link {
  color: #0b2e13;
}
.alert-danger {
  color: #721c24;
  background-color: #f8d7da;
  border-color: #f5c6cb;
}
.alert-danger .alert-link {
  color: #491217;
}
.alert-warning {
  color: #856404;
  background-color: #fff3cd;
  border-color: #ffeeba;
}
.alert-warning .alert-link {
  color: #533f03;
}

section {
  /* border: 1px solid green; */
  margin-top: 1.5em;
  padding: 0 1em;
}

/*BADGES*****************************/
.badge {
  display: inline-block;
  font-size: 0.8em;
  border: 1px solid #011627;
  padding: 0.2em 0.5em;
  color: white;
  background: #011627;
  cursor: default;
}

/*BUTTONS*****************************/
button,
.btn {
  border: 1px solid transparent;
  color: #fdfffc;
  background-color: #011627;
  border-color: #011627;
  padding: 7px 14px;
  font-weight: 400;
  line-height: 1.42857143;
  touch-action: manipulation;
  cursor: pointer;
  border-radius: 4px;
  font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 16px;
}
button:disabled {
  opacity: 0.65;
}
button:disabled:hover {
  cursor: not-allowed;
}

.btn.big,
button.big {
  font-size: 1.33em;
  padding: 9px 18px;
}
.btn.w100,
button.w100 {
  width: 100%;
}

button:hover,
button:focus,
.btn:hover,
.btn:focus {
  background-color: #022c4d;
  border-color: #022c4d;
  color: #fdfffc;
  outline: none;
}

.btn-blue {
  background-color: #2489c5;
  border-color: #2489c5;
}

.btn-blue:hover,
.btn-blue:focus {
  background-color: #1e72a4;
  border-color: #1e72a4;
}

.btn-aqua {
  background-color: #2ec4b6;
  border-color: #2ec4b6;
}

.btn-aqua:hover,
.btn-aqua:focus {
  background-color: #27a498;
  border-color: #27a498;
}

.btn-red {
  background-color: #e71d36;
  border-color: #e71d36;
}

.btn-red:hover,
.btn-red:focus {
  background-color: #c8152b;
  border-color: #c8152b;
}

.btn-pink {
  background-color: #e35583;
  border-color: #e35583;
}
.btn-pink:hover,
.btn-pink:focus {
  background-color: #dd336a;
  border-color: #dd336a;
}

.btn-orange {
  background-color: #ff9f1c;
  border-color: #ff9f1c;
}

.btn-orange:hover,
.btn-orange:focus {
  background-color: #f48d00;
  border-color: #f48d00;
}

i {
  /*   margin: 0 0.45em; */
}
i.left {
  margin-right: 0.45em;
}
i.right {
  margin-left: 0.45em;
}

/*TOOLTIP*****************************/
/*FORMS*******************************/

fieldset {
  /* margin-bottom: 1em; */
}
form .split {
  display: flex;
}
form .split > div {
  padding: 0 0.5em;
  width: 100%;
}
form .split > .equal {
  flex: 1 0 0;
}
form .split > div:first-child {
  padding-left: 0;
}
form .split > div:last-child {
  padding-right: 0;
}

.field {
  /* border: 1px solid green; */

  margin: 0 auto 1.33em;
}

label {
  display: block;
  margin-bottom: 0.625em;
  font-weight: 700;
}

input:not([type="checkbox"]):not([type="radio"]):not([type="submit"]):not([type="file"]),
textarea {
  font-size: 16px;
  font-family: "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  outline: none;
  color: #434a54;
  border-color: #aab2bd;
  display: block;
  padding: 6px 12px;
  line-height: 1.42857143;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
  width: 100%;
}

input:not([type="checkbox"]):not([type="radio"]):not([type="submit"]):not([type="file"]):focus,
input:not([type="checkbox"]):not([type="radio"]):not([type="submit"]):not([type="file"]):hover,
textarea:focus,
textarea:hover {
  border-color: #2ec4b6;
}

.cbox-wrapper,
.rbutton-wrapper {
  display: inline-flex;
  align-items: center;
  margin-right: 1.33em;
}

label.cbox,
label.rbutton {
  display: inline-block;
  /*Margin Required otherwise label is not aligned. Why?*/

  margin: 0 0 0 0.5em;
  cursor: pointer;
  font: 16px/22px "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
}

form .actions {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
/*CALENDAR****************************/

.flatpickr-wrapper {
  display: inline-block;
  position: relative;
  /* width: 800px; */
}

.flatpickr-wrapper input {
  cursor: pointer;
  position: relative;
  z-index: 1;
}

.flatpickr-calendar {
  background-color: white;
  /* color: #2489c5; */

  color: #011627;
  border-radius: 4px;
  position: absolute;
  top: 100%;
  left: 0;
  margin-top: 0.5em;
  opacity: 0;
  padding: 1em;
  border: 1px solid #ccc;
  max-height: 0;
  z-index: 0;
  overflow: hidden;
  -webkit-transition: opacity 550ms cubic-bezier(0.075, 0.82, 0.165, 1);
  transition: opacity 550ms cubic-bezier(0.075, 0.82, 0.165, 1);
  -webkit-transition-timing-function: cubic-bezier(0.075, 0.82, 0.165, 1);
  transition-timing-function: cubic-bezier(0.075, 0.82, 0.165, 1);
}

.flatpickr-calendar:hover {
  border-color: #2ec4b6;
}

.open .flatpickr-calendar,
.inline .flatpickr-calendar {
  max-height: 19em;
  z-index: 100;
  opacity: 1;
}

.inline .flatpickr-calendar {
  position: static;
}

.flatpickr-months {
  /* color: black; */
  /*default 2px*/
  /* padding: 0.5em; */

  text-align: center;
  font-size: 1em;
}

.flatpickr-prev-month,
.flatpickr-next-month {
  text-decoration: none;
  padding: 0 0.667em;
  cursor: pointer;
}

.flatpickr-prev-month {
  float: left;
}

.flatpickr-next-month {
  float: right;
}

.flatpickr-current-month {
  padding: 0 0.5em;
  font-weight: normal;
  font-size: 1.285em;
}

.flatpickr-current-month span {
  font-weight: 700;
}

.flatpickr-prev-month:hover,
.flatpickr-next-month:hover {
  color: #1e72a4;
}

.flatpickr-calendar table {
  border-collapse: collapse;
  padding: 0;
  width: 100%;
}

.flatpickr-calendar thead {
  /* font-size: 16px */
}

.flatpickr-calendar th,
.flatpickr-calendar td {
  width: 14.28571%;
}

.flatpickr-calendar th {
  text-align: center;
  padding: 18px 5px 5px 5px;
  font-weight: bold;
  /* color: #011627; */
}

.flatpickr-calendar td span {
  margin-left: 0.35em;
}

.flatpickr-calendar .slot {
  cursor: pointer;
}

.flatpickr-day {
  border: 1px solid transparent;
  display: block;
  height: 80px;
  /* line-height: 32px; */

  padding: 0;
  /* text-align: center; */

  width: 32px;
  border-radius: 150px;
  margin: 1px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.flatpickr-calendar td:hover .flatpickr-day {
  background: #2489c5;
  border-color: #2489c5;
  color: white;
}

.today .flatpickr-day {
  border-color: #2489c5;
}

td.today:hover .flatpickr-day {
  border-color: #2489c5;
  background-color: #2489c5;
  color: white;
}

.selected .flatpickr-day,
td.selected:hover .flatpickr-day {
  background-color: #2489c5;
  color: white;
  border-color: #2489c5;
}

.flatpickr-calendar .disabled,
.flatpickr-calendar .disabled .flatpickr-day,
.flatpickr-calendar .disabled:hover .flatpickr-day {
  background: transparent;
  border-color: transparent;
  color: #ccc;
  /* cursor: default; */

  cursor: not-allowed;
}

/*SITE HEADER****************************/

header {
  background: #efefef;
  background: linear-gradient(90deg, #43cea2 10%, #185a9d 90%);
  color: #fdfffc;
}

header a {
  color: #fdfffc;
  /* opacity: 0.8; */
}

header a:hover {
  color: rgba(89, 33, 51, 0.618);
}

.header-container {
  display: flex;
}

.header-container > div {
  padding: 1em;
  font-size: 1.285em;
  /* font-size: 1.33em; */
  font-weight: 700;
  line-height: 1.1;
  text-rendering: optimizeLegibility;
  -webkit-font-smoothing: antialiased;
  flex-basis: 0;
  flex-grow: 1;
}
.header-container .left {
}
.header-container .center {
}
.header-container .right {
  text-align: right;
}

#header-user-info {
  font-weight: normal;
}

/*NAVIGATION**************************/

/*STATUS////////////////////////////*/
#status-track {
  margin: 1.816em 0.1em 1.816em 0.1em;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  text-transform: uppercase;
  font-size: 1em;
}

#status-track > a {
  text-align: center;
  /* line-height: 3; */
  flex: 2;
  -webkit-flex: 2;
  -ms-flex: 0px 2;
  position: relative;
  display: block;
}

#status-track .complete {
  /* color: #fe8125; */
  /* color: #00c6ff; */
  color: #307eaf;
  /* color: #2ec4b6; */
  color: #e71d36;
  /* color: #ff9f1c; */
  /* color: #0072ff; */
  color: #011627;
}
#status-track .current {
  color: #011627;
  color: #e71d36;
}
#status-track .future {
  color: rgba(1, 22, 39, 0.5);
}

#status-track > * * {
  /* display: block; */
}

#status-track .lbl,
#status-track .sub {
  font-weight: 700;
  text-transform: uppercase;
  /* letter-spacing: 1px; */
  padding-top: 0.25em;
  /* margin: 0.4em 0; */
  display: block;
}
#status-track .sub {
  font-size: 0.816em;
}

#status-track i.fa {
  font-size: 1.667em;
}

#status-track > *:first-child {
  /*text-align: left;
  flex: 1;*/
  /*-webkit-flex: 1;
  -ms-flex: 0px 1;*/
  /* background: green; */
}
#status-track > *:not(:first-child)::before {
  display: block;
  content: "";
  position: absolute;
  left: -50%;
  right: 50%;
  top: 0.5em;
  border-top: 0.2em solid;
  margin: 0 2.1em;
}
#status-track > *:nth-child(2)::before {
  margin-left: 2.5em;
}
#status-track > *:last-child {
  /*text-align: right;
  flex: 1;
  -webkit-flex: 1;
  -ms-flex: 0px 1;*/
}
#status-track > *:last-child::before {
  /*right: 0.5em;
  left: -100%;*/
}

/*NOT A PART OF UI KIT****************/

#all-swatches-container {
  display: flex;
}

.swatches-container {
  margin-bottom: 0.625em;
  padding-left: 1em;
  padding-right: 1em;
  width: 200px;
}

.swatches {
  border-radius: 4px;
  background-color: #fff;
  width: 100%;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
  overflow: hidden;
}

.colors-display {
  display: flex;
}

.colors-display > div {
  width: 50%;
  height: 4em;
}

.colors-info {
  padding: 8px 12px;
}

.colors-info h6 {
  margin: 0;
  margin-bottom: 5px;
  font-weight: 700;
}

.colors-info p {
  font-size: 0.85em;
}

/*TABLE //////////////////////////////////*/
.uitable > thead > tr {
  border-bottom: 1px solid #ccc;
  font-weight: 700;
}
.uitable > thead > tr > th {
  padding: 16px;
}
.uitable > thead > tr > th:first-child {
  border-right: 1px solid #ccc;
}
.uitable > tbody > tr {
  border-bottom: 1px solid #ccc;
  transition: 0.5s;
}
.uitable > tbody > tr:last-child {
  border-bottom: none;
}
.uitable > tbody > tr:hover {
  background: #efefef;
}
.uitable > tbody > tr > td {
  padding: 16px;
  vertical-align: middle;
}
.uitable > tbody > tr > td:first-child {
  border-right: 1px solid #ccc;
}

/*PACKAGES ///////////////////////////////*/
ul.plc {
  display: flex;
  flex-wrap: wrap;
  list-style-type: none;
}
/* Package container  */
li.pc {
  border: 2px solid #2489c5;
  /*   border: 10px solid blue;
  border-image: url(https://www.w3schools.com/cssref/border.png) 20 round; */
  margin: 0.667em 0.667em 0.667em 0.667em;
  border-radius: 4px;
  background: none;
  color: #2489c5;
  cursor: pointer;
  /*   padding: 1em; */
  font-weight: 700;
  width: 1000px;
  transition: 0.2s;
  list-style-type: none;
  text-align: center;
  transition: 0.2s;
}

li.pc .art {
  background: #018fff;
  color: white;
  padding: 1.2em 0 0 0;
  transition: 0.2s;
}

li.pc .art i {
  font-size: 4.44em;
}

li.pc h6 {
  margin: 0;
  padding: 0.7em;
  font-weight: 700;
  color: white;
  transition: 0.2s;
}
li.pc h3 {
  margin: 0;
  padding: 0.33em;
  background: #39b5ff;
  color: white;
  transition: 0.2s;
}
li.pc p {
  font-weight: normal;
  background: #65cafc;
  margin: 0;
  padding: 0.7em;
  color: white;
  font-size: 0.8em;
  transition: 0.2s;
}
li.pc.is-selected,
li.pc:hover {
  /*   background: #338fff;
  color: white; */
}
li.pc.is-selected,
li.pc:hover {
  border: 1px solid #e35583;
}

li.pc:hover .art,
li.pc.is-selected .art {
  background: #dd336a;
}
li.pc:hover h3,
li.pc.is-selected h3 {
  background: #e35583;
}
li.pc:hover p,
li.pc.is-selected p {
  background: #ea81a3;
}

li.pc:hover h6,
li.pc:hover h3,
li.pc:hover p {
  /*   background: none; */
}

.package_name {
  font-size: 2em;
  text-transform: uppercase;
  text-align: center;
  letter-spacing: 0.09em;
}
.package_amount {
  font-weight: 400;
  margin-top: 0.667em;
  text-align: center;
}
.hide {
  display: none;
}

/*FOOTER /////////////////////////////////*/
footer {
  margin-top: 2em;
  padding: 1.618em 0;
  background: #2489c5;
}

.footer-inner {
  display: flex;
  justify-content: center;
  /* padding-top: 2em; */
}
footer a {
  color: #fdfffc;
  padding: 1em;
  font-weight: bold;
}
footer a:hover {
  /* color: #f1a9c0; */
  color: rgba(89, 33, 51, 0.618);
  /* color: green; */
}

/*SPACING /////////////////////////////////*/
.mb-0,
.my-0 {
  margin-bottom: 0 !important;
}
.mt-0 {
  margin-top: 0 !important;
}
.vspace {
  padding: 0.5em;
}

</style>
</head>

<main style="text-align:center">


  <!-- Price Tables -->
  <section >
    <h5 class="title">UnSold Projects</h5>
    
    <div class="field">
    
        <ul class="plc">
    <% int i=1; %>
	<c:forEach var="form" items="${formdata}">
          <li class="pc is-selected">
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
				  
			</table>
          </li>
          <%i=i+1;%>
      </c:forEach>
      
        </ul>
      </div>
  </section>
</main>
</html>