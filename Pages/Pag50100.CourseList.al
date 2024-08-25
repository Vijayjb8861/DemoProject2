namespace DemoProject.DemoProject;
using Microsoft.Finance.RoleCenters;
using Microsoft.Finance.FinancialReports;

page 50100 CourseList
{
    ApplicationArea = All;
    Caption = 'CourseList';
    PageType = List;
    SourceTable = CourseTable;
    UsageCategory = Lists;
    CardPageId = 50101;
    //SourceTableView = where(Price = filter(>100));

    layout
    {
        area(Content)
        {

            repeater(General)
            {
                field(CourseID; Rec.CourseID)
                {
                    ToolTip = 'Specifies the value of the CourseID field.', Comment = '%';
                }
                field(CourseName; Rec.CourseName)
                {
                    ToolTip = 'Specifies the value of the CourseName field.', Comment = '%';
                }
                field(CourseType; Rec.CourseType)
                {
                    ToolTip = 'Specifies the value of the CourseType field.', Comment = '%';
                }
                field(StartDate; Rec.StartDate)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                field(EndDate; Rec.EndDate)
                {
                    ToolTip = 'Specifies the value of the EndDate field.', Comment = '%';
                }

                field(InstructorID; Rec.InstructorID)
                {
                    ToolTip = 'Specifies the value of the InstructorID field.', Comment = '%';
                }
                field(InstructorName; Rec.InstructorName)
                {
                    ToolTip = 'Specifies the value of the InstructorName field.', Comment = '%';
                }
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the InstructorName field.', Comment = '%';
                }
                field(AvgPrice; Rec.AvgPrice)
                {
                    ToolTip = 'Specifies the value of the InstructorName field.', Comment = '%';
                }

            }
        }

        area(FactBoxes)   //to add factbox
        {
            part(AccntPayables; "Acc. Payables Activities")
            {
                ApplicationArea = All;
            }

        }

    }
    actions
    {
        area(Processing)
        {
            action(CourseInfo)
            {
                Caption = 'Export Course Information';
                Image = Export;
                RunObject = xmlport 50100;

                trigger OnAction()
                begin

                end;
            }
            action(CourseImport)
            {
                Caption = 'Import';
                Image = AdministrationSalesPurchases;
                RunObject = xmlport 50101;

                trigger OnAction()
                begin

                end;
            }

            action(callcodeunit)
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    My_UDP_Var: Codeunit MyUDP_1;
                    dc_display_var: Decimal;
                begin
                    // My_UDP_Var.Run();
                    // dc_display_var := My_UDP_Var.addition(30.59678, 50.1283);
                    // Message(Format(Round(dc_display_var, 0.01, '>')));

                    subtraction(50.123,30.1223,globalvar);

                    Message(Format(globalvar));
                    
                end;
            }
        }


    }

    local procedure subtraction(dcfirstnum: Decimal; dcsecondnum: Decimal; var globalvar: Decimal)
    begin
        globalvar := Abs(dcsecondnum - dcfirstnum);
    end;


    var
        globalvar: Decimal;


}
