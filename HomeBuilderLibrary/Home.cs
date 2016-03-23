using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeBuilderLibrary
{
    public class Home
    {
        string homeDesc;
        double homePrice;
        double homeUpgradePrice;
        double homeTotal;

        public Home(string Description, double Price, double UpgradePrice, double Total)
        {
            homeDesc = Description;
            homePrice = Price;
            homeUpgradePrice = UpgradePrice;
            homeTotal = Total;
        }

        public string HomeDesc
        {
            set{homeDesc = value; }
            get{return homeDesc; }
        }

        public double HomePrice
        {
            set { homePrice = value; }
            get { return homePrice; }
        }

        public double HomeUpgradePrice
        {
            set { homeUpgradePrice = value; }
            get { return homeUpgradePrice; }
        }


        public double HomeTotal
        {
            set { homeTotal = value; }
            get { return homeTotal; }
        }


    }
}
