report 50108 CoursefilterFields
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    WordLayout = 'Course filter fields 3.docx';
    DefaultLayout = Word;
    AllowScheduling = true;
    // DefaultRenderingLayout = LayoutName;

    dataset
    {
        dataitem(RptCourseTable; CourseTable)
        {
            RequestFilterFields = StartDate, EndDate;
            column(CourseID; RptCourseTable.CourseID)
            {

            }
            column(CourseName; RptCourseTable.CourseName)
            {

            }
            column(Price; RptCourseTable.Price)
            {

            }
            column(InstructorName; RptCourseTable.InstructorName)
            {

            }
            column(StartDate; StartDate)
            {

            }
            column(Min_date; a)
            {

            }
            column(Max_date; b)
            {

            }

            trigger OnPreDataItem()
            var
                idfilter: Code[20];
                namefilter: Text;

                enddatevar: Text;
            begin
                // idfilter := RptCourseTable.GetFilter(CourseID);
                // namefilter := GetFilter(CourseName);
                // Message(idfilter + namefilter);

                daterange := RptCourseTable.GetFilter(StartDate);

                a := RptCourseTable.GetRangeMin(StartDate);
                b := RptCourseTable.GetRangeMax(StartDate);

                Message('%1 %2 %3', daterange, a, b);
            end;
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        SaveValues = true;
        ShowFilter = false;


        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(CourseID; RptCourseTable.CourseID)
                    // {
                    //     ApplicationArea = All;

                    // }
                    //  field(Coursename; RptCourseTable.CourseName)
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
        daterange: Text;
        a, b : date;
}