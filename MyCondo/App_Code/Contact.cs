namespace MyCondo
{
    internal struct Contact
    {
        public string Name;
        public Relation Relationship;
        public string Phone;
        public string Email;
        public Contact(string name, Relation relation, string phone, string email)
        {
            Name = name;
            Relationship = relation;
            Phone = phone;
            Email = email;
        }
        public override string ToString()
        {
            return string.Format("Name: " + Name + "\n"
                                + "Relation: " + Relationship + "\n"
                                + "Phone: " + Phone + "\n"
                                + "Email: " + Email);
        }
    }
    public enum Relation { Friend, Partner, Son, Daughter, Parent }
}