using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class FindTreatment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\agoze\Downloads\Smart Health Prediction Naive Bayes algorithm(Agozirim Emeh)\Smart Health Prediction Naive Bayes algorithm\Project\Project\App_Data\Database.mdf';Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
   {
        if (Session["fname"] != "")
        {
            if (!IsPostBack)
            {
                string str = "Select * from Cust where Userid = '" + Session["id"].ToString() + "'";
                SqlDataAdapter da = new SqlDataAdapter(str, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                int i = ds.Tables[0].Rows.Count;
                if (i > 0)
                {
                    lblage.Text = ds.Tables[0].Rows[0][5].ToString();
                    lblbmi.Text = ds.Tables[0].Rows[0][8].ToString();
                }
            }
        }
        else
        {
            Response.Redirect("Logout.aspx");
        }
    }


    protected void btninro_Click(object sender, EventArgs e)
    {
        Panelsymp1.Visible = false;
        Panelintro.Visible = false;
        Panelsymp2.Visible = false;
        Panelsymp3.Visible = false;
        Panel2.Visible = true;
    }

    protected void btndata_Click(object sender, EventArgs e)
    {
      
        Panelsymp1.Visible = true;
        Panelintro.Visible = false;
        Panelsymp2.Visible = false;
        Panelsymp3.Visible = false;
        Panel2.Visible = false;
    }

    protected void btnsymp1_Click(object sender, EventArgs e)
    {
        Panelsymp1.Visible = false;
        Panelintro.Visible = false;
        Panelsymp2.Visible = true;
        Panelsymp3.Visible = false;
        Panel2.Visible = false;
    }

    protected void btnsymp2_Click(object sender, EventArgs e)
    {
        Panelsymp1.Visible = false;
        Panelintro.Visible = false;
        Panelsymp2.Visible = false;
        Panelsymp3.Visible = true;
        Panel2.Visible = false;
    }
    


    protected void btnanalyse_Click(object sender, EventArgs e)
    {


        DataTable table = new DataTable();
        table.Columns.Add("Dname");
        table.Columns.Add("Headache", typeof(double));
        table.Columns.Add("Fatique", typeof(double));
        table.Columns.Add("Nausea", typeof(double));
        table.Columns.Add("Vomiting", typeof(double));
        table.Columns.Add("Chills", typeof(double));
        table.Columns.Add("Cough", typeof(double));
        table.Columns.Add("SoreThroat", typeof(double));
        table.Columns.Add("StiffyNose", typeof(double));
        table.Columns.Add("Redness", typeof(double));
        table.Columns.Add("Irritation", typeof(double));
        table.Columns.Add("Itching", typeof(double));
        table.Columns.Add("Rash", typeof(double));
        table.Columns.Add("StomachCramps", typeof(double));
        table.Columns.Add("Stomach Pain", typeof(double));
        table.Columns.Add("StrainingStools", typeof(double));
        table.Columns.Add("Dehydration", typeof(double));
        table.Columns.Add("Age", typeof(double));
        table.Columns.Add("BMI", typeof(double));

        string str = "select * from TrainingData";
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {





            table.Rows.Add(ds.Tables[0].Rows[i][1].ToString(),
                Convert.ToDouble(ds.Tables[0].Rows[i][2].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][3].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][4].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][5].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][6].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][7].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][8].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][9].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][10].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][11].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][12].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][13].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][14].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][15].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][16].ToString()),
                Convert.ToDouble(ds.Tables[0].Rows[i][17].ToString()),
            Convert.ToDouble(ds.Tables[0].Rows[i][18].ToString()),
            Convert.ToDouble(ds.Tables[0].Rows[i][19].ToString()));
        }

        Classifier classifier = new Classifier();
        classifier.TrainClassifier(table);
        string ans = "";
        string ertyjh = Rbchills.Text;
        try
        {   

            ans = classifier.Classify(new double[]
                {
                    Convert.ToDouble(Rbheadache.Text),
                    Convert.ToDouble(Rbfatique.Text),
                    Convert.ToDouble(Rbnausea.Text),
                    Convert.ToDouble(Rbvomiting.Text),
                    Convert.ToDouble(Rbchills.Text),
                    Convert.ToDouble(Rbcough.Text),
                    Convert.ToDouble(Rbsorethroat.Text),
                    Convert.ToDouble(Rbstiffynose.Text),
                    Convert.ToDouble(Rbredness.Text),
                    Convert.ToDouble(Rbirritation.Text),
                    Convert.ToDouble(Rbitching.Text),
                    Convert.ToDouble(Rbrash.Text),
                    Convert.ToDouble(Rbstomachcramps.Text),
                    Convert.ToDouble(Rbstomachpain.Text),
                    Convert.ToDouble(Rbstrainigstools.Text),
                    Convert.ToDouble(Rbdehydration.Text),
                    Convert.ToDouble(lblage.Text),
                    Convert.ToDouble(lblbmi.Text)
                   
                });
            lblresult.Text = ans.ToString();
            Panel1.Visible = true;
        }
        catch (Exception ep)
        {
            ans = ep.ToString();
            Label2.Text = ans.ToString();
            Panel1.Visible = true;
        }

    }



    protected void btntreatment_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewTreatment.aspx?Result="+lblresult.Text+"");
    }
}