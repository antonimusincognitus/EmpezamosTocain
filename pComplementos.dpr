program pComplementos;

uses
  Forms,
  axvComplementosArticulos in 'axvComplementosArticulos.pas' {axv_frmArticulosComplementarios},
  Database in 'Database.pas' {dmDataBase: TDataModule},
  Query in 'Query.pas' {dmQuerys: TDataModule},
  jagtComplementosArticulos in 'jagtComplementosArticulos.pas' {jagt_frmArticulosComplementarios},
  uAXV_Cargar_Guardar_Complementos in 'uAXV_Cargar_Guardar_Complementos.pas' {frmAXV};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAXV, frmAXV);
  Application.Run;
end.
