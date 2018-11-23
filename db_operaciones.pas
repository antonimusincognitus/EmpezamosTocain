unit db_operaciones;
interface
uses Database, Query;

procedure  ejecuta_consulta_lectura(db:TDMDatabase; var ct: TDMQuerys; consulta : string );

implementation

procedure  ejecuta_consulta_lectura(db:TDMDatabase; var ct: TDMQuerys; consulta : string );
begin

  ct:= TdmQuerys.Create(nil);
  ct.dbtTransaccion.DefaultDatabase:=db.idbDatabase;
  ct.figQuery.Database:=db.idbDatabase;
  with Ct.figQuery do begin
    Close;
    SQL.Clear;
    SQL.Add(consulta);
//    ShowMessage(SQL.GetText); //***PARA VALIDAR QUE LA CONSULTA SEA CORRECTA***
    ExecQuery;
  end; //with

end;

end.
