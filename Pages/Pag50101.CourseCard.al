namespace DemoProject.DemoProject;
using Microsoft.Sales.Reports;
using Microsoft.Projects.Resources.Resource;
using Microsoft.Foundation.Attachment;

page 50101 CourseCard
{
    ApplicationArea = All;
    Caption = 'Course Card';
    PageType = Card;
    SourceTable = CourseTable;
    PromotedActionCategories = ',,,Customer';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General Info';

                field(CourseID; Rec.CourseID)
                {
                    ToolTip = 'Specifies the value of the CourseID field.', Comment = '%';
                    // Importance = Promoted;
                }
                field(CourseType; Rec.CourseType)
                {
                    ToolTip = 'Specifies the value of the CourseType field.', Comment = '%';
                    // Importance = Additional;  

                    trigger OnValidate()
                    var
                        textvar: Text;
                    begin
                        textvar :=Format(Rec.CourseType::offline);    
                    end;

                }
                field(CourseName; Rec.CourseName)
                {
                    ToolTip = 'Specifies the value of the CourseName field.', Comment = '%';
                    // Importance = Standard;
                    ShowMandatory = true;

                }


                field(InstructorID; Rec.InstructorID)
                {
                    ToolTip = 'Specifies the value of the InstructorID field.', Comment = '%';

                    trigger OnValidate()
                    var
                        ResourceVar: Record Resource;
                    begin
                        if ResourceVar.Get(Rec.InstructorID) then begin
                            Rec.InstructorName := ResourceVar.Name;
                            Rec.Modify();
                        end;
                    end;

                }
                field(InstructorName; Rec.InstructorName)
                {
                    ToolTip = 'Specifies the value of the InstructorID field.', Comment = '%';



                }

            }
            group(CourseDates)
            {
                Caption = 'Course Dates';
                field(StartDate; Rec.StartDate)
                {
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                    Importance = Promoted;
                }
                field(EndDate; Rec.EndDate)
                {
                    ToolTip = 'Specifies the value of the EndDate field.', Comment = '%';
                }
                field(CourseImage; Rec.CourseImage)
                {
                    ApplicationArea = All;

                }
            }
            group(Pricing)
            {
                field(Price; Rec.Price)
                {
                    ToolTip = 'Specifies the value of the InstructorName field.', Comment = '%';
                    // Enabled = (Rec.CourseType = Rec.CourseType::offline);
                    Enabled = (Rec.CourseName = 'azure');
                }
            }
        }

        area(FactBoxes)
        {

            part(ImageCardPart; ImageCardPart)
            {
                ApplicationArea = All;
                SubPageLink = CourseID = field(CourseID);

            }
            part(coursepart; CourseCardPart)
            {
                ApplicationArea = All;
                SubPageLink = CourseID = field(CourseID);

            }

            systempart(Links; Links)
            {
                ApplicationArea = All;

            }
            systempart(Notes; Notes)
            {
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        area(Processing)
        {
            action(CustomerListReport)
            {
                Caption = 'Customer Report';
                ApplicationArea = All;
                RunObject = report "Customer - List";
                Promoted = true;
                PromotedCategory = Category4;
                Image = Report;

                trigger OnAction()
                begin

                end;
            }
        }
        area(Creation)
        {
            action(Action2)
            {
                ApplicationArea = All;
                Caption = 'Make Title Case';
                Promoted = true;
                PromotedCategory = Category4;
                Image = UserCertificate;

                trigger OnAction()
                begin
                    Message('Course name will be in title case');
                    Rec.CourseName := Rec.CourseName.PadRight(StrLen(rec.CourseName) + 5, '1');
                end;
            }
        }
        area(Navigation)
        {
            action(Action3)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
        // area(Promoted)
        // {
        //     action(ABC)
        //     {
        //         ApplicationArea = All;

        //         trigger OnAction()
        //         begin

        //         end;
        //     }
        // }
        area(Reporting)
        {
            action(Action5)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}
