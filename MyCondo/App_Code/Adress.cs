namespace MyCondo
{
    internal struct Adress
    {
        public string StreetLine1;
        public string StreetLine2;
        public string ZipCode;
        public string State;
        public string City;
        public string Country;

        public Adress(string streetNameAndNumber, string line2, string streetcity, string streetState, string streetZipcode, string country)
        {
            StreetLine1 = streetNameAndNumber;
            StreetLine2 = line2;
            ZipCode = streetZipcode;
            State = streetState;
            City = streetcity;
            Country = country;
        }
        public override string ToString()
        {
            if (StreetLine2!="")
            {
                return string.Format("#" + StreetLine2 + "-" + StreetLine1 + "," + City + "," + State + "," + ZipCode + "," + Country); 
            }else return string.Format(StreetLine1 + "," + City + "," + State + "," + ZipCode + "," + Country);

        }
    }
}