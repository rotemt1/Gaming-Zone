using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    public string form_response = " ", selectQuery = "", userName, password, fName, lName, email, gender;
    int age = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql_command;
        if (IsPostBack)
        {
            userName = Request.Form["userName"];
            password = Request.Form["password"];
            fName = Request.Form["fName"];
            lName = Request.Form["lName"];
            email = Request.Form["email"];
            if (Request.Form["age"] != "")
                age = Int32.Parse(Request.Form["age"]);
            gender = Request.Form["gender"];
            selectQuery = "select * from Users where userName='" + userName + "';";
            bool isUserExist = MyAdoHelper.IsExist(selectQuery);
            if (!isUserExist)
            {
                sql_command = "insert into Users values( '" + fName + "','" + lName + "','" + userName + "','" + password + "','" + email + "','" + age + "','" + gender + "')";
                int x = MyAdoHelper.RowsAffected(sql_command);
                if (x == 1)
                    form_response = "<font color=\"green\"> Successful insertion";
                else
                    Response.Write("Unsuccessful insertion");
            }
            else
                form_response = "<font color=\"red\"> There is already user name :" + userName;


        }
    }
}