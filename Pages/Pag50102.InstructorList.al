namespace DemoProject.DemoProject;

page 50102 InstructorList
{
    ApplicationArea = All;
    Caption = 'InstructorList';
    PageType = List;
    SourceTable = Instructor;
    UsageCategory = Lists;
    CardPageId = 50103;

    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(InstructorID; Rec.InstructorID)
                {
                    ToolTip = 'Specifies the value of the InstructorID field.', Comment = '%';
                }
                field(InstructorName; Rec.InstructorName)
                {
                    ToolTip = 'Specifies the value of the InstructorName field.', Comment = '%';
                }
                field(Contact; Rec.Contact)
                {
                    ToolTip = 'Specifies the value of the Contact field.', Comment = '%';
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.', Comment = '%';
                }
            }
        }
    }
}
