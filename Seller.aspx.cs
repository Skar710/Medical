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
    public partial class Seller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonInsertView_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(ViewInsert);
        }

        protected void ButtonUpdateView_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(ViewUpdate);
        }

        protected void ButtonDeleteView_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(ViewDelete);
        }

        protected void ButtonDelete_Click(object sender, EventArgs e) //delete
        {
            String cs = WebConfigurationManager.ConnectionStrings["MEDICALConnectionString"].ConnectionString;
            SqlConnection mycon1 = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Delete from Products where Id = " + TextBox5.Text + " ", mycon1);
            try
            {
                LabelDelete.Text = "Record Deleted!!";
                mycon1.Open();
                cmd.ExecuteNonQuery();
                mycon1.Close();

            }
            catch (Exception err)
            {
                LabelDelete.Text = err.Message;
            }
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e) //update
        {
            String cs = WebConfigurationManager.ConnectionStrings["MEDICALConnectionString"].ConnectionString;
            SqlConnection mycon2 = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Update Products SET Name=@Name, Price=@Price, Quantity=@Quantity, Manufacturer=@Manufacturer WHERE Id=@Id", mycon2);
            cmd.Parameters.AddWithValue("@Id", TextBoxUpdateId.Text);
            cmd.Parameters.AddWithValue("@Name", TextBoxUpdateName.Text);
            cmd.Parameters.AddWithValue("@Price", TextBoxUpdatePrice.Text);
            cmd.Parameters.AddWithValue("@Quantity", TextBoxUpdateQuantity.Text);
            cmd.Parameters.AddWithValue("@Manufacturer", TextBoxUpdateManufacture.Text);


            try
            {
                LabelUpdate.Text = "Record updated!!";
                mycon2.Open();
                cmd.ExecuteNonQuery();
                mycon2.Close();

            }
            catch (Exception err)
            {
                LabelUpdate.Text = err.Message;
            }
        }

        protected void ButtonInsert_Click(object sender, EventArgs e) //insert
        {
            String cs = WebConfigurationManager.ConnectionStrings["MEDICALConnectionString"].ConnectionString;
            SqlConnection mycon = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Insert into Products values (@Name,@Price,@Quantity,@Manufacture)", mycon);
            cmd.Parameters.AddWithValue("@Name", TextBoxInsertName.Text);
            cmd.Parameters.AddWithValue("@Price", TextBoxInsertPrice.Text);
            cmd.Parameters.AddWithValue("@Quantity", TextBoxInsertQuantity.Text);
            cmd.Parameters.AddWithValue("@Manufacture", TextBoxInsertManufacture.Text);
            try
            {
                LabelInsert.Text = "Record Inserted!!";
                mycon.Open();
                cmd.ExecuteNonQuery();
                mycon.Close();

            }
            catch (Exception err)
            {
                LabelInsert.Text = err.Message;
            }
        }
    }
}