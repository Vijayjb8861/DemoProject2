table 50120 TblRestAPICustomerDetails
{
    DataClassification = ToBeClassified;
    Caption = 'Customer Details - API';
    
    fields
    {
        field(1; SLNo; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; CustName; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Email; text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }
        field(4; PhoneNo; Text[25])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(6;WebId; Integer)
        {
            DataClassification = ToBeClassified;
            
        }
    }
    
    keys
    {
        key(pk; SLNo)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}