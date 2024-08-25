page 50126 "Invoice Page List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Temp Invoice Table";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(InvoiceNo; Rec.InvoiceNo)
                {
                    ApplicationArea = All;

                }
                field(CustomerNo; Rec.CustomerNo)
                {
                    ApplicationArea = All;

                }
                field(CustomerName; Rec.CustomerName)
                {
                    ApplicationArea = All;

                }
                field(Qunatity; Rec.Qunatity)
                {
                    ApplicationArea = All;

                }
                field(Amount; Rec.Amount)
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

    trigger OnOpenPage()
    var
        QryInvoiceData: Query "Invoice Data Query";
    begin

        
        if QryInvoiceData.Open() then begin
            Rec.DeleteAll();
            while QryInvoiceData.Read() do begin
                if not (QryInvoiceData.InvoiceNo = '') then 
                begin
                    Rec.Init();
                    Rec.InvoiceNo := QryInvoiceData.InvoiceNo;
                    Rec.CustomerNo := QryInvoiceData.CustomerNo;
                    Rec.CustomerName := QryInvoiceData.Name;
                    Rec.Qunatity := QryInvoiceData.quanity;
                    Rec.Amount := QryInvoiceData.Amount;
                    Rec.Insert();
                end;
            end;
            QryInvoiceData.Close();
        end;


    end;

    var
        myInt: Integer;
}