pageextension 50104 "Customer Card Extension" extends "Customer Card"
{
  layout
  {
    addlast(General)
    {
      field("Reward ID";"Reward ID")
      {
        ApplicationArea = all;
        Lookup = true;
        Caption = 'Reward ID';
      }
    }
  }
  actions
  {
    addfirst(Navigation)
    {
      action(Rewards)
      {
        ApplicationArea = All;
        RunObject = page "Reward List";
        Image = AbsenceCategories;
        Caption = 'Rewards';
      }
    }
  }
}
