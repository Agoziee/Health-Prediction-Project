using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CReg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='C:\Users\agoze\source\repos\Smart Health Prediction Naive Bayes algorithm(Agozirim Emeh)\Smart Health Prediction Naive Bayes algorithm\Project\Project\App_Data\Database.mdf';Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd;
        string com = "select top 1 UserId From Cust ORDER BY UserId Desc;";
        con.Open();
        cmd = new SqlCommand(com, con);
        object count = cmd.ExecuteScalar();
        if (count != null)
        {
            int i = Convert.ToInt32(count);
            i++;
            TextBox1.Text = i.ToString();
        }
        else
        {
            TextBox1.Text = "1110";
        }
        con.Close();
    }

    public string check()
    { 
        if (TextBox2.Text == "")
        {
            return "Name";
        }
        else if (TextBox3.Text == "")
        {
            return "Address";
        }
        else if (TextBox4.Text == "")
        {
            return "Mobile No";
        }
        else if (TextBox5.Text == "")
        {
            return "Email";
        }
        else if(TextBox8.Text=="")
        {
            return "Year Of Birth";
        }
        else if (TextBox6.Text == "")
        {
            return "Password";
        }
        return "OK";
    }

    public string passCheck()
    { 
        if(TextBox6.Text!=TextBox7.Text)
        {
            return "wrong";
        }
        return "OK";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (check() == "OK")
        {
            if (passCheck() == "OK")
            {
                double weight = Convert.ToDouble(txtweight.Text);
                double height = Convert.ToDouble(txtheight.Text);
                double finalBmi;
                if (weight > 0 && height > 0)
                {
                    finalBmi = (weight / (height * height)) * 10000;
                    
                }
                else
                {
                     finalBmi = 0;
                }


                string ins = "Insert into Cust (UserId,Name,Address,Pass,Email,Mobile,Sex,Age,BMI) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + DropDownList1.Text + "','" + TextBox8.Text + "','" + finalBmi + "')";
                SqlCommand cmd = new SqlCommand(ins, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("Login.aspx");
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('User Registered With User Id : "+TextBox1.Text+"');", true);
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Password Not Matched ');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter " + check() + "');", true);
        }
    }
}