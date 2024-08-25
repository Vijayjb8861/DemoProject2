table 50101 CourseTable
{
    DataClassification = ToBeClassified;
    Caption = 'Course Details';
    DataCaptionFields = CourseID, CourseName, CourseType;
    // DataPerCompany = true;


    fields
    {
        field(1; CourseID; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; CourseName; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course Name';
            NotBlank = true;
        }
        field(3; CourseType; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "offline","online";
        }
        field(4; StartDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; EndDate; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; InstructorID; code[20])
        {
            DataClassification = ToBeClassified;

            //TableRelation = Resource;  //regular 
            //filtered table relation
            //TableRelation = Resource where(Type = const(Person));
            //conditional table relation
            TableRelation = if (CourseType = const(online)) Resource where(Type = const(Person))
            else if (CourseType = const(offline)) Resource where(Type = const(Machine));

        }
        field(7; InstructorName; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(8; Price; Decimal)
        {

            DataClassification = ToBeClassified;


            // Editable = false; //or true 
        }
        field(9; AvgPrice; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = average(CourseTable.Price where(InstructorID = const('JOHN')));
        }
        field(10; CourseImage; Media)
        {
            DataClassification = ToBeClassified;

        }

    }

    keys
    {
        key(pk; CourseID)           //primary key
        {
            Clustered = true;
        }

    }

    fieldgroups
    {
        // Add changes to field groups here
        // fieldgroup(DropDown; MyField){}
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        Message('Record is inserted');

       

    end;

    trigger OnModify()
    var
        textvar : Text;
    begin
        Message('Record is modified');

        textvar :=  Format(Rec.CourseType);
        Message(textvar);
        if textvar.Contains('off') then 
        begin
            Message('it contains off');
            // FieldName()
          // FieldActive();
            
        end;

    end;

    trigger OnDelete()
    begin
        Message('Record is deleted');
    end;

    trigger OnRename()
    var
        myInt: Integer;
    begin
        Message('Record is renamed');
    end;

}


// FieldClass = FlowField;
// CalcFormula = lookup(Resource.Name where("No." = field(InstructorID)));



