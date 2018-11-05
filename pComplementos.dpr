program pComplementos;

uses
  Forms,
  axvComplementosArticulos in 'axvComplementosArticulos.pas' {axv_frmArticulosComplementarios},
  Database in 'Database.pas' {dmDataBase: TDataModule},
  Query in 'Query.pas' {dmQuerys: TDataModule},
  jagtComplementosArticulos in 'jagtComplementosArticulos.pas' {jagt_frmArticulosComplementarios},
<<<<<<< HEAD
  buscarclientes in 'buscarclientes.pas' {frmBuscarCliente},
  localizar in 'localizar.pas' {frmLocalizar};
=======
  uAXV_Cargar_Guardar_Complementos in 'uAXV_Cargar_Guardar_Complementos.pas' {frmAXV};
>>>>>>> axv2

{$R *.res}

begin
  Application.Initialize;
<<<<<<< HEAD
  Application.CreateForm(Tjagt_frmArticulosComplementarios, jagt_frmArticulosComplementarios);
=======
  Application.CreateForm(TfrmAXV, frmAXV);
>>>>>>> axv2
  Application.Run;
end.
