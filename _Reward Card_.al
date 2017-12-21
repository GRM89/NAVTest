page 50101 "Reward Card"
{
    PageType = Card;
    SourceTable = Reward;

    layout
    {
        area(content)
        {
            group(Info)
            {
                field("Reward ID"; "Reward ID")
                {
                    ApplicationArea = all;
                }
                field(Description; Description)
                {
                    ApplicationArea = all;
                }
                field("Discount Percentage"; "Discount Percentage")
                {
                    ApplicationArea = all;
                }
                field("Minimum Purchase"; "Minimum Purchase")
                {
                    ApplicationArea = All;
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(Actione)
            {
                trigger OnAction();
                var
                  Notify: Codeunit Notification;
                begin
                  Notify.RUN;
                end;
            }
        }
    }
}