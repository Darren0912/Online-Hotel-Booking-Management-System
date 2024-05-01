using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Hotel_Booking_Management_System.admin
{
    public partial class room : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }




        protected void btnType_Click(object sender, EventArgs e)
        {
            //string strCon = ConfigurationManager.ConnectionStrings["room"].ConnectionString;
            //SqlConnection con = new SqlConnection(strCon);
            //con.Open();
            //String cmdStr = "select * from roomType where typeID = '" + ddlType.SelectedValue + "'";
            //SqlCommand comm = new SqlCommand(cmdStr, con);
            //SqlDataReader r = comm.ExecuteReader();
            //String roomid = null;
            //while (r.Read())
            //{
            //    roomid = null;
            //    if (r.GetValue(0).ToString() == txtID.Text)
            //    {
            //        lblType.Visible = true;
            //        lblPrice.Visible = true;
            //        lblA.Visible = true;
            //        lblC.Visible = true;
            //        txtType.Visible = true;
            //        txtPrice.Visible = true;
            //        txtA.Visible = true;
            //        txtC.Visible = true;
            //        btnAdd.Visible = true;
            //        btnUpdate.Visible = true;
            //        roomid = r.GetValue(0).ToString();
            //        txtType.Text = r.GetValue(1).ToString();
            //        txtPrice.Text = r.GetValue(2).ToString();
            //        txtA.Text = r.GetValue(3).ToString();
            //        txtC.Text = r.GetValue(4).ToString();
            //    }

            //}

            //con.Close();
        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            lblTName.Visible = false;
            lblTDesc.Visible = false;
            lblTPrice.Visible = false;
            lblTImage.Visible = false;

            txtTName.Visible = false;
            txtTPrice.Visible = false;
            txtTDesc.Visible = false;
            txtTImage.Visible = false;

            btnAddType.Visible = false;

            CheckBox2.Text = " Add Room Type ";

            if (CheckBox2.Checked)
            {
                lblTName.Visible = true;
                lblTDesc.Visible = true;
                lblTPrice.Visible = true;
                lblTImage.Visible = true;

                txtTName.Visible = true;
                txtTPrice.Visible = true;
                txtTDesc.Visible = true;
                txtTImage.Visible = true;

                btnAddType.Visible = true;

                CheckBox2.Text = " Close ";
            }
        }
    }
}