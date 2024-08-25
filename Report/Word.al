report 50101 CourseReportWord
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    WordLayout = 'Course Report word.docx';
    DefaultLayout = Word;
    // DefaultRenderingLayout = LayoutName;
    
    dataset
    {
        dataitem(RptCourseTable; CourseTable)
        {
            column(CourseID; RptCourseTable.CourseID)
            {
                
            }
            column(CourseName;RptCourseTable.CourseName)
            {
                
            }
            column(Price; RptCourseTable.Price)
            {
                
            }
             column(InstructorName; RptCourseTable.InstructorName)
            {
                
            }
        }
    }
    
    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;
                        
                    // }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(LayoutName)
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = Excel;
    //         LayoutFile = 'mySpreadsheet.xlsx';
    //     }
    // }
    
    var
        myInt: Integer;
}