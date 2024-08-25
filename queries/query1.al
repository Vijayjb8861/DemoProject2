query 50100 "Invoice Data Query"
{
    QueryType = Normal;
    OrderBy = descending(Name);

    elements
    {
        dataitem(Customer; Customer)
        {
           // DataItemTableFilter = "No." = filter(<=10000);
            column(CustomerNo; "No.")
            {

            }
            column(Name; Name)
            {

            }
            // filter(FilterName; SourceFieldName)
            // {

            // }
            dataitem(SalesHeader; "Sales Header")
            {
                DataItemLink = "Sell-to Customer No." = Customer."No.";
                column(InvoiceNo; "No.")
                {

                }

                column(Amount; Amount)
                {

                }
                column(Amount_Including_VAT; "Amount Including VAT")
                {

                }
                dataitem(SalesLine; "Sales Line")
                {
                    DataItemLink = "Document No." = SalesHeader."No.";

                    // column(Unit_Price;"Unit Price")
                    // {

                    // }
                    column(quanity; Quantity)
                    {
                        Method = Sum;
                      //  ColumnFilter = quanity = filter(<20);
                    }
                    filter(Line_Amount;"Line Amount"){}
                    // column(line_amount; "Line Amount")
                    // {
                    //     Method = Sum;
                    // }

                }
            }

        }
    }

    var
        DecInvlineAmount: Integer;

    trigger OnBeforeOpen()
    begin
       SetFilter(line_amount,'>5000');
    //    SetRange(line_amount,10000,20000);
    end;
}