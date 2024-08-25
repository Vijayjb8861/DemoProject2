page 50104 "Variable Declaration Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    // SourceTable = TableName;

    layout
    {
        area(Content)
        {
            // repeater(GroupName)
            // {
            //     // field(Name; NameSource)
            //     // {
            //     //     ApplicationArea = All;

            //     // }
            // }
        }
        area(Factboxes)
        {

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

    // var
    //     string1 : 

    trigger OnOpenPage()
    var
        AryMySingleDarray: array[5] of Integer;   //single dimension
        AryMultiDimensionarray: array[2, 2] of Text;
        CountryCodeandNames : Dictionary of [Text,Text];

        LstMyList: List of [Text];
        LstMyList2: List of [Text];
        IntLoopCounter: Integer;
        item,dictionarykey : text;

    begin
        AryMySingleDarray[1] := 5;
        AryMySingleDarray[2] := 10;
        AryMySingleDarray[3] := 15;
        AryMySingleDarray[4] := 20;
        AryMySingleDarray[5] := 25;

        

        // for IntLoopCounter:=1 to ArrayLen(AryMySingleDarray) do 
        // begin
        //     Message('This is the %1 array element = %2',IntLoopCounter,AryMySingleDarray[IntLoopCounter]);
        // end;


        
        LstMyList2.Add('This is line item 1');
        LstMyList2.Add('This is line item 2');
        LstMyList2.Add('This is line item 3');

        LstMyList.AddRange(LstMyList2);
        LstMyList.Add('Vijay');
        LstMyList.Add('Krishnan');

        // foreach item in LstMyList do 
        // begin
        //     Message(item);
        // end;


        CountryCodeandNames.Add('IN','India');
        CountryCodeandNames.Add('US','United states of america');
        CountryCodeandNames.Add('FA','France');
        CountryCodeandNames.Add('NL','Netherland');

        foreach dictionarykey in CountryCodeandNames.Keys do
            begin
                Message('Key %1 - Value %2',dictionarykey,CountryCodeandNames.Get(dictionarykey));
            end;

    end;

}



  //  Message('%1 ',AryMySingleDarray[3]);

        // AryMultiDimensionarray[1, 1] := '10';
        // AryMultiDimensionarray[1, 2] := '20';
        // AryMultiDimensionarray[2, 1] := '30';
        // AryMultiDimensionarray[2, 2] := '40';

        // Message('%1 ', AryMultiDimensionarray[2, 1]);




        //    Message(LstMyList.Get(2));
        //    Message(LstMyList.Get(5));

        //   Message(Format(LstMyList.IndexOf('Krishnan')));