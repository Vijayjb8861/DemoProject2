report 50103 CustomerReportRDLC
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
   
    DefaultRenderingLayout = EXCEL;
    
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No;"No.")
            {
                
            }
            column(Name;Name)
            {
                
            }
            column(Balance;Balance)
            {
                
            }
            column(E_Mail;"E-Mail")
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
    
    rendering
    {
        layout(WORD1)
        {
            Type = Word;
            LayoutFile = 'CustReport.docx';
        }
        layout(WORD2)
        {
            Type = Word;
            LayoutFile = 'CustReport2.docx';
        }
         layout(RDLC)
        {
            Type = RDLC;
            LayoutFile = 'CustReport.RDLC';
        }
         layout(EXCEL)
        {
            Type = Excel;
            LayoutFile = 'CustReport.xlsx';
        }

    }
    
    var
        myInt: Integer;
}