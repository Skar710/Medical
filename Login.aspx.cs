using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medical
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            String cs = WebConfigurationManager.ConnectionStrings["MEDICALConnectionString"].ConnectionString;
            SqlConnection mycon = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Select * from Customers where Name=@Name AND Password=@Password", mycon);
            cmd.Parameters.AddWithValue("@Name", TextBoxName.Text);
            cmd.Parameters.AddWithValue("@Password", TextBoxPassword.Text);
            bool result = false;
            try
            {
                mycon.Open();
                using (cmd.Connection)
                {
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                        result = true;
                }
                mycon.Close();

                if (result == true)
                {
                    Label1.Text = "Login Successfull";
                    Response.Redirect("Customer.aspx");
                }
                else
                {
                    Label1.Text = "Login Failed";
                }
            }
            catch (Exception ex)
            {
                Label1.Text += ex.Message;
            }
        }

        protected void ButtonSignIn_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View1);
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            String cs = WebConfigurationManager.ConnectionStrings["MEDICALConnectionString"].ConnectionString;
            SqlConnection mycon = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Insert into Customers values(@Name,@Password,@State,@City,@Contact)", mycon);
            cmd.Parameters.AddWithValue("@Name", TextBoxEnterName.Text);
            cmd.Parameters.AddWithValue("@Password", TextBoxConfirm.Text);
            cmd.Parameters.AddWithValue("@State", TextBoxState.Text);
            cmd.Parameters.AddWithValue("@City", TextBoxCity.Text);
            cmd.Parameters.AddWithValue("@Contact", TextBoxContact.Text);
            try
            {
                Label2.Text = "Account Created";
                mycon.Open();
                cmd.ExecuteNonQuery();
                mycon.Close();
                Response.Redirect("Customer.aspx");
            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message;
            }
        }
    }
}