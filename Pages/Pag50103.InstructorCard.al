namespace DemoProject.DemoProject;

page 50103 InstructorCard
{
    ApplicationArea = All;
    Caption = 'InstructorCard';
    PageType = Card;
    SourceTable = Instructor;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
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
