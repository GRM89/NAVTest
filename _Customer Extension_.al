tableextension 50103 "Customer Extension" extends Customer
{
  fields
  {
    field(50100;"Reward ID";Code[20])
    {
      TableRelation = Reward."Reward ID";
      ValidateTableRelation = true;

      trigger OnValidate(); 
      begin
        if(rec."Reward ID" <> xRec."Reward ID") and (rec.Blocked <> xrec.Blocked)then begin
          Error('Cannot update the rewards status of a blocked customer.');
        end;
      end;
    }
  }
}
