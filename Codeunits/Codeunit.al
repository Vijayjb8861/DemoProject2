codeunit 50100 MyUDP_1
{
    trigger OnRun()
    begin
        Message('on run trigger is called');
    end;
    
    procedure addition(dcfirstnum:Decimal;dcsecondnum:Decimal):Decimal
    var
        dc_return_value: Decimal;
    begin
        dc_return_value := dcfirstnum + dcsecondnum;
        exit(dc_return_value)
    end;


    var
        myInt: Integer;
}