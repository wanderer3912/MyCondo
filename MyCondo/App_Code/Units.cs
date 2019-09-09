using System;
namespace MyCondo
{
    internal class Units
    {
        private int unitNumber;
        private string occupancy;
        private int ownerUserID;
        private int unitAdressID;
        private int ownerAdressID;
        private DateTime occupancyDate;


        public Units()
        {

        }
        public int UnitNumber { get => unitNumber; set => unitNumber = value; }
        public string Occupancy { get => occupancy; set => occupancy = value; }
        public int OwnerUserID { get => ownerUserID; set => ownerUserID = value; }
        public int UnitAdressID { get => unitAdressID; set => unitAdressID = value; }
        public int OwnerAdressID { get => ownerAdressID; set => ownerAdressID = value; }
        public DateTime OccupancyDate { get => occupancyDate; set => occupancyDate = value; }
    }
}