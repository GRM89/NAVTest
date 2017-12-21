codeunit 50100 Subscriber
{
    trigger OnRun();
    begin
    end;

    [EventSubscriber(ObjectType::Table, 50100, 'OnAfterInsertEvent', '', false, false)]
    local procedure MyProcedure();
    begin
        Message('test insert');
    end;

    [EventSubscriber(ObjectType::Table, 50100,'OnAfterValidateEvent','Description', false, false)]
    local procedure MyProcedure2();
    begin
        Message('test modify');
    end;
}