using System;

namespace MyCondo
{
    internal class Booking
    {
        private string bookingType;
        private DateTime startDate;
        private DateTime endDate;
        private String description;
        private int userId;

        public Booking()
        {

        }

        public string BookingType { get => bookingType; set => bookingType = value; }
        public DateTime StartDate { get => startDate; set => startDate = value; }
        public DateTime EndDate { get => endDate; set => endDate = value; }
        public string Description { get => description; set => description = value; }
        public int UserId { get => userId; set => userId = value; }
    }
}