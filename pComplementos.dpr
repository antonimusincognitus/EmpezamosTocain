program pComplementos;

uses
  Forms,
  uComplementosArticulos in 'uComplementosArticulos.pas' {frmArticulosComplementarios},
  Database in 'Database.pas' {dmDataBase: TDataModule},
  Query in 'Query.pas' {dmQuerys: TDataModule},
  jagtComplementosArticulos in 'jagtComplementosArticulos.pas' {axv_frmArticulosComplementarios};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmArticulosComplementarios, frmArticulosComplementarios);
  Application.CreateForm(Taxv_frmArticulosComplementarios, axv_frmArticulosComplementarios);
  Application.Run;
end.
