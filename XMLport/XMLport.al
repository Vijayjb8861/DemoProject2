xmlport 50100 CourseTable
{
    Direction = Export;
    Format = Xml;
    // UseRequestPage = false;


    schema
    {
        textelement(CourseList)
        {
            tableelement(CourseT;CourseTable)
            {
               // RequestFilterFields = InstructorID;
                fieldattribute(CourseID;CourseT.CourseID)
                {
                    
                }
                fieldattribute(CourseName;CourseT.CourseName){}
                fieldelement(Price;CourseT.Price){}
            }
        }
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                        
                    // }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
               action(Action1)
               {
                ApplicationArea = All;
                
                
                trigger OnAction()
                begin
                    Message('request page trigger is called');
                end;
               }
            }
        }
    }
    
    var
        myInt: Integer;
}