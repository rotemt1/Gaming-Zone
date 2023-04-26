using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    public string response = "", userName, password, selectQuery = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {

            userName = Request.Form["userName"];
            password = Request.Form["password"];


            selectQuery = "select * from Users where userName='" + userName + "' and password='" + password + "';";
            bool x = MyAdoHelper.IsExist(selectQuery);
            if (x)
            {
                MasterPage.logedInUsr = userName;
                Session["userName"] = userName;
                Response.Redirect("Home.aspx");
                  

            }
            else
                response = "You are not signed in, please register";
        }

    }
}