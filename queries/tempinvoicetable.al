table 50119 "Temp Invoice Table"
{
    DataClassification = ToBeClassified;
    // TableType = Temporary;
    
    fields
    {
        field(1;InvoiceNo; code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Invoice No.';
        }
        field(2;CustomerNo;Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer No.';
            
        }
        field(3; CustomerName; text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Name';
        }
        
        field(4; Qunatity; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Total amount';
        }
    }
    
    keys
    {
        key(pk; InvoiceNo)
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