unit uAXV_Cargar_Guardar_Complementos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, StdCtrls, AdvEdit, AdvEdBtn,
  AdvCombo, AdvPageControl, ComCtrls, Menus, AdvMenus, AdvStickyPopupMenu,
  ImgList, ActnList, AdvToolBar, AdvToolBarStylers;

type
  TfrmAXV = class(TForm)
    AdvDPAcciones: TAdvDockPanel;
    ATBMenues: TAdvToolBar;
    AdvToolBarMenuButton1: TAdvToolBarMenuButton;
    AdvToolBarMenuButton2: TAdvToolBarMenuButton;
    AdvToolBarMenuButton3: TAdvToolBarMenuButton;
    ATBBotones: TAdvToolBar;
    ATBBGuardarCerrar: TAdvToolBarButton;
    ATBBGuardarNuevo: TAdvToolBarButton;
    ATBS1: TAdvToolBarSeparator;
    ATBBModificar: TAdvToolBarButton;
    ATBBEliminar: TAdvToolBarButton;
    ATBS2: TAdvToolBarSeparator;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    ActionList1: TActionList;
    Guardar: TAction;
    GuardarCerrar: TAction;
    GuardarNuevo: TAction;
    Modificar: TAction;
    Eliminar: TAction;
    NuevaAlternativa: TAction;
    NuevoComplemento: TAction;
    Nuevo: TAction;
    EliminarAlternativa: TAction;
    EliminarComplemento: TAction;
    ImgLstgrdArticulos: TImageList;
    imgMenus: TImageList;
    AdvStickyPopupMenu1: TAdvStickyPopupMenu;
    AdvPopupMenu1: TAdvPopupMenu;
    Nuevaalternativa1: TMenuItem;
    Nuevocomplemento1: TMenuItem;
    PGCArticulos: TAdvPageControl;
    tabGeneral: TAdvTabSheet;
    cbxLineas: TAdvComboBox;
    cbxUnidadMedida: TAdvComboBox;
    cbxEstatus: TAdvComboBox;
    edtNombre: TAdvEditBtn;
    edtClave: TAdvEditBtn;
    cbAlmacenable: TCheckBox;
    cbJuego: TCheckBox;
    cbPesarEnBascula: TCheckBox;
    edtPesoUnit: TAdvEdit;
    tabAlternativas: TAdvTabSheet;
    sstrgAlternativas: TAdvStringGrid;
    tabComplementos: TAdvTabSheet;
    strgComplementos: TAdvStringGrid;
    axv_PopMenuAlternativas: TAdvPopupMenu;
    axv_PopMenuComplementos: TAdvPopupMenu;
    EliminarComplemento1: TMenuItem;
    EliminarComplemento2: TMenuItem;
    Nuevaalternativa2: TMenuItem;
    Eliminaralternativa1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure axv_BorrarRelacion(TipoRel,Rel_Id:string);
    procedure axv_CargarComplementos(articulo_id_ori:string);
    procedure axv_CargarAlternativas(articulo_id_ori:string);
    procedure axv_GuardarComplementos(articulo_id_ori:string);
    procedure axv_GuardarAlternativas(articulo_id_ori:string);
    procedure NuevaAlternativaExecute(Sender: TObject);
    procedure NuevoComplementoExecute(Sender: TObject);
    procedure sstrgAlternativasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure strgComplementosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sstrgAlternativasCanAddRow(Sender: TObject;
      var CanAdd: Boolean);
    procedure strgComplementosCanAddRow(Sender: TObject;
      var CanAdd: Boolean);
    procedure GuardarCerrarExecute(Sender: TObject);
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
    cxProtocolo //  0: tcp/ip 1: net/bieu   2: spx
    : string;
    { Public declarations }
  end;

var
  frmAXV: TfrmAXV;

implementation
uses Database, Query, FIBQuery, pFIBQuery, DateUtils,
  Math, jagtComplementosArticulos;
var
  dbConectar:TdmDataBase;
  fqDummy:TdmQuerys;
const
  cClave=0;
  cNombre=1;
  cPiezas=2;
  cNotas=3;
  cArticulo_id=4;
  cRelacion_id=5;
{$R *.dfm}
//VALIDA LA CONEXION AL SERVIDOR
function ConectarADB: Boolean;
begin
  Result := False;
  dbConectar:= TdmDataBase.Create(nil);
  if frmAXV.cxTipo ='1' then//Es local
        dbConectar.idbDatabase.DatabaseName := 'localhost:'+ frmAXV.cxCarpeta + frmAXV.dbNombre + '.fdb'
  else if jagt_frmArticulosComplementarios.cxProtocolo ='0'
    then dbConectar.idbDatabase.DatabaseName := frmAXV.cxServidor+':'+frmAXV.cxCarpeta+jagt_frmArticulosComplementarios.dbNombre + '.fdb'
  else if frmAXV.cxProtocolo ='1'
    then dbConectar.idbDatabase.DatabaseName := '\\'+frmAXV.cxServidor+'\'+frmAXV.cxCarpeta+frmAXV.dbNombre + '.fdb'
  else if jagt_frmArticulosComplementarios.cxProtocolo ='2'
    then dbConectar.idbDatabase.DatabaseName := frmAXV.cxServidor+'@'+frmAXV.cxCarpeta+frmAXV.dbNombre + '.fdb';
  dbConectar.idbDatabase.DBParams.Clear;
  dbConectar.idbDatabase.DBParams.Add('user_name=' + frmAXV.dbUsuario);
  dbConectar.idbDatabase.DBParams.Add('password=' + frmAXV.dbPass);
  dbConectar.idbDatabase.DBParams.Add('sql_role_name=USUARIO_MICROSIP');
     try dbConectar.idbDatabase.Connected := True;
        Result := True;
     except
        MessageDlg('El nombre de usuario o la contraseña no son válidos para el Servidor de la conexión "' + jagt_frmArticulosComplementarios.cxNombre +
           '".' + #13#10 + 'Escriba los datos correctamente o consulte al Administrador del sistema.',mtError,[mbOK],0);
        result:=false;
     end;//try
end;

//RECUPERAR LOS COMPLEMENTOS DEL ARTICULO ELEGIDO
procedure TfrmAXV.axv_CargarComplementos(articulo_id_ori:string);
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
    SQL.Add('select c.clave_articulo as clave, a.nombre as articulo, r.articulo_id_dest, r.articulo_rel_id, r.notas, r.unidades_relacionadas from lm_articulos_rel as r'
      + ' inner join articulos as a'
      + '   on r.articulo_id_dest=a.articulo_id'
      + ' left join claves_articulos as c'
      + '   on (r.articulo_id_dest=c.articulo_id and c.rol_clave_art_id = (select rol_clave_art_id from roles_claves_articulos where es_ppal = ''S''))'
      + ' where r.tipo_relacion = ''C'''
      + '   and r.articulo_id_ori = '
      + articulo_id_ori);
    ExecQuery;
    if fn('articulo').AsString <> '' then begin
      while not eof do begin
        strgComplementos.Cells[cClave,sstrgAlternativas.RowCount-1]:=fn('clave').AsString;
        strgComplementos.Cells[cNombre,sstrgAlternativas.RowCount-1]:=fn('articulo').AsString;
        strgComplementos.Cells[cArticulo_id,sstrgAlternativas.RowCount-1]:=fn('articulo_id_dest').AsString;
        strgComplementos.Cells[cRelacion_id,sstrgAlternativas.RowCount-1]:=fn('articulo_rel_id').AsString;
        strgComplementos.Cells[cNotas,sstrgAlternativas.RowCount-1]:=fn('notas').AsWideString;
        strgComplementos.Cells[cPiezas,sstrgAlternativas.RowCount-1]:=fn('unidades_relacionadas').AsString;
        sstrgAlternativas.AddRow;
        Next;
      end;//while
    end;//if
  end;//with
  if fqCargar.dbtTransaccion.Active then fqCargar.dbtTransaccion.Commit;
  FreeAndNil(fqCargar);
end;

//RECUPERA LAS ALTERNATIVAS DEL ARTICULO ELEGIDO
procedure TfrmAXV.axv_cargarAlternativas(articulo_id_ori:string);
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
    SQL.Add('select c.clave_articulo as clave, a.nombre as articulo, r.articulo_id_dest, r.articulo_rel_id, r.notas, r.unidades_relacionadas from lm_articulos_rel as r'
      + ' inner join articulos as a'
      + '   on r.articulo_id_dest=a.articulo_id'
      + ' left join claves_articulos as c'
      + '   on (r.articulo_id_dest=c.articulo_id and c.rol_clave_art_id = (select rol_clave_art_id from roles_claves_articulos where es_ppal = ''S''))'
      + ' where r.tipo_relacion = ''A'''
      + '   and r.articulo_id_ori = '
      + articulo_id_ori);
    ExecQuery;
    if fn('articulo').AsString <> '' then begin
      while not eof do begin
        sstrgAlternativas.Cells[cClave,sstrgAlternativas.RowCount-1]:=fn('clave').AsString;
        sstrgAlternativas.Cells[cNombre,sstrgAlternativas.RowCount-1]:=fn('articulo').AsString;
        sstrgAlternativas.Cells[cArticulo_id,sstrgAlternativas.RowCount-1]:=fn('articulo_id_dest').AsString;
        sstrgAlternativas.Cells[cRelacion_id,sstrgAlternativas.RowCount-1]:=fn('articulo_rel_id').AsString;
        sstrgAlternativas.Cells[cNotas,sstrgAlternativas.RowCount-1]:=fn('notas').AsWideString;
        sstrgAlternativas.Cells[cPiezas,sstrgAlternativas.RowCount-1]:=fn('unidades_relacionadas').AsString;
        sstrgAlternativas.AddRow;
        Next;
      end;//while
    end;//if
  end;//with
  if fqCargar.dbtTransaccion.Active then fqCargar.dbtTransaccion.Commit;
  FreeAndNil(fqCargar);
end;

//INSERTA LAS ALTERNATIVAS EN LA BASE DE DATOS
procedure TfrmAXV.axv_GuardarAlternativas(articulo_id_ori:string);
var
  fqGuardar:TdmQuerys;
  i:integer;
begin
  fqGuardar:=TdmQuerys.Create(nil);
  fqGuardar.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqGuardar.dbtTransaccion.Active:=true;
  fqGuardar.figQuery.Database:=dbConectar.idbDatabase;
  for i:=1 to frmAXV.strgComplementos.RowCount-1 do begin
    with fqGuardar.figQuery do begin
      Close;
      SQL.Clear;
      if sstrgAlternativas.Cells[cRelacion_id,i] = ''
      then SQL.Add('insert into lm_Articulos_Rel values (gen_id(id_articulos_rel,1)'
        + ' ,' + articulo_id_ori //id_ori
        + ' ,' + sstrgAlternativas.Cells[cArticulo_id,i] //id_dest
        + ' , 1' //unidades_relacionadas
        + ' ,' + sstrgAlternativas.Cells[cNotas,i] //notas
        + ' ,''C''') //tipo_relacion
      else SQL.Add('update lm_Articulos_rel set'
        + 'articulo_id_dest = ' + sstrgAlternativas.Cells[cArticulo_id,i] //id_dest
        + ', notas = ' + QuotedStr(sstrgAlternativas.cells[cNotas,i]) //notas
        + 'where articulo_rel_id = ' + sstrgAlternativas.Cells[cRelacion_id,i]);
      ExecQuery;
    end;//with
  end;//for
  if fqGuardar.dbtTransaccion.Active then fqGuardar.dbtTransaccion.Commit;
  FreeAndNil(fqGuardar);
end;

//INSERTA COMPLEMENTOS EN LA BASE DE DATOS
procedure TfrmAXV.axv_GuardarComplementos(articulo_id_ori:string);
var
  fqGuardar:TdmQuerys;
  i:integer;
begin
  fqGuardar:=TdmQuerys.Create(nil);
  fqGuardar.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqGuardar.dbtTransaccion.Active:=true;
  fqGuardar.figQuery.Database:=dbConectar.idbDatabase;
  for i:=1 to frmAXV.strgComplementos.RowCount-1 do begin
    with fqGuardar.figQuery do begin
      Close;
      SQL.Clear;
      if strgComplementos.Cells[cRelacion_id,i] = ''
      then SQL.Add('insert into lm_Articulos_Rel values (gen_id(id_articulos_rel,1)'
        + ' ,' + articulo_id_ori //id_ori
        + ' ,' + strgComplementos.Cells[cArticulo_id,i] //id_dest
        + ' ,' + strgComplementos.Cells[cPiezas,i] //unidades_relacionadas
        + ' ,' + strgComplementos.Cells[cNotas,i] //notas
        + ' ,''C''') //tipo_relacion
      else SQL.Add('update lm_Articulos_rel set'
        + 'articulo_id_dest = ' + strgComplementos.Cells[cArticulo_id,i] //id_dest
        + ', unidades_relacionadas = ' + strgComplementos.Cells[cPiezas,i] //unidades_relacionadas
        + ', notas = ' + QuotedStr(strgComplementos.cells[cNotas,i]) //notas
        + 'where articulo_rel_id = ' + strgComplementos.Cells[cRelacion_id,i]);
      ExecQuery;
    end;//with
  end;//for
  if fqGuardar.dbtTransaccion.Active then fqGuardar.dbtTransaccion.Commit;
  FreeAndNil(fqGuardar);
end;

procedure TfrmAXV.FormShow(Sender: TObject);
begin
  dbNombre   :='CORREOS';
  dbUsuario  :='SYSDBA ';
  dbPass     :='LUM10309';
  cxTipo     :='1';
  cxNombre   :='Mi_PC';
  cxServidor :='192.168.4.9';
  cxProtocolo:='0';
  cxCarpeta  :='C:\Users\lumi\Documents\Cursos Delphi\bases de datos\';
  ConectarADB;
end;

procedure TfrmAXV.NuevaAlternativaExecute(Sender: TObject);
begin
  sstrgAlternativas.AddRow;
end;

procedure TfrmAXV.NuevoComplementoExecute(Sender: TObject);
begin
  strgComplementos.AddRow;
end;

procedure TfrmAXV.axv_BorrarRelacion(TipoRel,Rel_Id:string);
var
  fqGuardar:TdmQuerys;
begin
  fqGuardar:=TdmQuerys.Create(nil);
  fqGuardar.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqGuardar.dbtTransaccion.Active:=true;
  fqGuardar.figQuery.Database:=dbConectar.idbDatabase;
  with fqGuardar.figQuery do begin
    Close;
    SQL.Clear;
    SQL.Add('delete from lm_Articulos_Rel '
      + ' where articulo_rel_id = ' + Rel_Id
      + ' and tipo_relacion =' + QuotedStr(TipoRel));
    ExecQuery;
  end;//with
  if fqGuardar.dbtTransaccion.Active then fqGuardar.dbtTransaccion.Commit;
  FreeAndNil(fqGuardar);
end;

procedure TfrmAXV.sstrgAlternativasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key=46) and (ssCtrl in shift)then
    if sstrgAlternativas.RowCount=2 then begin
      sstrgAlternativas.ClearRows(sstrgAlternativas.Row,1);
    end else begin
      sstrgAlternativas.RemoveRows(sstrgAlternativas.Row,1);
    end;
  If (key=38) and (sstrgAlternativas.RowCount>2) and (sstrgAlternativas.Cells[cArticulo_id,sstrgAlternativas.Row]='') then begin
    sstrgAlternativas.RowCount:=sstrgAlternativas.RowCount-1;
    Abort;
  end;
end;

procedure TfrmAXV.strgComplementosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key=46) and (ssCtrl in shift)then
    if strgComplementos.RowCount=2 then begin
      strgComplementos.ClearRows(strgComplementos.Row,1);
    end else begin
      strgComplementos.RemoveRows(strgComplementos.Row,1);
    end;
  If (key=38) and (strgComplementos.RowCount>2) and (strgComplementos.Cells[cArticulo_id,strgComplementos.Row]='') then begin
    strgComplementos.RowCount:=strgComplementos.RowCount-1;
    Abort;
  end;
end;

procedure TfrmAXV.sstrgAlternativasCanAddRow(Sender: TObject;
  var CanAdd: Boolean);
begin
  if sstrgAlternativas.Cells[cArticulo_id,sstrgAlternativas.Row] = ''
  then CanAdd:=false
  else CanAdd:=true;
end;

procedure TfrmAXV.strgComplementosCanAddRow(Sender: TObject;
  var CanAdd: Boolean);
begin
  if strgComplementos.Cells[cArticulo_id,strgComplementos.Row] = ''
  then CanAdd:=false
  else CanAdd:=true;
end;

procedure TfrmAXV.GuardarCerrarExecute(Sender: TObject);
begin
  axv_GuardarComplementos('');
  axv_GuardarAlternativas('');
  Self.Close;
end;



end.
