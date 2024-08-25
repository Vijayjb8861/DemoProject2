page 50105 CourseCardPart
{
    PageType = CardPart;
    ApplicationArea = All;
    //UsageCategory = Lists;
    SourceTable = CourseTable;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(CourseName;Rec.CourseName)
                {
                    ApplicationArea = All;
                    
                }
                 field(CourseID;Rec.CourseID)
                {
                    ApplicationArea = All;
                    
                }
                

            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}