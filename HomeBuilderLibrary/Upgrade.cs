using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeBuilderLibrary
{
    public class Upgrade
    {
        string upgradeName;
        double upgradePrice;
        string upgradeType;

        public Upgrade(string Name, double Price, string UpgradeType)
        {
            upgradeName = Name;
            upgradePrice = Price;
            upgradeType = UpgradeType;
        }

        public string UpgradeName
        {
            set { upgradeName = value; }
            get { return upgradeName; }
        }

        public double UpgradePrice
        {
            set { upgradePrice = value; }
            get { return upgradePrice; }
        }

        public string UpgradeType
        {
            set { upgradeType = value; }
            get { return upgradeType; }
        }




    }
}
