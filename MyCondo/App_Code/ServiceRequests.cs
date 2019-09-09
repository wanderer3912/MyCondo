using System;
namespace MyCondo
{
    internal class ServiceRequests
    {
        private int userId;
        private string subject;
        private string description;

        public ServiceRequests()
        {

        }
        public int UserId { get => userId; set => userId = value; }
        public String Subject { get => subject; set => subject = value; }
        public String Description { get => description; set => description = value; }
    }
}