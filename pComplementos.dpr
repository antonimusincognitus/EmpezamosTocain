program pComplementos;

uses
  Forms,
  axvComplementosArticulos in 'axvComplementosArticulos.pas' {axv_frmArticulosComplementarios},
  Database in 'Database.pas' {dmDataBase: TDataModule},
  Query in 'Query.pas' {dmQuerys: TDataModule},
  jagtComplementosArticulos in 'jagtComplementosArticulos.pas' {frmjagt},
  buscarclientes in 'buscarclientes.pas' {frmBuscarCliente},
  localizar in 'localizar.pas' {frmLocalizar},
  uAXV_Cargar_Guardar_Complementos in 'uAXV_Cargar_Guardar_Complementos.pas' {frmAXV},
  db_operaciones in 'db_operaciones.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmjagt, frmjagt);
  Application.Run;
end.
