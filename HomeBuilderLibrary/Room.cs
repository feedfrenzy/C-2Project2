using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HomeBuilderLibrary
{
    public class Room
    {
        string roomName;
        double roomPrice;
        double roomLength;
        double roomWidth;
        string roomType;

        public Room(string Name, double Price, double length, double width, string Type)
        {
            roomName = Name;
            roomPrice = Price;
            roomLength = length;
            roomWidth = width;
            roomType = Type;
        }

        public string RoomName
        {
            set { roomName = value; }
            get { return roomName; }
        }

        public double RoomPrice
        {
            set { roomPrice = value; }
            get { return roomPrice; }
        }

        public double RoomLength
        {
            set { roomLength = value; }
            get { return roomLength; }
        }

        public double RoomWidth
        {
            set { roomWidth = value; }
            get { return roomWidth; }
        }

        public string RoomType
        {
            set { roomType = value; }
            get { return roomType; }
        }

    }
}
