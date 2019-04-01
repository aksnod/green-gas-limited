<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Imagegallery.aspx.cs" Inherits="Imagegallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #box {
        height:auto;
        min-height:550px;
        width:1000px;
        border-radius:20px;
        background:-webkit-linear-gradient(#0094ff,#fff);
        box-shadow:3px 3px 35px black inset;
        }       
        #box1 {
        height:auto;
        width:1000px;
        border-radius:20px;
        background:-webkit-linear-gradient(#0094ff,#fff);
        box-shadow:3px 3px 35px black inset;
        display:none;
        }
        .row {
        height:200px;
        width:1000px;
        }
        .col {
        height:152px;
        width:285px;
        float:left;
        margin:15px;
        border:5px double navy;
        border-radius:10px;
        padding:4px;
        box-shadow: 3px 3px 35px black inset;
        -webkit-transition:background 2s,border-radius 2s,border 2s;
        }
        .col:hover {
        background:#8745bb;
        border-radius:20px;
        border:5px dotted #1eeb54;
        -webkit-transition:background 2s,border-radius 2s,
        }
        .imgG {
            height: 150px;
            width: 283px;
            border-radius: 20px;
            border: 1px solid yellow;
        }
        h1 {
        color:skyblue;
        text-shadow:3px 3px 3px black;
        }
        #lnkNP {
        height:35px;
        width:100px;
        padding:4px;
        background:skyblue;
        border-radius:4px;
        border:1px solid black;
        font-weight:bold;
        text-decoration:none;
        color:white;
        position:relative;
        left:900px;
        bottom:50px;
        }
    </style>
    <script>
        function NextPrev()
        {
            var dv1 = document.getElementById("box");
            var dv2 = document.getElementById("box1");
            var lnk = document.getElementById("lnkNP");
            var a = dv1.style.display;
            var b = dv2.style.display;
            if (a == "block" && b == "none") {
                dv1.style.display = "none";
                dv2.style.display = "block";
                lnk.style.background = "yellow";
                lnk.innerHTML = "Next";
            }
            else {
                dv1.style.display = "block";
                dv2.style.display = "none";
                lnk.style.background = "navy";
                lnk.innerHTML = "Previous";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
        <h1><center>Image Gallery</center></h1>
        <div class="row">
            <div class="col"><img src="images/slide/project1 - Copy.jpg" class="imgG"/></div>
            <div class="col"><img src="images/slide/project10 - Copy.jpg" class="imgG"/></div>
            <div class="col"><img src="images/slide/project2 - Copy.jpeg" class="imgG"/> </div>
        </div>        
         <div class="row">
            <div class="col"><img src="images/slide/project3 - Copy.gif"class="imgG" /></div>
            <div class="col"><img src="images/slide/project4.JPG" class="imgG" /></div>
            <div class="col"><img src="images/slide/project5 - Copy.jpg" class="imgG" /></div>
        </div>   
    </div>
    <div id="box1">
        <h1><center>Image Gallery</center></h1>
        <div class="row">
           <div class="col"><img src="images/slide/project3 - Copy.gif"class="imgG" /></div>
            <div class="col"><img src="images/slide/project4.JPG" class="imgG" /></div>
            <div class="col"><img src="images/slide/project5 - Copy.jpg" class="imgG" /></div>
        </div>        
         <div class="row">
              <div class="col"><img src="images/slide/project1 - Copy.jpg" class="imgG"/></div>
            <div class="col"><img src="images/slide/project10 - Copy.jpg" class="imgG"/></div>
            <div class="col"><img src="images/slide/project2 - Copy.jpeg" class="imgG"/> </div>          
        </div>   
    </div>
    <a href="#box" id="lnkNP" onclick="NextPrev()">Next</a>
</asp:Content>

