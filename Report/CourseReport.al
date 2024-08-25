report 50100 CourseReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = 'Course Report.RDLC';
    DefaultLayout = RDLC;
    // DefaultRenderingLayout = Wordlayout2;
    
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

            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin
                Message('on predata item');
                Message(Format(CourseName));
            end;

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                Message('on after get record Course Name %1',CourseName);
                //  Message(Format(CourseName));
            end;

            trigger OnPostDataItem()
            var
                myInt: Integer;
            begin
                 Message('on post get record');
                 Message(Format(CourseName));
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
    //     layout(WordLayout)
    //     {
    //         Type = Word;
    //         LayoutFile = 'mySpreadsheet.docx';
    //     }
    //     layout(ExcelLayout)
    //     {
    //         Type = Excel;
    //         LayoutFile = 'mySpreadsheet.xlsx';
    //     }
    //      layout(RDLClayout)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mySpreadsheet.rdlc';
    //     }
    //      layout(Wordlayout2)
    //     {
    //         Type = Word;
    //         LayoutFile = 'mySpreadsheet2.docx';
    //     }
    // }
    
    var
        myInt: Integer;


    // trigger OnWhat()
    // var
    //     myInt: Integer;
    // begin
        
    // end;

    trigger OnInitReport()
    var
        myInt: Integer;
    begin
        Message('on init report trigger');
    end;

    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        Message('on Onprereport report trigger');
    end;

    trigger OnPostReport()
    var
        myInt: Integer;
    begin
       Message('on onpost report trigger'); 
    end;
}