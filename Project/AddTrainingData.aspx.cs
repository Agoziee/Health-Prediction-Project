using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddTrainingData : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\agoze\Downloads\Smart Health Prediction Naive Bayes algorithm(Agozirim Emeh)\Smart Health Prediction Naive Bayes algorithm\Project\Project\App_Data\Database.mdf';Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Add"] == "Add")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Data Added Susscessfully.')", true);
            Session["Add"] = "";
        }
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

    protected void btnadd_Click(object sender, EventArgs e)
    {
        int id;
        string sel = "select top 1 Id from TrainingData order by Id desc";
        SqlDataAdapter da = new SqlDataAdapter(sel, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int i = ds.Tables[0].Rows.Count;
        if (i > 0)
        {
            id = Convert.ToInt32(ds.Tables[0].Rows[0][0]) + 1;
        }
        else
        {
            id = 101;
        }


        string ins = "Insert into TrainingData (Id,Dname,Headache,Fatique,Nausea,Vomiting,Chills,Cough,SoreThroat,StiffyNose,Redness,Irritation,Itching,Rash,StomachCramps,StomachPain,Strainingstools,Dehydration,Age,BMI) values ('" + id + "','" + txtdisease.Text + "','" + Rbheadache.Text + "','" + Rbfatique.Text + "','" + Rbnausea.Text + "','" + Rbvomiting.Text + "','" + Rbchills.Text + "','" + Rbcough.Text + "','" + Rbsorethroat.Text + "','" + Rbstiffynose.Text + "','" + Rbredness.Text + "','" + Rbirritation.Text + "','" + Rbitching.Text + "','" + Rbrash.Text + "','" + Rbstomachcramps.Text + "','" + Rbstomachpain.Text + "','" + Rbstrainigstools.Text + "','" + Rbdehydration.Text + "','" + txtage.Text + "','" + txtbmi.Text + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Session["add"] = "Add";
       
        Response.Redirect("AddTrainingData.aspx");
    }
}