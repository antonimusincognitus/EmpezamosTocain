program pComplementos;

uses
  Forms,
  axvComplementosArticulos in 'axvComplementosArticulos.pas' {axv_frmArticulosComplementarios},
  Database in 'Database.pas' {dmDataBase: TDataModule},
  Query in 'Query.pas' {dmQuerys: TDataModule},
  jagtComplementosArticulos in 'jagtComplementosArticulos.pas' {jagt_frmArticulosComplementarios};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tjagt_frmArticulosComplementarios, jagt_frmArticulosComplementarios);
  Application.CreateForm(Tjagt_frmArticulosComplementarios, jagt_frmArticulosComplementarios);
  Application.Run;
end.
