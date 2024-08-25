report 50106 Customerreport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ExcelLayout = 'CustomerReport.xlsx';
    DefaultLayout = Excel;
    AllowScheduling = true;
    // DefaultRenderingLayout = LayoutName;
    
    dataset
    {
        dataitem(Customer;Customer)
        {
            
            column(No; "No.")
            {
                
            }
             column(Name; Name)
            {
                
            }

            dataitem(CustLed; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = field("No.");

                column(Sales__LCY_;"Sales (LCY)")
                {
                    
                }
            }
        }
    }
    
    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        ShowFilter = true;

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