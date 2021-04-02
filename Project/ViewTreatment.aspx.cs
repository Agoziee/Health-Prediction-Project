using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewTreatment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\agoze\Downloads\Smart Health Prediction Naive Bayes algorithm(Agozirim Emeh)\Smart Health Prediction Naive Bayes algorithm\Project\Project\App_Data\Database.mdf';Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string disease = Request.QueryString["Result"].ToString();
        string str = "Select * from Treatment where Disease = '"+disease+"'";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            txtdiasease.Text = dr[1].ToString();
            txtsymptoms.Text = dr[2].ToString();
            txttreatment.Text = dr[3].ToString();
        }
        con.Close();
    }
}