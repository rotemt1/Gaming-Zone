<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
          <title>Gaming Zone</title>
       <img class="pic" border="0" alt="W3Schools" src="https://static.thenounproject.com/png/192141-200.png" width="60" height="60">
   
    <center>
        
        <h1>
        <font face="Impact" size="60">Gaming Zone</font>
        </h1>
        </font>
       
      <marquee direction="right"><p><font face="Impact" size="60" color="blue">The official Gaming Center of Israel</font></p></marquee>
      </center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <bottomleft>
        <center> <font face="Impact" size="40" color="red">Welcome to my gaming website, please register and have fun!</font></center>
<br><br><br><br><br><br><br><br><br><br><marquee><img border="0" src="https://media3.giphy.com/media/l4FGtP1BqMzxz8Gbu/giphy.gif" width="300" height="300"></marquee>

</bottomleft>
    
    <body>


    <p id="demo"></p>

    <script>
    var d = new Date();
        document.getElementById("demo").innerHTML = d;
        demo.style.color = "white";
    </script>
</asp:Content>

