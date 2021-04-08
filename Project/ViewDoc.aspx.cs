using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ViewDoc : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\agoze\source\repos\Smart Health Prediction Naive Bayes algorithm(Agozirim Emeh)\Smart Health Prediction Naive Bayes algorithm\Project\Project\App_Data\Database.mdf';Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["fname"] != null)
            {



                SqlDataAdapter da = new SqlDataAdapter("Select DId,Name,Address,Mobile,Cate from Doctor", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}