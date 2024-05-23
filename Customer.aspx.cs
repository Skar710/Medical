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
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRead_Click(object sender, EventArgs e)
        {
            CheckBoxList1.Items.Clear();

            String cs = WebConfigurationManager.ConnectionStrings["MEDICALConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Select * From Products", con);
            SqlDataReader reader;

            try
            {
                con.Open();
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    ListItem newItem = new ListItem();
                    newItem.Text = (string)reader["Name"];
                    newItem.Value = reader["Id"].ToString();
                    CheckBoxList1.Items.Add(newItem);
                }
                reader.Close();
            }
            catch (Exception ex)
            {
                LabelError.Text = "Error Reading List Of Prduct Names";
                LabelError.Text = ex.Message;
            }
            finally { con.Close(); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View1);

            String cs1 = WebConfigurationManager.ConnectionStrings["MEDICALConnectionString"].ConnectionString;
            SqlConnection con1 = new SqlConnection(cs1);
            SqlCommand cmd1;
            SqlDataReader reader1;
            int total_price = 0;
            int estimated_total;

            try
            {
                con1.Open();
                foreach (ListItem lst in CheckBoxList1.Items)
                {
                    if (lst.Selected)
                    {
                        cmd1 = new SqlCommand("Select * from Products Where Id =" + (lst.Value) + "", con1);  //CheckBoxList1.SelectedValue
                        reader1 = cmd1.ExecuteReader();
                        while (reader1.Read())
                        {
                            total_price += Convert.ToInt32(reader1["Price"]);
                        }
                        reader1.Close();
                    }
                }

                estimated_total = total_price + 100;
                LabelPrice.Text = total_price.ToString();
                Label2.Text = estimated_total.ToString();
            }
            catch (Exception ex)
            {
                LabelPrice.Text = "Error Fetching Price ";
                LabelPrice.Text += ex.Message;
            }
            finally
            {
                con1.Close();
            }
        }

        protected void ButtonBuy_Click(object sender, EventArgs e)
        {
            Session["Price"] = Label2.Text;
            Response.Redirect("Payment.aspx");
        }
    }
}