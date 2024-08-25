xmlport 50101 CourseTableImport
{
    Direction = Import;
    Format = Xml;
    // UseRequestPage = true;

    schema
    {
        textelement(CourseList)
        {
            tableelement(CourseT;CourseTable)
            {
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
                action(ActionName)
                {
                    
                }
            }
        }
    }
    
    var
        myInt: Integer;
}