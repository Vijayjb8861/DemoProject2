table 50102 Instructor
{
    DataClassification = ToBeClassified;
    LookupPageId = 50102;
   
    fields
    {
        field(1;InstructorID; code[20])
        {
            DataClassification = ToBeClassified;   
        }
        field(2;InstructorName; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3;Contact; Text[10])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(4; Email; Text[60])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }
    }
    
    keys
    {
        key(pk; InstructorID)
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
        fieldgroup(DropDown;InstructorID,InstructorName,Email,Contact){}
        fieldgroup(Brick; InstructorID,InstructorName){}
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