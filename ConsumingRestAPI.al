page 50116 "Consuming Rest APIs"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TblRestAPICustomerDetails;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(SLNo;Rec.SLNo)
                {
                    ApplicationArea = All;

                }
                  field(CustName;Rec.CustName)
                {
                    ApplicationArea = All;

                }
                  field(Email;Rec.Email)
                {
                    ApplicationArea = All;

                }
                  field(PhoneNo;Rec.PhoneNo)
                {
                    ApplicationArea = All;

                }
                  field(WebId;Rec.WebId)
                {
                    ApplicationArea = All;

                }
              
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(GetDataFromRestAPI)
            {
                ApplicationArea = All;
                Caption = 'Get Customer Data From API';

                trigger OnAction()
                begin
                    ReadFromResponse(response);
                end;
            }
        }
    }

    trigger OnOpenPage()
    var
        http_client: HttpClient;
        http_responseMsg: HttpResponseMessage;

    begin
        if http_client.Get('https://jsonplaceholder.typicode.com/users', http_responseMsg) then begin
            http_responseMsg.Content.ReadAs(response);
            // Message(response);
        end;
    end;




    procedure ReadFromResponse(response: Text)
    var
        json_array: JsonArray;
        json_value: JsonValue;
        json_object: JsonObject;
        json_token, json_valueToken : JsonToken;
        intloopcounter: Integer;
        RecCustomerDtlsAPI: Record TblRestAPICustomerDetails;
        nocounter: Integer;

    // txtdisplaytext: Text;


    begin
        //  intloopcounter := 1;

        nocounter := RecCustomerDtlsAPI.Count + 1;
        

        if json_token.ReadFrom(response) then begin
            if json_token.IsArray then begin
                json_array := json_token.AsArray();

                for intloopcounter := 0 to json_array.Count - 1 do begin

                    json_array.Get(intloopcounter, json_token);

                    if json_token.IsObject then begin
                        json_object := json_token.AsObject();

                        RecCustomerDtlsAPI.SLNo := nocounter;

                        json_object.Get('name', json_valueToken);
                        RecCustomerDtlsAPI.CustName := json_valueToken.AsValue().AsText();

                        // txtdisplaytext := json_valueToken.AsValue().AsText();
                        json_object.Get('email', json_valueToken);
                        RecCustomerDtlsAPI.Email := json_valueToken.AsValue().AsText();

                        json_object.Get('phone', json_valueToken);
                        RecCustomerDtlsAPI.PhoneNo := json_valueToken.AsValue().AsText();

                        json_object.Get('id', json_valueToken);
                        RecCustomerDtlsAPI.WebId := json_valueToken.AsValue().AsInteger();

                        RecCustomerDtlsAPI.Insert();
                        nocounter := nocounter + 1;

                    end;




                end;

            end;


        end;

  end;

   
    var
        response: Text;
}