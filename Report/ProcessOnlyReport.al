report 50104 ProcessOnly
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    // DefaultRenderingLayout = LayoutName;
    
    dataset
    {
        dataitem(CourseTable; CourseTable)
        {
            // column(ColumnName;)
            // {
                
            // }

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                if (CourseTable.CourseType = CourseTable.CourseType::offline) then begin
                    CourseTable.Price := CourseTable.Price + 50;
                    CourseTable.Modify();
                end;
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
    //     layout(LayoutName)
    //     {
    //         Type = Excel;
    //         LayoutFile = 'mySpreadsheet.xlsx';
    //     }
    // }
    
    var
        myInt: Integer;
}