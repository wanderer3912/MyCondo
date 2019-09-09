using System;

namespace MyCondo.ResidentsView
{
    internal class Complaints
    {
        private string reporterName;
        private string title;
        private string message;
        private DateTime date;


        public Complaints()
        {

        }
        public string ReporterName { get => reporterName; set => reporterName = value; }
        public string Title { get => title; set => title = value; }
        public string Message { get => message; set => message = value; }
        public DateTime Date { get => date; set => date = value; }
    }
}