<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Quiz.aspx.cs" Inherits="mivne" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <center><h1><font size="26" face="Impact" color="blue">Gaming Quiz</font></h1></center>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function CheckResults() {
            if (document.getElementById("ans1a").checked) {
                document.getElementById("p1a").innerHTML = "True";
                document.getElementById("p1b").innerHTML = "";
            }
            else {
                document.getElementById("p1a").innerHTML = "";
                document.getElementById("p1b").innerHTML = "False";
            }

            if (document.getElementById("ans2a").checked) {
                document.getElementById("p2a").innerHTML = "True";
                document.getElementById("p2b").innerHTML = "";
            }
            else {
                document.getElementById("p2a").innerHTML = "";
                document.getElementById("p2b").innerHTML = "False";
            }

            if (document.getElementById("ans3a").checked) {
                document.getElementById("p3a").innerHTML = "True";
                document.getElementById("p3b").innerHTML = "";
            }
            else {
                document.getElementById("p3a").innerHTML = "";
                document.getElementById("p3b").innerHTML = "False";
            }

            if (document.getElementById("ans4a").checked) {
                document.getElementById("p4a").innerHTML = "True";
                document.getElementById("p4b").innerHTML = "";
            }
            else {
                document.getElementById("p4a").innerHTML = "";
                document.getElementById("p4b").innerHTML = "False";
            }

            if (document.getElementById("ans5a").checked) {
                document.getElementById("p5a").innerHTML = "True";
                document.getElementById("p5b").innerHTML = "";
            }
            else {
                document.getElementById("p5a").innerHTML = "";
                document.getElementById("p5b").innerHTML = "False";
            }

            if (document.getElementById("ans6a").checked) {
                document.getElementById("p6a").innerHTML = "True";
                document.getElementById("p6b").innerHTML = "";
            }
            else {
                document.getElementById("p6a").innerHTML = "";
                document.getElementById("p6b").innerHTML = "False";
            }
        }


    </script>
     <center>
        <form id="mivneForm" actuin="#" onsubmit="CheckResults();return false">
           
                    <mark><font size="5" face="Impact" color="red">    1.	The most played game ever is:                                 
                <br />      <input type="radio" id="ans1a" name="q1" value="ok"/>CrossFire
               <br />     <input type="radio" id="ans1b" name="q1" value="pro"/>Tetris
               <br />    <input type="radio" id="ans1c" name="q1" value="raktzemach"/>Minecraft 
                   <br />  <input type="radio" id="ans1d" name="q1" value="col"/>GTA V
                   <p id="p1a" style = "color:lawngreen"></p> 
                   <p id="p1b" style ="color:red"></p> 
 
                <br />     
               2.	The game who got 10/10 grade in GameSpot is:  
             <br />   <input type="radio" id="ans2a" name="q2" value="mito"/> Uncharted 4: A Thief's End
             <br />   <input type="radio" id="ans2b" name="q2" value="tzito"/>GTA V
              <br />    <input type="radio" id="ans2c" name="q2" value="cloroflast"/>Red Dead Redemption 2
             <br />    <input type="radio" id="ans2d" name="q2" value="clorofil"/>Forza Horizon 4
              <p id="p2a" style = "color:lawngreen"></p> 
                   <p id="p2b" style ="color:red"></p>  
                 
                <br />     
                  3.	The most expensive platform is:  
                <br />   <input type="radio" id="ans3a" name="q3" value="savewater"/>Nintendo Switch
              <br />      <input type="radio" id="ans3b" name="q3" value="piruk"/>PS4
             <br />   <input type="radio" id="ans3c" name="q3" value="savehomo" />XBOX ONE
             <br />       <input type="radio" id="ans3d" name="q3" value="bniya"/>PC
              <p id="p3a" style = "color:lawngreen"></p> 
                   <p id="p3b" style ="color:red"></p> 
                   
                <br />   
                   4.	The Most Realistic Graphics PC game is: 
              <br />  <input type="radio" id="ans4a" name="q4" value="krom"/>Metro Exodus
             <br />        <input type="radio" id="ans4b" name="q4" value="dofen"/>Deus Ex: Mankind Divided
             <br />       <input type="radio" id="ans4c" name="q4" value="halulit"/>Hitman 2
             <br />   <input type="radio" id="ans4d" name="q4" value="dna"/>Far Cry 5
              <p id="p4a" style = "color:lawngreen"></p> 
                   <p id="p4b" style ="color:red"></p> 
                    
                         <br />      
                      5.	The most used console ever is:
               <br />   <input type="radio" id="ans5a" name="q5" value="baal"/> PS2
              <br />     <input type="radio" id="ans5b" name="q5" value="haidak"/> PS4
              <br />   <input type="radio" id="ans5c" name="q5" value="tzemach"/> XBOX 360
              <br />    <input type="radio" id="ans5d" name="q5" value="koltshuvot"/> XBOX ONE
            <p id="p5a" style = "color:lawngreen"></p> 
                   <p id="p5b" style ="color:red"></p>  
                   
                <br />    
                     6.	The most emotional game is:
                  <br />   <input type="radio" id="ans6a" name="q6" value="bniyathel"/>The Last Of Us
                <br />   <input type="radio" id="ans6b" name="q6" value="pirukhel"/>GTA V
               <br />   <input type="radio" id="ans6c" name="q6" value="foto"/>Undertale
                <br />  <input type="radio" id="ans6d" name="q6" value="ein"/>Zelda
                    <p id="p6a" style = "color:lawngreen"></p> 
                   <p id="p6b" style ="color:red"></p> 

            
                           <br /><br/>      
                          <input type="submit" id="submit"   value="Send"/>
                            &nbsp &nbsp &nbsp &nbsp &nbsp
                             <input type="reset" id="reset" name="reset" value="Clear"/>
           </form>   
         </font></mark>
   
    </center>
</asp:Content>

