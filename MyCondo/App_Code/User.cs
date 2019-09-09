using System;

namespace MyCondo
{
    internal class User
    {
        private int  userId;
        private String fname;
        private String lname;
        private String email;
        private String pNumber;
        private String adress;
        private Contact contact;
        private int detailsId;
        private String creationDate;
        private String group;
        public User()
        {

        }

        public int UserId { get => userId; set => userId = value; }
        public string Fname { get => fname; set => fname = value; }
        public string Lname { get => lname; set => lname = value; }
        public string Email { get => email; set => email = value; }
        public string PNumber { get => pNumber; set => pNumber = value; }
        public int DetailsId { get => detailsId; set => detailsId = value; }
        public String CreationDate { get => creationDate; set => creationDate = value; }
        public string Group { get => group; set => group = value; }
        internal String Adress { get => adress; set => adress = value; }
        internal Contact Contact { get => contact; set => contact = value; }
    }
}