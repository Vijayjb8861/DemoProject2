pageextension 50119 BCRoleEx extends "Business Manager Role Center"
{
    layout
    {
        // Add changes to page layout here
        addfirst(rolecenter)
        {
            part(PendingApprovalsPage;PendingApprovalsPage)
            {
                ApplicationArea = Basic, Suite;
                // AccessByPermission = TableData "Approval Entry" = I;
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

   

    var
        myInt: Integer;
}

pageextension 50140 MyExtension22 extends "Requests to Approve"
{
    layout
    {
        // Add changes to page layout here
        addafter(Amount)
        {
            // field(OpenApprovals;Rec.OpenApprovals)
            // {
            //     ApplicationArea = All;
            // }
        }
    }
    
 
}

page 50106 PendingApprovalsPage
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Approval Entry";

    layout
    {
        area(Content)
        {
            cuegroup(PendingApprovals)
            {
                Caption = 'Pending Approvals';
               
                field(SalesRelated; Rec.SalesRelated)
                {
                    ApplicationArea = All;
                   // DrillDownPageId = "Requests to Approve";

                        trigger OnDrillDown()
                        var
                           VarRequestPage : Page "Requests to Approve";
                           ApprovalEntry : Record "Approval Entry";
                        begin
                            // ApprovalEntry.SetFilter();
                            // Page.RunModal()
                        end;

                }



               

            }
        }
    }

 
}


tableextension 50118 MyExtension extends "Approval Entry"
{
    fields
    {
        // Add changes to table fields here
        // field(50100; PurchaseRelated; Integer)
        // {
        //     Caption = 'Purchase Related';
        //     FieldClass = FlowField;
        //     // CalcFormula = count("Approval Entry" where(Status = filter(Open)));
        //     // CalcFormula = count();
        // }
        field(50101; SalesRelated; Integer)
        {
            Caption = 'Sales Related';
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
}