unit uAXV_Mostrar_Relaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, Grids, AdvObj, BaseGrid, AdvGrid, StdCtrls;

type
  TFrmMostrarRelaciones = class(TForm)
    lblArticulo: TLabel;
    lblPrecioPublico: TLabel;
    lblExistencias: TLabel;
    lblPrecio1: TLabel;
    lblPrecioMinimo: TLabel;
    lblPrecio2: TLabel;
    lblExis1: TLabel;
    grdRelaciones: TAdvStringGrid;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    lblClave: TLabel;
    procedure grdRelacionesCanEditCell(Sender: TObject; ARow,
      ACol: Integer; var CanEdit: Boolean);
    procedure grdRelacionesAutoAddRow(Sender: TObject; ARow: Integer);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    dbNombre,   //  'Prueba_Diagonal';
    dbUsuario,  //  '16ANTONIOG';
    dbPass,     //  '123456';
    cxTipo,     //  '1 local; 0 remoto';
    cxNombre,   //  'Local,16Lumi, conexion, etc';
    cxCarpeta,  //  ''C:\Microsip datos\';
    cxServidor, //  '192.168.3.6; cualquiera que sea el servidor microsip';
    cxProtocolo, //  0: tcp/ip 1: net/bieu   2: spx
    articulo_id,
    relacion
    : string;
    { Public declarations }
  end;

var
  FrmMostrarRelaciones: TFrmMostrarRelaciones;

implementation
uses Database, Query, FIBQuery, pFIBQuery, DateUtils,
  Math;
var
  dbConectar:TdmDataBase;
const
  cSelect=0;
  cClave=1;
  cNombre=2;
  cPiezas=3;
  cPublico=4;
  cMinimo=5;
  cExistencias=6;
  cArticulo_id=7;

  {$R *.dfm}

//VALIDA LA CONEXION AL SERVIDOR
function ConectarADB: Boolean;
begin
  Result := False;
  dbConectar:= TdmDataBase.Create(nil);
  if FrmMostrarRelaciones.cxTipo ='1' then//Es local
        dbConectar.idbDatabase.DatabaseName := 'localhost:'+ FrmMostrarRelaciones.cxCarpeta + FrmMostrarRelaciones.dbNombre + '.fdb'
  else if FrmMostrarRelaciones.cxProtocolo ='0'
    then dbConectar.idbDatabase.DatabaseName := FrmMostrarRelaciones.cxServidor+':'+FrmMostrarRelaciones.cxCarpeta+FrmMostrarRelaciones.dbNombre + '.fdb'
  else if FrmMostrarRelaciones.cxProtocolo ='1'
    then dbConectar.idbDatabase.DatabaseName := '\\'+FrmMostrarRelaciones.cxServidor+'\'+FrmMostrarRelaciones.cxCarpeta+FrmMostrarRelaciones.dbNombre + '.fdb'
  else if FrmMostrarRelaciones.cxProtocolo ='2'
    then dbConectar.idbDatabase.DatabaseName := FrmMostrarRelaciones.cxServidor+'@'+FrmMostrarRelaciones.cxCarpeta+FrmMostrarRelaciones.dbNombre + '.fdb';
  dbConectar.idbDatabase.DBParams.Clear;
  dbConectar.idbDatabase.DBParams.Add('user_name=' + FrmMostrarRelaciones.dbUsuario);
  dbConectar.idbDatabase.DBParams.Add('password=' + FrmMostrarRelaciones.dbPass);
  dbConectar.idbDatabase.DBParams.Add('sql_role_name=USUARIO_MICROSIP');
     try dbConectar.idbDatabase.Connected := True;
        Result := True;
     except
        MessageDlg('El nombre de usuario o la contrase�a no son v�lidos para el Servidor de la conexi�n "' + FrmMostrarRelaciones.cxNombre +
           '".' + #13#10 + 'Escriba los datos correctamente o consulte al Administrador del sistema.',mtError,[mbOK],0);
        result:=false;
     end;//try
end;

//RECUPERAR LOS DATOS DEL ARTICULO ELEGIDO
procedure axv_CargarArticulo_Ori(articulo_id_ori:string);
var
  fqCargar:TdmQuerys;
begin
  fqCargar:=TdmQuerys.Create(nil);
  fqCargar.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqCargar.dbtTransaccion.Active:=true;
  fqCargar.figQuery.Database:=dbConectar.idbDatabase;
  with fqCargar.figQuery do begin
    Close;
    SQL.Clear;
    SQL.Add('select c.clave_articulo as clave, a.nombre as articulo, p1.precio_unitario as publico, p2.precio_unitario as minimo, r.unidades_relacionadas from lm_articulos_rel as r'
      + ' inner join articulos as a'
      + '   on r.articulo_id_ori=a.articulo_id'
      + ' left join claves_articulos as c'
      + '   on (r.articulo_id_ori=c.articulo_id and c.rol_clave_art_id = (select rol_clave_art_id from roles_claves_articulos where es_ppal = ''S''))'
      {recupera el precio publico en moneda nacional}
      + ' left join get_precio_art(a.articulo_id,(select precio_empresa_id from precios_empresa where nombre like ''%blico''),1,''now'',(select precio_empresa_id from precios_empresa where nombre = ''Precio de lista'')) as p1'
      + '   on (a.articulo_id = p1.articulo_id)'
      {recupera el precio minimo en moneda nacional}
      + ' left join get_precio_art(a.articulo_id,(select precio_empresa_id from precios_empresa where nombre = ''Precio minimo''),1,''now'',(select precio_empresa_id from precios_empresa where nombre = ''Precio de lista'')) as p2'
      + '   on (a.articulo_id = p2.articulo_id)'
      + ' where a.articulo_id = ' + articulo_id_ori);
    ExecQuery;
    if fn('articulo').AsString <> '' then begin
        FrmMostrarRelaciones.lblArticulo.Caption:=fn('articulo').AsString;
        FrmMostrarRelaciones.lblPrecio1.Caption:=fn('publico').AsString;
        FrmMostrarRelaciones.lblPrecio2.Caption:=fn('minimo').AsWideString;
        FrmMostrarRelaciones.lblClave.Caption:=fn('clave').AsString + ':';
      if fqCargar.dbtTransaccion.Active then fqCargar.dbtTransaccion.Commit;
      Close;
      SQL.Clear;
      SQL.Add('execute procedure calc_exis_artalm(' + articulo_id_ori + ',(select almacen_id from almacenes where es_ppal = ''S''),''now'')');
      ExecProc;
      FrmMostrarRelaciones.lblExis1.Caption:=fn('exis_unid').AsString
    end;//if
  end;//with
  if fqCargar.dbtTransaccion.Active then fqCargar.dbtTransaccion.Commit;
  FreeAndNil(fqCargar);
end;

//RECUPERAR LOS COMPLEMENTOS DEL ARTICULO ELEGIDO
procedure axv_CargarRelaciones(articulo_id_ori,tipo_rel:string; grid:TAdvStringGrid);
var
  fqCargar:TdmQuerys;
  i:integer;
begin
  if grid.RowCount>1 then grid.ClearRows(1,grid.RowCount-1);
  grid.RowCount:=1;
  fqCargar:=TdmQuerys.Create(nil);
  fqCargar.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqCargar.dbtTransaccion.Active:=true;
  fqCargar.figQuery.Database:=dbConectar.idbDatabase;
  with fqCargar.figQuery do begin
    Close;
    SQL.Clear;
    SQL.Add('select c.clave_articulo as clave, r.articulo_id_dest, a.nombre as articulo, p1.precio_unitario as publico, p2.precio_unitario as minimo, r.unidades_relacionadas from lm_articulos_rel as r'
      + ' inner join articulos as a'
      + '   on r.articulo_id_dest=a.articulo_id'
      + ' left join claves_articulos as c'
      + '   on (r.articulo_id_dest=c.articulo_id and c.rol_clave_art_id = (select rol_clave_art_id from roles_claves_articulos where es_ppal = ''S''))'
      {recupera el precio publico en moneda nacional}
      + ' left join get_precio_art(a.articulo_id,(select precio_empresa_id from precios_empresa where nombre like ''%blico''),1,''now'',(select precio_empresa_id from precios_empresa where nombre = ''Precio de lista'')) as p1'
      + '   on (a.articulo_id = p1.articulo_id)'
      {recupera el precio minimo en moneda nacional}
      + ' left join get_precio_art(a.articulo_id,(select precio_empresa_id from precios_empresa where nombre = ''Precio minimo''),1,''now'',(select precio_empresa_id from precios_empresa where nombre = ''Precio de lista'')) as p2'
      + '   on (a.articulo_id = p2.articulo_id)'
      + ' where r.tipo_relacion = ' + QuotedStr(tipo_rel)
      + '   and r.articulo_id_ori = ' + articulo_id_ori);
    ExecQuery;
    if fn('articulo').AsString <> '' then begin
      while not eof do begin
        grid.AddRow;
        grid.Cells[cClave,grid.RowCount-1]  :=fn('clave').AsString;
        grid.Cells[cNombre,grid.RowCount-1] :=fn('articulo').AsString;
        grid.Cells[cPiezas,grid.RowCount-1] :=fn('unidades_relacionadas').AsString;
        grid.Cells[cPublico,grid.RowCount-1]:=fn('publico').AsString;
        grid.Cells[cMinimo,grid.RowCount-1] :=fn('minimo').AsWideString;
        grid.Cells[cArticulo_id,grid.RowCount-1]:=fn('articulo_id_dest').AsString;
        Next;
      end;//while
      if fqCargar.dbtTransaccion.Active then fqCargar.dbtTransaccion.Commit;
      for i:=1 to grid.RowCount-1 do begin
        if fqCargar.dbtTransaccion.Active then fqCargar.dbtTransaccion.Commit;
        Close;
        SQL.Clear;
        SQL.Add('execute procedure calc_exis_artalm(' + grid.Cells[cArticulo_id,i] + ',(select almacen_id from almacenes where es_ppal = ''S''),''now'')');
        ExecProc;
        grid.Cells[cExistencias,i]:=fn('exis_unid').AsString;
      end;//for
    end;//if
  end;//with
  grid.AddCheckBoxColumn(cSelect,false,false);
  if fqCargar.dbtTransaccion.Active then fqCargar.dbtTransaccion.Commit;
  FreeAndNil(fqCargar);
end;

procedure TFrmMostrarRelaciones.grdRelacionesCanEditCell(Sender: TObject;
  ARow, ACol: Integer; var CanEdit: Boolean);
begin
  if acol=cSelect then CanEdit:=True;
end;

procedure TFrmMostrarRelaciones.grdRelacionesAutoAddRow(Sender: TObject;
  ARow: Integer);
begin
  grdRelaciones.AddCheckBox(cSelect,grdRelaciones.Row+1,false,false);
end;

procedure TFrmMostrarRelaciones.btnCancelarClick(Sender: TObject);
begin
  grdRelaciones.RowCount:=1;
  Self.Close;
end;

procedure TFrmMostrarRelaciones.btnAceptarClick(Sender: TObject);
var
  i:integer;
begin
  for i:=1 to grdRelaciones.RowCount-1 do begin
    ShowMessage(BoolToStr(grdRelaciones.IsChecked(cSelect,i)));
    if grdRelaciones.IsChecked(cSelect,i) then begin
     ShowMessage(IntToStr(i));
     //grdRelaciones.RemoveRows(i,1);
    end;
  end;
end;

procedure TFrmMostrarRelaciones.FormShow(Sender: TObject);
begin
  ConectarADB;
  axv_CargarArticulo_Ori(articulo_id);
  axv_CargarRelaciones(articulo_id,relacion,grdRelaciones);
  grdRelaciones.HideColumns(cArticulo_id,cArticulo_id);
  if relacion = 'C' then begin
    //
  end else if relacion = 'A' then begin
    //
  end;
end;

end.