using System;

namespace MyCondo
{
    internal class Login
    {
        private String username;
        private String password;
        private String accountType;
        private int userId;
        private string image;

        public Login()
        {

        }

        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
        public string AccountType { get => accountType; set => accountType = value; }
        public int UserId { get => userId; set => userId = value; }
        public string Image { get => image; set => image = value; }
    }
}