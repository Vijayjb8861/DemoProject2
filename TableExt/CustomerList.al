pageextension 50104 CustomerListExt2 extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field(LinkedIn;Rec.LinkedIn)
            {
                ToolTip = 'LinkedIn URL';
                ApplicationArea = All;
            }
             field(Instagram;Rec.Instagram)
            {
                 ToolTip = 'Instagram URL';
                 ApplicationArea = All;
            }
              field("E-Mail";Rec."E-Mail")
            {
                 ToolTip = 'E-mail';
                 ApplicationArea = All;
            }
            

        }

        
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}