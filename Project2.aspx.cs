using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Utilities;
using System.Data;
using HomeBuilderLibrary;
using System.Globalization;


namespace Project2
{
    public partial class Project2 : System.Web.UI.Page
    {
        Build newHouse = new Build();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DBConnect objDB = new DBConnect();

                String strRooms = "SELECT * FROM Rooms";
                String strKitchen = "SELECT * FROM Kitchen";
                String strMaster = "SELECT * FROM Masterbedroom";
                String strBedroom = "SELECT * FROM Bedroom";
                String strLiving = "SELECT * FROM Livingroom";
                String strBathroom = "SELECT * FROM Bathroom";

                DataSet myRoomDS = objDB.GetDataSet(strRooms);
                DataSet myBedroomDS = objDB.GetDataSet(strBedroom);
                DataSet myBathroomDS = objDB.GetDataSet(strBathroom);
                DataSet myLivingDS = objDB.GetDataSet(strLiving);
                DataSet myMasterDS = objDB.GetDataSet(strMaster);
                DataSet myKitchenDS = objDB.GetDataSet(strKitchen);

                gvRooms.DataSource = myRoomDS;
                gvRooms.DataBind();

                gvBathroom.DataSource = myBathroomDS;
                gvBathroom.DataBind();

                gvBedroom.DataSource = myBedroomDS;
                gvBedroom.DataBind();

                gvLivingroom.DataSource = myLivingDS;
                gvLivingroom.DataBind();

                gvMasterBedroom.DataSource = myMasterDS;
                gvMasterBedroom.DataBind();

                gvBathroom.DataSource = myBathroomDS;
                gvBathroom.DataBind();

                gvKitchen.DataSource = myKitchenDS;
                gvKitchen.DataBind();

                Panel2.Visible = false;
            }

        }

        public void addRooms(GridView rooms)
        {
            for (int row = 0; row < rooms.Rows.Count; row++)
            {
                CheckBox select = (CheckBox)rooms.Rows[row].FindControl("chkSelect");

                if (select.Checked)
                {
                    string name;
                    string type;
                    double price;
                    double length = 0;
                    double width = 0;

                    name = rooms.Rows[row].Cells[2].Text;
                    price = double.Parse(rooms.Rows[row].Cells[3].Text, NumberStyles.Currency);
                    TextBox txtLength = (TextBox)rooms.Rows[row].FindControl("txtLengthPSQF");
                    TextBox txtWidth = (TextBox)rooms.Rows[row].FindControl("txtWidthPSQF");
                    type = rooms.Rows[row].Cells[6].Text;

                    try 
                    { 
                        length = double.Parse(txtLength.Text);
                        width = double.Parse(txtWidth.Text);
                    }
                    catch 
                    {
                        lblWarning2.Text = "One or your input length or width is not vaild.<br/>"+"Please rebuild your home use correct numbers of area";
                        gvOutput.Visible = false;
                        lblWarning2.Visible = false;
                    }

                    newHouse.StoreRoom(name, price, length, width, type);
                }
            }
        }

        public void addUpgrade(GridView Upgrade)
        {
            for (int row = 0; row < Upgrade.Rows.Count; row++)
            {
                CheckBox select = (CheckBox)Upgrade.Rows[row].FindControl("chkSelect");

                if (select.Checked)
                {
                    string name;
                    double price;
                    string type;

                    name = Upgrade.Rows[row].Cells[2].Text;
                    price = double.Parse(Upgrade.Rows[row].Cells[4].Text, NumberStyles.Currency);
                    type = Upgrade.Rows[row].Cells[5].Text;

                    newHouse.StoreUpdate(name,price,type);
                }
            }
        }

        public bool minRequirement(GridView rooms)
        {
            bool min = false;
            bool bed = false;
            bool bath = false;
            bool living = false;
            bool kitchen = false;
            string answer;

            for (int row = 0; row < rooms.Rows.Count; row++)
            {
                CheckBox select = (CheckBox)rooms.Rows[row].FindControl("chkSelect");

                if (select.Checked)
                {
                    answer = rooms.Rows[row].Cells[6].Text;

                    if (answer.Equals("bedroom") || answer.Equals("mbedroom"))
                    {
                        bed = true;
                    }

                    if (answer.Equals("livingroom"))
                    {
                        living = true;
                    }

                    if (answer.Equals("bathroom"))
                    {
                        bath = true;
                    }

                    if (answer.Equals("kitchen"))
                    {
                        kitchen = true;
                    }
                }  
            }
           return min = bed && living && bath && kitchen;
        }

        public bool InputValidation(string fName, string lName, string phone, string email, string address )
        {
            bool firstName = false;
            bool lastName = false;
            bool number = false;
            bool mail = false;
            bool ads = false;

            long n;

            if (!String.IsNullOrEmpty(fName))
                firstName = true;

            if (!String.IsNullOrEmpty(lName))
                lastName = true;

            if (!String.IsNullOrEmpty(email))
                mail = true;

            if (!String.IsNullOrEmpty(address))
                ads = true;

            if (Int64.TryParse(phone, out n))
                number = true;

            return firstName && lastName && mail && ads && number;
        }

        protected void btnBuild_Click(object sender, EventArgs e)
        {
            bool minReq = minRequirement(gvRooms);
            bool invaild = InputValidation(txtFirstName.Text,txtLastName.Text,txtPhone.Text,txtEmail.Text,txtAddress.Text);

            if (minReq != true)
            {
                lblWarning.Text = "You have to select at least one bedroom, bathroom, living room and kitchen";
            }
            else if (invaild != true)
            {
                lblWarning.Text = "Your information isn't vaild or your phone number isn't integer";
            }
            else
            {
                addRooms(gvRooms);
                addUpgrade(gvMasterBedroom);
                addUpgrade(gvBedroom);
                addUpgrade(gvKitchen);
                addUpgrade(gvLivingroom);
                addUpgrade(gvBathroom);

                newHouse.Store();

                gvOutput.DataSource = newHouse.current;
                gvOutput.DataBind();

                double cost = 0;
                double total = 0;


                for (int i = 0; i < gvOutput.Rows.Count; i++)
                {
                    cost += double.Parse(gvOutput.Rows[i].Cells[2].Text, NumberStyles.Currency);
                    total += double.Parse(gvOutput.Rows[i].Cells[3].Text,NumberStyles.Currency);
                }

                gvOutput.Columns[0].FooterText = "Total:";
                gvOutput.Columns[2].FooterText = cost.ToString("C");
                gvOutput.Columns[3].FooterText = total.ToString("C");


                panel1.Visible = false;
                Panel2.Visible = true;
                lblInfo.Text = "Dear "+txtFirstName.Text+" "+txtLastName.Text+" thanks for using Jie's homebuilder. Below is your receipt.<br/>"+
                    "Address: "+txtAddress.Text+"<br/>Phone#: "+txtPhone.Text+"<br/>Email: "+txtEmail.Text;

                gvOutput.DataBind();

            }
        }
    }


}
