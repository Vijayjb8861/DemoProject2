tableextension 50100 CustomerExt extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50100;LinkedIn; Text[100])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        field(50101;Instagram; Text[100])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
    }
    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
}