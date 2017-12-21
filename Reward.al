table 50100 Reward
{
  LookupPageId = "Reward List";
  DrillDownPageId = "Reward List";

  fields
  {
    field(1;"Reward ID";Code[30])
    {
    }
    field(2;Description;Text[50])
    {
      NotBlank = true;
    }
    field(3;"Discount Percentage";Decimal)
    {
      MinValue = 0;
      MaxValue = 100;
      DecimalPlaces = 2;
    }
    field(4;"Minimum Purchase";Decimal)
    {
      MinValue = 0;
      DecimalPlaces = 2;
    }
    field(5;"Last Date Modified";Date)
    {
      Editable = false;
    }
  }
  keys
  {
    key(PK;"Reward ID")
    {
      Clustered = true;
    }
  }
  trigger OnInsert();
  begin
    SetLastDateModified;
  End;
  trigger OnModify();
  begin
    SetLastDateModified;
  End;
  trigger OnDelete();
  begin
    SetLastDateModified;
  end;
  local procedure SetLastDateModified();
  begin
    "Last Date Modified":=Today;
  end;
}
