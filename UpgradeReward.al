codeunit 50106 UpgradeReward
{
  Subtype = Upgrade;

  trigger OnUpgradePerCompany();
  var InstalReward: Codeunit RewardInstalCode;
  Reward: Record Reward;
  Module: ModuleInfo;
  begin
    NavApp.GetCurrentModuleInfo(Module);
    if Module.DataVersion.Major = 1 then begin
      Reward.Get('BRONZE');
      Reward.Rename('ALUMINIUM');
      Reward.Description:='Aluminimum Level';
      Reward.Modify();
    end;
  end;
}