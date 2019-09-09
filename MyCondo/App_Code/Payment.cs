using System;

namespace MyCondo.ResidentsView
{
    internal class Payment
    {
        private int amount;
        private int userId;
        private string serviceName;
        private DateTime date;
        private string paymentStatus;
        private int transactionId;
        private DateTime paymentDate;

        public int Amount { get => amount; set => amount = value; }
        public int UserId { get => userId; set => userId = value; }
        public string ServiceName { get => serviceName; set => serviceName = value; }
        public DateTime Date { get => date; set => date = value; }
        public string PaymentStatus { get => paymentStatus; set => paymentStatus = value; }
        public int TransactionId { get => transactionId; set => transactionId = value; }
        public DateTime PaymentDate { get => paymentDate; set => paymentDate = value; }
    }
}