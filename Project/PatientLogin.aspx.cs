using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class PatientLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\agoze\source\repos\Smart Health Prediction Naive Bayes algorithm(Agozirim Emeh)\Smart Health Prediction Naive Bayes algorithm\Project\Project\App_Data\Database.mdf';Integrated Security=True");
        
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "Select Pass from Cust where UserId='" + id.Text + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string pas = dr[0].ToString();
            if (pass.Text == pas)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Login Sucessful');", true);
                Session["fname"] = "user";
                Session["id"] = id.Text;
                Response.Redirect("FindTreatment.aspx");

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Wrong Password');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Wrong ID');", true);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}