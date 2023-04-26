<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <center><h1><font size="26" face="Impact" color="blue">News About Gaming</font></h1></center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
  padding: 20px;
  font-family: Arial;
}

/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}

h1 {
  font-size: 50px;
  word-break: break-all;
}

.row {
  margin: 10px -16px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
  padding: 8px;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  display: none; /* Hide all elements by default */
}

/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: white;
  padding: 10px;
}

/* The "show" class is added to the filtered elements */
.show {
  display: block;
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}
/*click*/
.btn:hover { 
  background-color: #ddd;
}
/*show all*/
.btn.active {
  background-color: #666;
  color: white;
}


</style>
</head>
  <body>

<!-- MAIN (Center website) -->
<div class="main">

<h1>OUR NEWS</h1>
<hr>

<h2>Platforms</h2>

<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('nature')"> XBOX</button>
  <button class="btn" onclick="filterSelection('cars')"> PS4</button>
  <button class="btn" onclick="filterSelection('people')">PC</button>
</div>

<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column nature">
    <div class="content">
      <img src="https://images1.calcalist.co.il/PicServer3/2020/03/17/978327/5_lm.jpg" alt="Mountains" style="width:100%">
      <h4>NEW XBOX SERIES X</h4>
      <p>Is it be the next demigod console? we will buy and see...</p>
    </div>
  </div>
  <div class="column nature">
    <div class="content">
    <img src="https://news.xbox.com/en-us/wp-content/uploads/sites/2/2020/04/XGP_PC_ComingSoon_1920x1080.jpg?resize=1200%2C675" alt="Lights" style="width:100%">
      <h4>XBOX Game Pass</h4>
      <p>Coming soon... new free games</p>
    </div>
  </div>
  <div class="column nature">
    <div class="content">
    <img src="https://images.vgames.co.il/main_image/900_600/main_26501_1572636708.jpeg" alt="Nature" style="width:100%">
      <h4>Overwatch 2</h4>
      <p>Coming soon... OverWatch 2!</p>
    </div>
  </div>
  
  <div class="column cars">
    <div class="content">
      <img src="https://blog.us.playstation.com/tachyon/2019/11/49065766568_62cf233f55_o.jpg" alt="Car" style="width:100%">
      <h4>Black Friday Deals</h4>
      <p>Check out the new PS4 black friday deals</p>
    </div>
  </div>
  <div class="column cars">
    <div class="content">
    <img src="https://vgscoil.b-cdn.net/wp-content/uploads/2019/09/48789830991_8c11f26ee3_h.jpg" alt="Car" style="width:100%">
      <h4>The last of us II</h4>
      <p>New game is out! The last of us 2! Its hot...</p>
    </div>
  </div>
  <div class="column cars">
    <div class="content">
    <img src="https://stealthoptional.com/wp-content/uploads/2020/04/PS5.jpg" alt="Car" style="width:100%">
      <h4>New PS5!</h4>
      <p>Out with gta 6 in 2021</p>
    </div>
  </div>

  <div class="column people">
    <div class="content">
      <img src="https://steamcdn-a.akamaihd.net/steam/apps/582330/header.jpg?t=1557765625" alt="Car" style="width:100%">
      <h4>New israeli game!</h4>
      <p>Check out Warriors-new Israeli game</p>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="https://www.pcgamesn.com/wp-content/uploads/legacy/steam_summer_sale_2013_day_10_alskdn-590x334.png" alt="Car" style="width:100%">
      <h4>Steam Deals</h4>
      <p>New! Steam's best games deals!</p>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="data:image/jpeg;base64,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" alt="Car" style="width:100%">
      <h4>GTX 2080 ti</h4>
      <p>New Graphics card is out!</p>
    </div>
  </div>
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>

<script>
    filterSelection("all")
    function filterSelection(c) {
        var x, i;
        x = document.getElementsByClassName("column");
        if (c == "all") c = "";
        for (i = 0; i < x.length; i++) {
            w3RemoveClass(x[i], "show");
            if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
        }
    }

    function w3AddClass(element, name) {
        var i, arr1, arr2;
        arr1 = element.className.split(" ");
        arr2 = name.split(" ");
        for (i = 0; i < arr2.length; i++) {
            if (arr1.indexOf(arr2[i]) == -1) { element.className += " " + arr2[i]; }
        }
    }

    function w3RemoveClass(element, name) {
        var i, arr1, arr2;
        arr1 = element.className.split(" ");
        arr2 = name.split(" ");
        for (i = 0; i < arr2.length; i++) {
            while (arr1.indexOf(arr2[i]) > -1) {
                arr1.splice(arr1.indexOf(arr2[i]), 1);
            }
        }
        element.className = arr1.join(" ");
    }


    // Add active class to the current button (highlight it)
    var btnContainer = document.getElementById("myBtnContainer");
    var btns = btnContainer.getElementsByClassName("btn");
    for (var i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function () {
            var current = document.getElementsByClassName("active");
            current[0].className = current[0].className.replace(" active", "");
            this.className += " active";
        });
    }
</script>

    
</body>
</asp:Content>


