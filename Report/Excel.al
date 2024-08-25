report 50102 CourseReportExcel
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ExcelLayout = 'Course Report word.xlsx';
    DefaultLayout = Excel;
    // DefaultRenderingLayout = LayoutName;
    
    dataset
    {
        dataitem(RptCourseTable; CourseTable)
        {
            RequestFilterFields = StartDate,EndDate;
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

              trigger OnAfterGetRecord()
            var
                idfilter: Code[20];
                namefilter : Text;
                startdatevar : text;
                enddatevar : Text;
            begin
                // idfilter := RptCourseTable.GetFilter(CourseID);
                // namefilter := GetFilter(CourseName);
                // Message(idfilter + namefilter);

                startdatevar := RptCourseTable.GetFilter(StartDate);
                
                Message(startdatevar);
            end;
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
                    field(CourseID; RptCourseTable.CourseID)
                    {
                        ApplicationArea = All;
                        
                    }
                     field(Coursename; RptCourseTable.CourseName)
                    {
                        ApplicationArea = All;
                        
                    }
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