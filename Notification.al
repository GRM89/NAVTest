codeunit 50103 Notification
{
    trigger OnRun();
    var
        MyNotification: Notification;
    begin
        MyNotification.MESSAGE := 'This is a notification';
        MyNotification.SCOPE := NOTIFICATIONSCOPE::LocalScope; //GlobalScope implemented in future
        MyNotification.SEND;
    end;
}