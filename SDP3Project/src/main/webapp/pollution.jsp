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
<center><i><h1 style="text-align:bold;">Pollution Checker</h1></i></center>
<div class="wrapper bg-white rounded">
    <div class="content"> <a href="#"><span class="fa fa-angle-left pr-2"></span></a>
        
        <p class="text-justify h5 pb-2 font-weight-bold">Q) What is the project material made of?</p>
        <div class="options py-3"> <label class="rounded p-2 option">Polymers <input type="radio" name="radio"> <span class="crossmark"></span> </label> <label class="rounded p-2 option"> Composites <input type="radio" name="radio"> <span class="checkmark"></span> </label> <label class="rounded p-2 option"> Ceramics<input type="radio" name="radio"> <span class="crossmark"></span> </label> <label class="rounded p-2 option"> Metals <input type="radio" name="radio"> <span class="crossmark"></span> </label> </div>  </div> 
        <div class="wrapper bg-white rounded">
 <div class="content"> <a href="#"><span class="fa fa-angle-left pr-2"></span></a>
        
        <p class="text-justify h5 pb-2 font-weight-bold">Q) Does it include recycled material?</p>
        <div class="options py-3"> <label class="rounded p-2 option">No <input type="radio" name="radio"> <span class="crossmark"></span> </label> <label class="rounded p-2 option"> Yes <input type="radio" name="radio"> <span class="checkmark"></span> </label>  </div>  </div> 
<div class="wrapper bg-white rounded">
 <div class="content"> <a href="#"><span class="fa fa-angle-left pr-2"></span></a>
        
        <p class="text-justify h5 pb-2 font-weight-bold">Q)  Any toxic substances used?</p>
        <div class="options py-3"> <label class="rounded p-2 option">No <input type="radio" name="radio"> <span class="crossmark"></span> </label> <label class="rounded p-2 option"> Yes <input type="radio" name="radio"> <span class="checkmark"></span> </label>  </div>  </div> 
        
 <div class="content"> <a href="#"><span class="fa fa-angle-left pr-2"></span></a>
        
        <p class="text-justify h5 pb-2 font-weight-bold">Q) Will it create pollution when discarded?</p>
        <div class="options py-3"> <label class="rounded p-2 option">No <input type="radio" name="radio"> <span class="crossmark"></span> </label> <label class="rounded p-2 option"> Yes <input type="radio" name="radio"> <span class="checkmark"></span> </label>  </div>  </div>  
         </div> 
 <div class="content"> <a href="#"><span class="fa fa-angle-left pr-2"></span></a>
        
        <p class="text-justify h5 pb-2 font-weight-bold">Q) Can the materials be recycled?</p>
        <div class="options py-3"> <label class="rounded p-2 option">No <input type="radio" name="radio"> <span class="crossmark"></span> </label> <label class="rounded p-2 option"> Yes <input type="radio" name="radio"> <span class="checkmark"></span> </label>  </div>  </div> 
        
        
    </div> <a href="/pchecker"><input type="submit" value="Submit" class="mx-sm-0 mx-1"></a>
</div>
</body>
</html>