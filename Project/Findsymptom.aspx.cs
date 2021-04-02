using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Findsymptom : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\agoze\Downloads\Smart Health Prediction Naive Bayes algorithm(Agozirim Emeh)\Smart Health Prediction Naive Bayes algorithm\Project\Project\App_Data\Database.mdf';Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["fname"] != null)
            {
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Delete From Final", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        cmd = new SqlCommand("Delete From Keyword", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        cmd = new SqlCommand("Update Dise Set Flag = '0'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();


        SqlDataAdapter da = new SqlDataAdapter("Select DName from Dise Where Sym LIKE '%" + TextBox1.Text + "%'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int row = ds.Tables[0].Rows.Count;

        if (row != 0)
        {
            cmd = new SqlCommand("Update Dise Set Flag='1' Where Sym LIKE '%" + TextBox1.Text + "%'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            cmd = new SqlCommand("Insert into Final Values ('" + TextBox1.Text.ToLower() + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            sym c = new sym();
            c.getSym();

            da = new SqlDataAdapter("Select distinct Sym from Keyword", con);
            ds = new DataSet();
            da.Fill(ds);
            row = ds.Tables[0].Rows.Count;
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("--Select--");
            Label4.Text = "<br/><br/>";
            for (int i = 0; i < row; i++)
            {
                Label4.Text += "\n" + ds.Tables[0].Rows[i][0].ToString() + ",";
                DropDownList1.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            }
            Panel4.Visible = true;
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('No Disease Found, Please check your Symptom');", true);
        }
    }

    public static bool Contains(Array a, string val)
    {
        return Array.IndexOf(a, val) != -1;
    }

    public void getSym()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select Sym from Dise ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int row = ds.Tables[0].Rows.Count;
        string sys = "";
        SqlCommand cmd;
        int i = 0;
        Start:
        while (i < row)
        {
            sys = ds.Tables[0].Rows[i][0].ToString();
            string[] values = sys.Split(',');

            int val = values.Length;
            string d1 = "";
            for (int i2 = 0; i2 < val; i2++)
            {
                cmd = new SqlCommand("Select * from Final where Sym = '" + values[i2].ToLower() + "+1'", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                d1 = values[i2];
                if (dr.HasRows)
                {
                    con.Close();

                }
                else
                {
                    con.Close();
                    cmd = new SqlCommand("Insert into Keyword values ('" + values[i2] + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    i++;
                    goto Start;
                }
            }
            i++;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "--Select--")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Select a Symptom');", true);
        }
        else
        {
            SqlCommand cmd = new SqlCommand("Delete From Keyword", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            cmd = new SqlCommand("Update Dise Set Flag = '0'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            SqlDataAdapter da = new SqlDataAdapter("Select DName from Dise Where Sym LIKE '%" + TextBox1.Text + "%'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int row = ds.Tables[0].Rows.Count;

            if (row != 0)
            {
                cmd = new SqlCommand("Insert into Final Values ('" + DropDownList1.Text.ToLower() + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                SqlDataAdapter da1 = new SqlDataAdapter("Select Sym from Final", con);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                int row1 = ds1.Tables[0].Rows.Count;


                string s = "Update Dise Set Flag='1' Where ",s1="";
                for (int i = 0; i < row1; i++)
                {
                    s1 += " Sym LIKE '%" + ds1.Tables[0].Rows[i][0].ToString() + "%' And ";
                }
                s1 = s1.Remove(s1.Length - 4);

                string com = s + s1;
                cmd = new SqlCommand(com, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                sym c = new sym();
                c.getSym();

                da = new SqlDataAdapter("Select Sym from Keyword", con);
                ds = new DataSet();
                da.Fill(ds);
                row = ds.Tables[0].Rows.Count;
                DropDownList1.Items.Clear();
                DropDownList1.Items.Add("--Select--");
                Label4.Text = "<br/><br/>";
                for (int i = 0; i < row; i++)
                {
                    Label4.Text += "<br/>" + ds.Tables[0].Rows[i][0].ToString() + "<br/>";
                    DropDownList1.Items.Add(ds.Tables[0].Rows[i][0].ToString());
                }
                Panel4.Visible = true;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Select a Symptom');", true);
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da1 = new SqlDataAdapter("Select Sym from Final", con);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        int row1 = ds1.Tables[0].Rows.Count;
        
        string s = "Select DName,Type From Dise Where ", s1 = "";
        for (int i = 0; i < row1; i++)
        {
            s1 += " Sym LIKE '%" + ds1.Tables[0].Rows[i][0].ToString() + "%' And ";
        }
        s1 = s1.Remove(s1.Length - 4);

        string com = s + s1;
        da1 = new SqlDataAdapter(com, con);
        ds1 = new DataSet();
        da1.Fill(ds1);
        row1 = ds1.Tables[0].Rows.Count;

        if (row1 != 0)
        {
            Panel5.Visible = true;
            TextBox6.Text = "";
            for (int i = 0; i < row1; i++)
            {
                TextBox6.Text += ds1.Tables[0].Rows[i][0].ToString() + "\n";
            }

            Label13.Text = ds1.Tables[0].Rows[0][1].ToString();

            SqlDataAdapter da = new SqlDataAdapter("Select Sym from Final", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int cou = ds.Tables[0].Rows.Count;
            string sys = "";

            for (int i = 0; i < cou; i++)
            { 
                sys +=ds.Tables[0].Rows[i][0].ToString()+","; 
            }
            sys.Remove(sys.Length - 1);

            SqlCommand cmd = new SqlCommand("Insert into history(UId,Sym,Disease,type,Date) Values ('" + Session["id"].ToString() + "','" + sys + "','"+TextBox6.Text+"','"+Label13.Text+"','"+DateTime.Now.ToString()+"') ", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            
            
            da = new SqlDataAdapter("Select Name,Address,Mobile from Doctor where Cate Like '%" + ds1.Tables[0].Rows[0][1].ToString() + "%'", con);
            ds = new DataSet();
            da.Fill(ds);
            int row = ds.Tables[0].Rows.Count;
            Panel5.Visible = true;
            Panel4.Visible = false;
            if (row != 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                GridView1.Visible = true;
                Label15.Visible = false;


            }
            else
            {
                Label15.Visible = true;
                GridView1.Visible = false;
            }
        }
    }
}