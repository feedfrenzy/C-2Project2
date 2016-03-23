using System;
using System.Collections;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace HomeBuilderLibrary
{
    public class Build
    {
        ArrayList storeRoom = new ArrayList();
        ArrayList storeUpgrade = new ArrayList();
        ArrayList storeCurrent = new ArrayList();


        public void StoreRoom(string Name, double Price, double length, double width, string Type)
        {
            Room nRoom = new Room(Name, Price, length, width, Type);
            storeRoom.Add(nRoom);
        }

        public void StoreUpdate(string Name, double Price, string UpgradeType)
        {
            Upgrade nUpdate = new Upgrade(Name, Price, UpgradeType);
            storeUpgrade.Add(nUpdate);
        }

        public void Store()
        {
            string Desc;
            double price;
            double upgradePrice = 0;
            double total = 0;


            foreach (Room nRoom in storeRoom)
            {
                Desc = nRoom.RoomName + " (" + nRoom.RoomLength +" x "+ nRoom.RoomWidth +") ";
                price = (nRoom.RoomLength * nRoom.RoomWidth) * nRoom.RoomPrice;
                upgradePrice = 0;

                foreach (Upgrade nUpgrade in storeUpgrade)
                {
                    if (nUpgrade.UpgradeType == nRoom.RoomType)
                    {
                        Desc += ", " + nUpgrade.UpgradeName;
                        upgradePrice += nUpgrade.UpgradePrice;
                    }
                }


                total = price + upgradePrice;
                Home output = new Home(Desc, price, upgradePrice, total);
                storeCurrent.Add(output);

            }

        }

        public ArrayList current
        {
            get { return storeCurrent;}
            set { storeCurrent = value; }
        }


    }
}
