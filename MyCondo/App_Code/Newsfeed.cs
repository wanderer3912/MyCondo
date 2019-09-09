using System;

namespace MyCondo
{
    internal class Newsfeed
    {
        private String title;
        private String description;
        private String expirydate;
        private String priority;
        private String groupName;

        public Newsfeed()
        {

        }

        public string Title { get => title; set => title = value; }
        public string Description { get => description; set => description = value; }
        public string Expirydate { get => expirydate; set => expirydate = value; }
        public string Priority { get => priority; set => priority = value; }
        public string GroupName { get => groupName; set => groupName = value; }
    }
}