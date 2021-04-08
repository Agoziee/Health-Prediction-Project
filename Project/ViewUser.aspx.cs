using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ViewUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\agoze\source\repos\Smart Health Prediction Naive Bayes algorithm(Agozirim Emeh)\Smart Health Prediction Naive Bayes algorithm\Project\Project\App_Data\Database.mdf';Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["fname"] != null)
            {
                string s = "SELECT UserId,Name,Address,Mobile,Email,Sex,Age FROM Cust";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Labelhistory.Visible = true;
        SqlCommand cmd = new SqlCommand("Select UserId from Cust where UserId='" + TextBox1.Text + "'", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            con.Close();
            string s = "SELECT * FROM history where UId='" + TextBox1.Text + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da1.Fill(ds);
            int i = ds.Tables[0].Rows.Count;
            if (i > 0)
            {
                GridView2.DataSource = ds;
                GridView2.DataBind();
                Labelrecord.Visible = false;
            }
            else
            {
                Labelrecord.Visible = true;
            }


        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('This Name is not Registered');", true);
        }
    }
}