using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SearchDoctor : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\agoze\source\repos\Smart Health Prediction Naive Bayes algorithm(Agozirim Emeh)\Smart Health Prediction Naive Bayes algorithm\Project\Project\App_Data\Database.mdf';Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["fname"] != null)
            {
            }
            else
            {
                Response.Redirect("Logout.aspx");
            }
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "Name")
        {
            Button1.Visible = true;
            Button2.Visible = false;
            Button3.Visible = false;
        }
        else if (DropDownList1.Text == "Type")
        {
            Button2.Visible = true;
            Button1.Visible = false;
            Button3.Visible = false;
        }
        else if (DropDownList1.Text == "Address")
        {
            Button3.Visible = true;
            Button2.Visible = false;
            Button1.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "SELECT DId,Name,Address,Mobile,Cate FROM Doctor where Name Like '%" + TextBox1.Text + "%'";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string s = "SELECT DId,Name,Address,Mobile,Cate FROM Doctor where Cate Like '%" + TextBox1.Text + "%'";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string s = "SELECT DId,Name,Address,Mobile,Cate FROM Doctor where Address Like '%" + TextBox1.Text + "%'";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}