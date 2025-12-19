using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
   public void Mycon()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ToString());
        con.Open();
    }
   public void FillGrid()
   {
       Mycon();
       cmd = new SqlCommand("RegistrionSelect", con);
       cmd.CommandType = CommandType.StoredProcedure;
       da = new SqlDataAdapter(cmd);
       ds = new DataSet();
       da.Fill(ds);
       GridView1.DataSource = ds;
       GridView1.DataBind();
       con.Close();
   }
    protected void Page_Load(object sender, EventArgs e)
    {
        FillGrid();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Mycon();
        cmd = new SqlCommand("RegistrionInsertUpdate", con);
        cmd.CommandType = CommandType.StoredProcedure;
        if (TextBox4.Text != "")
        {
            cmd.Parameters.AddWithValue("@Rid", TextBox4.Text);
        }
        cmd.Parameters.AddWithValue("@nm", TextBox1.Text.Trim());
        cmd.Parameters.AddWithValue("@em", TextBox2.Text.Trim());
        cmd.Parameters.AddWithValue("@ps", TextBox3.Text.Trim());
        if (RadioButton1.Checked == true)
        {
            cmd.Parameters.AddWithValue("@gen", RadioButton1.Text);
        }
        else if (RadioButton2.Checked== true)
        {
            cmd.Parameters.AddWithValue("@gen", RadioButton2.Text);
        }
        string path = "";
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Img/" + FileUpload1.FileName));
            path = "~/Img/" + FileUpload1.FileName;
        }
        else
        {
            path = Image1.ImageUrl;
        }
        cmd.Parameters.AddWithValue("@img", path);
        SqlParameter ret = new SqlParameter("@retval", SqlDbType.TinyInt);
        ret.Direction = ParameterDirection.Output;
        cmd.Parameters.Add(ret);
        cmd.ExecuteNonQuery();
        byte val = Convert.ToByte(cmd.Parameters["@retval"].Value.ToString());
    
        con.Close();
        if (val == 0)
        {
                    Response.Write("SuccessFull InsertData");
        }
        else if (val == 2)
	{
		    Response.Write("SuccessFull UpdateData");
	}
        else
        {
            Response.Write("This EmailId Is AllReady EXISTS");

        }
        FillGrid();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        Mycon();
        cmd = new SqlCommand("RegistrionSelect", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Rid", TextBox4.Text);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        if(ds.Tables[0].Rows.Count > 0)
        {
            TextBox1.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["Pasword"].ToString();
            if (ds.Tables[0].Rows[0]["Gender"].ToString() == "Male")
            {
                RadioButton1.Checked = true;
            }
            else
            {
                RadioButton2.Checked = true;
            }
            Image1.ImageUrl = ds.Tables[0].Rows[0]["img"].ToString();

        }
        con.Close();
        Button1.Text = "Update Now";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Mycon();
        cmd = new SqlCommand("RegistrionDelete", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Rid", TextBox4.Text);
        cmd.ExecuteNonQuery();
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        con.Close();
        Response.Write("SuccessFully Delete Your Data");

        FillGrid();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}