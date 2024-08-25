page 50117 ImageCardPart
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CourseTable;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(CourseImage;Rec.CourseImage)
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
            action(ImportPicture)
            {
                ApplicationArea = All;
                Caption = 'Import Picture';
                Image = Picture;
                
                trigger OnAction()
                var
                    fromfilename : text;
                    instreampic: InStream;
                begin
                    if UploadIntoStream('Import course image','','',fromfilename,instreampic) then begin
                        Rec.CourseImage.ImportStream(instreampic,fromfilename);
                        Rec.Modify();
                    end;
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}