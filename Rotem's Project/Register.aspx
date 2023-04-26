<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <center><h1><font size="26" face="Impact" color="blue">Register</font></h1></center>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<script type="text/javascript">
    function ValidteForm() {
        var validUserName = ValidateUsername();
        var validPassword = ValidatePassword();
        var validEmail = ValidateEmail();
        var validFirstName = ValidateFirstName();
        var validLastName = ValidateLastName()
        var validAge = ValidateAge();

        if (!(validUserName && validPassword && validEmail && validFirstName && validLastName && validAge)) {
            alert("Some of the fields are incorrect");
            return false;
        }
        return true;

    }

        function ValidateUsername() {
            var userName = document.getElementById("user");
            var usernameLen = userName.value.length;
            if (usernameLen <2) {
                userName.style.backgroundColor = "red";
                userName.focus();
                document.getElementById("id5").innerHTML = " User Name must contain ch  arcters ";
                return false;
            }
            userName.style.backgroundColor = "transparent";
            document.getElementById("id5").innerHTML = "";
            return true;
        }


    function ValidatePassword() {
        var password = document.getElementById("password");
        var passwordLen = password.value.length;
        if (passwordLen < 5) {
            password.style.backgroundColor = "red";
            password.focus();
            document.getElementById("id4").innerHTML = "Password length must be at list 5 characters ";
            return false;
        }
        password.style.backgroundColor = "transparent";
        document.getElementById("id4").innerHTML = "";
        return true;
    }

    function ValidateEmail() {
        var email = document.getElementById("email");
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!filter.test(email.value)) {
            email.style.backgroundColor = "red";
            email.focus;
            document.getElementById("id6").innerHTML = "Enter a valid email";
            return false;
        }
        email.style.backgroundColor = "transparent";
        document.getElementById("id6").innerHTML = "";
        return true;
    }

    function ValidateFirstName() {
        var fName = document.getElementById("fName");
        var fNameLen = fName.value.length;
        var filter = /[a-zA-Z||א-ת]/;
        if (fNameLen < 2 || (!filter.test(fName.value))) {
            fName.style.backgroundColor = "red";
            fName.focus();
            document.getElementById("id1").innerHTML = "Name must have only characters ";
            return false;
        }
        fName.style.backgroundColor = "transparent";
        document.getElementById("id1").innerHTML = "";
        return true;
    }

    function ValidateLastName() {
        var lName = document.getElementById("lName");
        var lNameLen = lName.value.length;
        var filter = /[a-zA-Z]/;
        if (lNameLen <2 || (!filter.test(lName.value))) {
            lName.style.backgroundColor = "red";
            lName.focus();
            document.getElementById("id2").innerHTML = "Last name must contanin charcters";
            return false;
        }
        lName.style.backgroundColor = "transparent";
        document.getElementById("id2").innerHTML = "";
        return true;
    }

    function ValidateAge() {
        var age = document.getElementById("age");

        if (age.value == "" || age.value <= 0 || age.value > 120) {
            age.style.backgroundColor = "red";
            document.getElementById("id3").innerHTML = " age should be between 0-120";
            age.focus();
            return false;
        }
        age.style.backgroundColor = "transparent";
        document.getElementById("id3").innerHTML = "";
        return true;
    }
        </script> 
        
    <center>


            <form name="form1" id="form1"  method="post" onsubmit="return ValidteForm()"  runat="server" action="#">
            
                <table>
                <tr>
                    <td>First Name:  </td>
                    <td><input type="text" id="fName" name="fName" required/> </td> 
                    <td id ="id1"> </td>
                </tr>
                <tr>
                    <td class="auto-style1"> Last Name: </td>
                    <td class="auto-style1"><input type="text" id="lName" name="lName" required/></td>   
                    <td id ="id2" class="auto-style1"></td>
                </tr>
                 <tr> 
                     <td> User Name: </td>
                     <td><input type="text" id="user" name="userName" /> </td> 
                     <td id ="id5"></td>
                 </tr>
                <tr>
                     <td>Password:</td>
                    <td><input type="password" id="password" name="password" size="20" maxlength="20" /> </td>
                    <td id ="id4"></td>
                <tr>
                     <td>Email:</td>
                    <td><input type="email" id="email" name="email"/> </td> 
                    <td id ="id6"></td>
                    
                </tr>
                <tr>
                    <td> Age: </td>
                    <td><input type="number" id="age" name="age"/> </td>  
                    
                        <td id ="id3"></td>
                   <td id ="id3"></td>
                      <tr>
                    <td><input type="radio" id="genderMale" name="gender" value="male" checked="checked"/>Male
                    <input type="radio" id="genderFemale" name="gender" value="female"/>Female</td>
                </tr>
                <tr>
                    <td><input type="submit"  id="submit" name="submit" value="Register"/>        
                   &nbsp &nbsp &nbsp &nbsp &nbsp
                    <input type="reset" id="reset" name="reset" value="Clean"/></td>
                     </tr>
            
                <tr>
                
                     </br>
                <td><%=form_response %></td> </br>
            </tr>
        </table>
                   
     </form>      
         <br> <marquee direction="right"><img border="0" src="https://thumbs.gfycat.com/AgedSplendidDodo-small.gif" width="300" height="300"></marquee>
 </center>

</asp:Content>
