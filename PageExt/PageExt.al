pageextension 50103 CustomerCardExt2 extends "Customer Card"
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

        }

        moveafter(Address;"E-Mail")
        modify(ContactName)
        {
            Caption = 'Type Contact name';

            trigger OnBeforeValidate()
            var
                myInt: Integer;
            begin
                
            end;
        }

        
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}