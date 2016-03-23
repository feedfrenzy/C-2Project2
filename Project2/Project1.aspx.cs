using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Utilities;
using System.Data;


namespace Project2
{
    public partial class Project1 : System.Web.UI.Page
    {
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
            }

        }

        }








    }
