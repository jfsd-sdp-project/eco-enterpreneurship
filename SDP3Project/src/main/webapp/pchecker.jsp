<html>
<head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box
}

body {
    font-family: 'Open Sans', sans-serif;
    background: #eee
}

.wrapper {
    max-width: 600px;
    margin: 20px auto
}

.content {
    padding: 20px;
    padding-bottom: 50px
}

a:hover {
    text-decoration: none
}

a,
span {
    font-size: 15px;
    font-weight: 600;
    color: rgb(50, 141, 245);
    padding-bottom: 30px
}

p.text-muted {
    font-size: 14px;
    font-weight: 500;
    margin-bottom: 5px
}

b {
    font-size: 15px;
    font-weight: bolder
}

.option {
    display: block;
    height: 50px;
    background-color: #f4f4f4;
    position: relative;
    width: 100%
}

.option:hover {
    background-color: #e8e8e8;
    cursor: pointer
}

.option input {
    position: absolute;
    opacity: 0;
    cursor: pointer
}

.checkmark,
.crossmark {
    position: absolute;
    top: 10px;
    right: 10px;
    height: 22px;
    width: 22px;
    background-color: #f4f4f4;
    border-radius: 2px;
    padding: 0
}

.option:hover input~.checkmark,
.option:hover input~.crossmark {
    background-color: #e8e8e8
}

.option input:checked~.checkmark {
    background-color: #79d70f
}

.option input:checked~.crossmark {
    background-color: #ec3838
}

.checkmark:after,
.crossmark:after {
    content: "\2714";
    position: absolute;
    background-color: #79d70f;
    display: none;
    color: #fff;
    padding-left: 4px;
    width: 22px;
    font-size: 16px
}

.crossmark:after {
    content: "\2715";
    background-color: #ec3838
}

.option input:checked~.checkmark:after,
.option input:checked~.crossmark:after {
    display: block;
    transition: 100ms ease-out 1s
}

p.mb-4 {
    border-left: 3px solid green
}

p.my-2 {
    border-left: 3px solid red
}

input[type="submit"] {
    width: 100%;
    height: 50px;
    background-color: #229aeb;
    border: none;
    outline: none;
    color: #fff;
    font-weight: 600;
    cursor: pointer
}

input[type="submit"]:hover:focus {
    border: none;
    outline: none;
    background-color: #229bebad
}
</style>
</head>
<body>
<center><h1 style="text-align:bold;">Feedback</h1></center>
<div class="wrapper bg-white rounded">
    <div class="content"> <a href="#"><span class="fa fa-angle-left pr-2"></span></a>
        
        <p class="text-justify h5 pb-2 font-weight-bold">Q) What is the project material made of?</p><br>
        <div> <b style="color:green">Feedback</b>
        <p > Using composites is very ecofriendly. It is degredable when used. If no toxic substances are used it results in an excellent ides. To make it ecofriendly it should cause little or no pollution. </p> 
</div></div>
         <div class="content"> <a href="#"><span class="fa fa-angle-left pr-2"></span></a>
        <p class="text-justify h5 pb-2 font-weight-bold">Q) Does it include recycled material?</p><br>
        <div> <b style="color:green">Feedback</b>
        <p > Using composites is very ecofriendly. It is degredable when used. If no toxic substances are used it results in an excellent ides. To make it ecofriendly it should cause little or no pollution. </p>
</div></div>
<div class="wrapper bg-white rounded">
 <div class="content"> <a href="#"><span class="fa fa-angle-left pr-2"></span></a>
        
        <p class="text-justify h5 pb-2 font-weight-bold">Q)  Any toxic substances used?</p><br>
        <div> <b style="color:green">Feedback</b>
        <p > Using composites is very ecofriendly. It is degredable when used. If no toxic substances are used it results in an excellent ides. To make it ecofriendly it should cause little or no pollution. </p>
</div></div>
        
 <div class="content"> <a href="#"><span class="fa fa-angle-left pr-2"></span></a>
        
        <p class="text-justify h5 pb-2 font-weight-bold">Q) Will it create pollution when discarded?</p><br>
        <div> <b style="color:green">Feedback</b>
        <p > Using composites is very ecofriendly. It is degredable when used. If no toxic substances are used it results in an excellent ides. To make it ecofriendly it should cause little or no pollution. </p>
</div></div>
      
 <div class="content"> <a href="#"><span class="fa fa-angle-left pr-2"></span></a>
        
        <p class="text-justify h5 pb-2 font-weight-bold">Q) Can the materials be recycled?</p><br>
        <div> <b style="color:green">Feedback</b>
        <p > Using composites is very ecofriendly. It is degredable when used. If no toxic substances are used it results in an excellent ides. To make it ecofriendly it should cause little or no pollution. If the materials are not ecofriendly then the idea should be reconsidered </p> 
</div></div>
        
    <a href="/wantsell"> <input type="submit" value="Next" class="mx-sm-0 mx-1"></a>
</div>

</div> 
         
</div>
</body>
</html>