page 50145 CustomerAPI
{
    PageType = API;
    Caption = 'apiPageName';
    APIPublisher = 'TestAPI';
    APIGroup = 'TESTGroup';
  //  APIVersion = '1.0';
    EntityName = 'Customer';
    EntitySetName = 'Customers';
    SourceTable = Customer;
    DelayedInsert = true;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No";Rec."No.")
                {
                    Caption = 'Customer No';
                    
                }
                field(Name;Rec.Name)
                {
                    Caption = 'Customer Name';
                    
                }
                field(Balance;Rec.Balance)
                {
                    Caption = 'Balance';
                    
                }
                field("BalanceDue";Rec."Balance Due")
                {
                    Caption = 'Balance Due';
                    
                }
                field("PaymentTermsCode";Rec."Payment Terms Code")
                {
                    Caption = 'Payment Terms Code';
                    
                }

            }
        }
    }
}