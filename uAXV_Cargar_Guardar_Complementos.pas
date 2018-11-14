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
    MostrarAlternativas: TAction;
    MostrarComplementos: TAction;
    procedure FormShow(Sender: TObject);
    procedure axv_BorrarRelacion(TipoRel,Rel_Id:string);
    procedure axv_CargarComplementos(articulo_id_ori:string);
    procedure axv_CargarAlternativas(articulo_id_ori:string);
    procedure axv_GuardarComplementos(articulo_id_ori:string);
    procedure axv_GuardarAlternativas(articulo_id_ori:string);
    procedure axv_getArticulo(grd:TAdvStringGrid; columna,fila:integer; nombre,clave,art_id:string);
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
    procedure EliminarExecute(Sender: TObject);
    procedure EliminarAlternativaExecute(Sender: TObject);
    procedure EliminarComplementoExecute(Sender: TObject);
    procedure strgComplementosCellValidate(Sender: TObject; ACol,
      ARow: Integer; var Value: String; var Valid: Boolean);
    procedure ModificarExecute(Sender: TObject);
    procedure sstrgAlternativasCellValidate(Sender: TObject; ACol,
      ARow: Integer; var Value: String; var Valid: Boolean);
    procedure GuardarExecute(Sender: TObject);
    procedure MostrarAlternativasExecute(Sender: TObject);
    procedure MostrarComplementosExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sstrgAlternativasEllipsClick(Sender: TObject; ACol,
      ARow: Integer; var S: String);
    procedure sstrgAlternativasButtonClick(Sender: TObject; ACol,
      ARow: Integer);
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
    articulo_id
    : string;
    { Public declarations }
  end;

var
  frmAXV: TfrmAXV;

implementation
uses Database, Query, FIBQuery, pFIBQuery, DateUtils, uAXV_Mostrar_Relaciones,
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
  else if frmAXV.cxProtocolo ='0'
    then dbConectar.idbDatabase.DatabaseName := frmAXV.cxServidor+':'+frmAXV.cxCarpeta+frmAXV.dbNombre + '.fdb'
  else if frmAXV.cxProtocolo ='1'
    then dbConectar.idbDatabase.DatabaseName := '\\'+frmAXV.cxServidor+'\'+frmAXV.cxCarpeta+frmAXV.dbNombre + '.fdb'
  else if frmAXV.cxProtocolo ='2'
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
  if strgComplementos.RowCount>1 then strgComplementos.ClearRows(1,strgComplementos.RowCount-1);
  strgComplementos.RowCount:=1;
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
      + '   and r.articulo_id_ori = ' + articulo_id_ori);
    ExecQuery;
    if fn('articulo').AsString <> '' then begin
      while not eof do begin
        strgComplementos.AddRow;
        strgComplementos.Cells[cClave,strgComplementos.RowCount-1] :=fn('clave').AsString;
        strgComplementos.Cells[cNombre,strgComplementos.RowCount-1]:=fn('articulo').AsString;
        strgComplementos.Cells[cArticulo_id,strgComplementos.RowCount-1]:=fn('articulo_id_dest').AsString;
        strgComplementos.Cells[cRelacion_id,strgComplementos.RowCount-1]:=fn('articulo_rel_id').AsString;
        strgComplementos.Cells[cNotas,strgComplementos.RowCount-1]:=fn('notas').AsWideString;
        strgComplementos.Cells[cPiezas,strgComplementos.RowCount-1]:=fn('unidades_relacionadas').AsString;
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
  if sstrgAlternativas.RowCount>1 then sstrgAlternativas.ClearRows(1,sstrgAlternativas.RowCount);
  sstrgAlternativas.RowCount:=1;
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
        sstrgAlternativas.AddRow;
        sstrgAlternativas.Cells[cClave,sstrgAlternativas.RowCount-1]:=fn('clave').AsString;
        sstrgAlternativas.Cells[cNombre,sstrgAlternativas.RowCount-1]:=fn('articulo').AsString;
        sstrgAlternativas.Cells[cArticulo_id,sstrgAlternativas.RowCount-1]:=fn('articulo_id_dest').AsString;
        sstrgAlternativas.Cells[cRelacion_id,sstrgAlternativas.RowCount-1]:=fn('articulo_rel_id').AsString;
        sstrgAlternativas.Cells[cNotas,sstrgAlternativas.RowCount-1]:=fn('notas').AsWideString;
        sstrgAlternativas.Cells[cPiezas,sstrgAlternativas.RowCount-1]:=fn('unidades_relacionadas').AsString;
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
  i:integer;
begin
  if fqDummy.dbtTransaccion.Active then fqDummy.dbtTransaccion.Commit;
  fqDummy.dbtTransaccion.Active:=true;
  for i:=1 to frmAXV.strgComplementos.RowCount-1 do begin
    with fqDummy.figQuery do begin
      Close;
      SQL.Clear;
      SQL.Add('update or insert into lm_articulos_rel (articulo_rel_id, articulo_id_ori, articulo_id_dest,unidades_relacionadas, notas,tipo_relacion)');
      if strgComplementos.Cells[cRelacion_id,i] = ''
      then SQL.Add('values  ((gen_id(id_articulos_rel,1))')
      else SQL.Add('values  ('+sstrgAlternativas.Cells[cRelacion_id,i]);
      SQL.Add(' ,' + articulo_id_ori //id_ori
        + ' ,' + sstrgAlternativas.Cells[cArticulo_id,i] //id_dest
        + ' ,' + sstrgAlternativas.Cells[cPiezas,i] //unidades_relacionadas
        + ' ,' + QuotedStr(sstrgAlternativas.Cells[cNotas,i]) //notas
        + ' ,''A'')' //tipo_relacion
        + ' matching (articulo_rel_id)');
      //ShowMessage(SQL.GetText);
      ExecQuery;
    end;//with
  end;//for
  if fqDummy.dbtTransaccion.Active then fqDummy.dbtTransaccion.Commit;
end;

//INSERTA COMPLEMENTOS EN LA BASE DE DATOS
procedure TfrmAXV.axv_GuardarComplementos(articulo_id_ori:string);
var
  i:integer;
begin
  for i:=1 to frmAXV.strgComplementos.RowCount-1 do begin
    with fqDummy.figQuery do begin
      Close;
      SQL.Clear;
      SQL.Add('update or insert into lm_articulos_rel (articulo_rel_id, articulo_id_ori, articulo_id_dest,unidades_relacionadas, notas,tipo_relacion)');
      if strgComplementos.Cells[cRelacion_id,i] = ''
      then SQL.Add('values  ((gen_id(id_articulos_rel,1))')
      else SQL.Add('values ('+strgComplementos.Cells[cRelacion_id,i]);
      SQL.Add(' ,' + articulo_id_ori //id_ori
        + ' ,' + strgComplementos.Cells[cArticulo_id,i] //id_dest
        + ' ,' + strgComplementos.Cells[cPiezas,i] //unidades_relacionadas
        + ' ,' + QuotedStr(strgComplementos.Cells[cNotas,i]) //notas
        + ' ,''C'')' //tipo_relacion
        + ' matching (articulo_rel_id)');
      //ShowMessage(SQL.GetText);
      ExecQuery;
    end;//with
  end;//for
  if fqDummy.dbtTransaccion.Active then fqDummy.dbtTransaccion.Commit;
end;

//CONSULTA EL DOCUMENTO ORIGEN PARA EVITAR QUE LO MODIFIQUEN
Function DummyUpdate(articulo_id_ori:string):boolean;
var
  intentar:Boolean;
begin
  Result:=false;
  intentar:=true;
  fqDummy:=TdmQuerys.Create(nil);
  fqDummy.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqDummy.dbtTransaccion.Active:=true;
  fqDummy.figQuery.Database:=dbConectar.idbDatabase;
  with fqDummy.figQuery do
    Repeat try
      close;
      SQL.Clear;
      SQL.Add('update lm_articulos_rel set articulo_rel_id = articulo_rel_id'
        + ' where articulo_id_ori = ' +  articulo_id_ori);
      ExecQuery;
      intentar:=false;
      Result:=true;
    Except
      case Application.MessageBox('Esta relación esta siendo modificado por otro usuario' + #13#10
          + '¿Desea volver a intentar conectarse?','Error',Mb_YesNo+Mb_IconInformation) of
          id_Yes: intentar:=true;
          id_No: intentar:=false;
      end;//case
    end;//try
  until intentar=false;
end;

//TERMINA LA CONSULTA "Dummy"
procedure LiberarDummy;
begin
  if fqDummy.dbtTransaccion.Active then fqDummy.dbtTransaccion.Commit;
  FreeAndNil(fqDummy);
end;

procedure TfrmAXV.FormShow(Sender: TObject);
begin
  dbNombre   :='LUMI 2018';
  dbUsuario  :='SYSDBA';
  dbPass     :='LUM10309';
  cxTipo     :='0';
  cxNombre   :='Mi_PC';
  cxServidor :='192.168.4.9';
  cxProtocolo:='0';
  cxCarpeta  :='C:\Microsip datos\';
  ConectarADB;
  articulo_id:='263059';
  axv_CargarComplementos(articulo_id);
  axv_CargarAlternativas(articulo_id);
  strgComplementos.HideColumn(cArticulo_id);
  strgComplementos.HideColumn(cRelacion_id);
  sstrgAlternativas.HideColumn(cArticulo_id);
  sstrgAlternativas.HideColumn(cRelacion_id);
  sstrgAlternativas.HideColumn(cPiezas);
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
//var
  //fqGuardar:TdmQuerys;
begin
  {fqGuardar:=TdmQuerys.Create(nil);
  fqGuardar.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqGuardar.dbtTransaccion.Active:=true;
  fqGuardar.figQuery.Database:=dbConectar.idbDatabase;}
  if fqDummy.dbtTransaccion.Active then fqDummy.dbtTransaccion.Commit;
  fqDummy.dbtTransaccion.Active:=true;
  with fqDummy.figQuery do begin
    Close;
    SQL.Clear;
    SQL.Add('delete from lm_Articulos_Rel '
      + ' where articulo_rel_id = ' + Rel_Id
      + ' and tipo_relacion =' + QuotedStr(TipoRel));
    ExecQuery;
  end;//with
  if fqDummy.dbtTransaccion.Active then fqDummy.dbtTransaccion.Commit;
//  FreeAndNil(fqDummy);
end;

procedure TfrmAXV.sstrgAlternativasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key=46) and (ssCtrl in shift)then
    if (sstrgAlternativas.Row=2) then begin
      if (sstrgAlternativas.Cells[cRelacion_id,sstrgAlternativas.Row]<>'') then axv_BorrarRelacion('C',sstrgAlternativas.Cells[cRelacion_id,sstrgAlternativas.Row]);
      sstrgAlternativas.ClearRows(sstrgAlternativas.Row,1);
    end else begin
      sstrgAlternativas.RemoveRows(sstrgAlternativas.Row,1);
    end;
  If (key=38) and (sstrgAlternativas.RowCount>2) then begin
    if (sstrgAlternativas.Cells[cArticulo_id,sstrgAlternativas.Row]<>'') then axv_BorrarRelacion('C',sstrgAlternativas.Cells[cRelacion_id,sstrgAlternativas.Row]);
    sstrgAlternativas.RowCount:=sstrgAlternativas.RowCount-1;
    Abort;
  end;
  if (key=40) and (sstrgAlternativas.Cells[cArticulo_id,sstrgAlternativas.Row]<>'') and (sstrgAlternativas.Row=sstrgAlternativas.RowCount-1)
  then sstrgAlternativas.AddRow;
end;

procedure TfrmAXV.strgComplementosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key=46) and (ssCtrl in shift)then
    if (strgComplementos.Row=2) then begin
      if (strgComplementos.Cells[cRelacion_id,strgComplementos.Row]<>'') then axv_BorrarRelacion('C',strgComplementos.Cells[cRelacion_id,strgComplementos.Row]);
      strgComplementos.ClearRows(strgComplementos.Row,1);
    end else begin
      if (strgComplementos.Cells[cRelacion_id,strgComplementos.Row]<>'') then axv_BorrarRelacion('C',strgComplementos.Cells[cRelacion_id,strgComplementos.Row]);
      strgComplementos.RemoveRows(strgComplementos.Row,1);
    end;
  If (key=38) and (strgComplementos.RowCount>2) and (strgComplementos.Cells[cArticulo_id,strgComplementos.Row]='') then begin
    strgComplementos.RowCount:=strgComplementos.RowCount-1;
    Abort;
  end;
  if (key=40) and (strgComplementos.Cells[cArticulo_id,strgComplementos.Row]<>'') and (strgComplementos.Row=strgComplementos.RowCount-1)
  then strgComplementos.AddRow;
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
  Guardar.Execute;
  Self.Close;
end;

Procedure TfrmAXV.axv_getArticulo(grd:TAdvStringGrid;columna,fila:integer; nombre,clave,art_id:string);
var
  fqCargar:TdmQuerys;
begin
  fqCargar:=TdmQuerys.Create(nil);
  fqCargar.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqCargar.figQuery.Database:=dbConectar.idbDatabase;
  fqCargar.dbtTransaccion.Active:=true;
  with fqCargar.figQuery do begin
    Close;
    SQL.Clear;
    if columna=cNombre then
      SQL.Add('select a.nombre, a.articulo_id, ca.clave_articulo'
          + ' from articulos as a'
          + ' left join claves_articulos as ca on a.articulo_id = ca.articulo_id'
          + ' where a.nombre = ' + QuotedStr(nombre))
    else if columna=cClave then
      SQL.Add('select a.nombre, a.articulo_id, ca.clave_articulo'
          + ' from articulos as a'
          + ' left join claves_articulos as ca on a.articulo_id = ca.articulo_id'
          + ' where ca.clave_articulo = ' + QuotedStr(clave))
    else if columna=cArticulo_id then
      SQL.Add('select a.nombre, a.articulo_id, ca.clave_articulo'
          + ' from articulos as a'
          + ' left join claves_articulos as ca on a.articulo_id = ca.articulo_id'
          + ' where a.articulo_id = ' + QuotedStr(art_id));
    ExecQuery;
    IF fn('nombre').AsString<>'' then begin
      grd.Cells[cClave,fila]:=(fn('clave_articulo').AsString);
      grd.Cells[cNombre,fila]:=(fn('nombre').AsString);
      grd.Cells[cArticulo_id,fila]:=fn('articulo_id').AsString;
      grd.Ints[cPiezas,fila]:=1;
    end;
  end;//with
  fqCargar.dbtTransaccion.Commit;
  FreeAndNil(fqCargar);
end;

procedure TfrmAXV.EliminarExecute(Sender: TObject);
var
  i:integer;
begin
  DummyUpdate(articulo_id);
  case MessageDlg('¿Desea eliminar permanentemente las alternativas'
      + #13#10 + 'y artículos complementarios de este artículo?',mtConfirmation,[mbYes,mbNo],0)
  of mrYes: begin
    for i:=1 to sstrgAlternativas.RowCount-1 do axv_BorrarRelacion('A',sstrgAlternativas.Cells[cRelacion_id,i]);
      sstrgAlternativas.ClearRows(1,sstrgAlternativas.RowCount-1);
      sstrgAlternativas.RowCount:=2;
    for i:=1 to strgComplementos.RowCount-1 do axv_BorrarRelacion('C',strgComplementos.Cells[cRelacion_id,i]);
      strgComplementos.ClearRows(1,strgComplementos.RowCount-1);
      strgComplementos.RowCount:=2;
    end;
  end;//CASE
  LiberarDummy;
end;

procedure TfrmAXV.EliminarAlternativaExecute(Sender: TObject);
begin
  if (sstrgAlternativas.Cells[cRelacion_id,sstrgAlternativas.Row] = '') and (sstrgAlternativas.Row>0)
  then sstrgAlternativas.RemoveRows(sstrgAlternativas.Row,1)
  else if (sstrgAlternativas.Row>0) then axv_BorrarRelacion('A',sstrgAlternativas.Cells[cRelacion_id,sstrgAlternativas.Row]);
end;

procedure TfrmAXV.EliminarComplementoExecute(Sender: TObject);
begin
  if (strgComplementos.Cells[cRelacion_id,strgComplementos.Row] = '') and (strgComplementos.Row>0)
  then strgComplementos.RemoveRows(strgComplementos.Row,1)
  else if (strgComplementos.Row>0) then axv_BorrarRelacion('C',strgComplementos.Cells[cRelacion_id,strgComplementos.Row]);
end;

procedure TfrmAXV.strgComplementosCellValidate(Sender: TObject; ACol,
  ARow: Integer; var Value: String; var Valid: Boolean);
var
  nombre,clave,art_id:string;
begin
  if ((aCol=cNombre) or (acol=cClave)) and (strgComplementos.Cells[cArticulo_id,aRow]='') then begin
    case ACol of
      cNombre: nombre:=Value;
      cClave: clave:=Value;
      cArticulo_id:art_id:=Value;
    end;
    axv_getArticulo(strgComplementos,ACol,Arow,nombre,clave,art_id);
  end;
end;

procedure TfrmAXV.ModificarExecute(Sender: TObject);
begin
  DummyUpdate(articulo_id);
  Eliminar.Enabled:=False;
  Modificar.Enabled:=False;
  strgComplementos.Enabled:=True;
  if strgComplementos.RowCount=1 then strgComplementos.AddRow;
  sstrgAlternativas.Enabled:=True;
  if sstrgAlternativas.RowCount=1 then sstrgAlternativas.AddRow;
  NuevaAlternativa.Enabled:=True;
  NuevoComplemento.Enabled:=true;
  EliminarAlternativa.Enabled:=True;
  EliminarComplemento.Enabled:=True;
end;

procedure TfrmAXV.sstrgAlternativasCellValidate(Sender: TObject; ACol,
  ARow: Integer; var Value: String; var Valid: Boolean);
var
  nombre,clave,art_id:string;
begin
  if ((aCol=cNombre) or (acol=cClave)) and (sstrgAlternativas.Cells[cArticulo_id,aRow]='') then begin
    case ACol of
      cNombre: nombre:=Value;
      cClave: clave:=Value;
      cArticulo_id:art_id:=Value;
    end;
    axv_getArticulo(sstrgAlternativas,ACol,Arow,nombre,clave,art_id);
  end;
end;

procedure TfrmAXV.GuardarExecute(Sender: TObject);
begin
  if not Modificar.Enabled then begin
    if sstrgAlternativas.RowCount>1 then axv_GuardarAlternativas(articulo_id);
    if strgComplementos.RowCount>1 then axv_GuardarComplementos(articulo_id);
    LiberarDummy;
    sstrgAlternativas.Enabled:=False;
    strgComplementos.Enabled:=False;
    axv_CargarComplementos(articulo_id);
    axv_CargarAlternativas(articulo_id);
    EliminarAlternativa.Enabled:=false;
    EliminarComplemento.Enabled:=false;
    NuevaAlternativa.Enabled:=false;
    NuevoComplemento.Enabled:=false;
    Eliminar.Enabled:=True;
    Modificar.Enabled:=True;
  end;
end;

procedure TfrmAXV.MostrarAlternativasExecute(Sender: TObject);
begin
  FrmMostrarRelaciones:=TFrmMostrarRelaciones.Create(nil);
  FrmMostrarRelaciones.dbNombre:=dbNombre;   //  'Prueba_Diagonal';
  FrmMostrarRelaciones.dbUsuario:=dbUsuario;  //  '16ANTONIOG';
  FrmMostrarRelaciones.dbPass:=dbPass;     //  '123456';
  FrmMostrarRelaciones.cxTipo:=cxTipo;     //  '1 local; 0 remoto';
  FrmMostrarRelaciones.cxNombre:=cxNombre;   //  'Local,16Lumi, conexion, etc';
  FrmMostrarRelaciones.cxCarpeta:=cxCarpeta;  //  ''C:\Microsip datos\';
  FrmMostrarRelaciones.cxServidor:=cxServidor; //  '192.168.3.6; cualquiera que sea el servidor microsip';
  FrmMostrarRelaciones.cxProtocolo:=cxProtocolo; //  0: tcp/ip 1: net/bieu   2: spx
  FrmMostrarRelaciones.articulo_id:=articulo_id;
  FrmMostrarRelaciones.relacion:='A';
  FrmMostrarRelaciones.ShowModal;
  FreeAndNil(FrmMostrarRelaciones);
end;

procedure TfrmAXV.MostrarComplementosExecute(Sender: TObject);
begin
  FrmMostrarRelaciones:=TFrmMostrarRelaciones.Create(nil);
  FrmMostrarRelaciones.dbNombre:=dbNombre;   //  'Prueba_Diagonal';
  FrmMostrarRelaciones.dbUsuario:=dbUsuario;  //  '16ANTONIOG';
  FrmMostrarRelaciones.dbPass:=dbPass;     //  '123456';
  FrmMostrarRelaciones.cxTipo:=cxTipo;     //  '1 local; 0 remoto';
  FrmMostrarRelaciones.cxNombre:=cxNombre;   //  'Local,16Lumi, conexion, etc';
  FrmMostrarRelaciones.cxCarpeta:=cxCarpeta;  //  ''C:\Microsip datos\';
  FrmMostrarRelaciones.cxServidor:=cxServidor; //  '192.168.3.6; cualquiera que sea el servidor microsip';
  FrmMostrarRelaciones.cxProtocolo:=cxProtocolo; //  0: tcp/ip 1: net/bieu   2: spx
  FrmMostrarRelaciones.articulo_id:=articulo_id;
  FrmMostrarRelaciones.relacion:='C';
  FrmMostrarRelaciones.ShowModal;
  FreeAndNil(FrmMostrarRelaciones);
end;

procedure TfrmAXV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(dbConectar);
  FreeAndNil(fqDummy);
end;

procedure TfrmAXV.sstrgAlternativasEllipsClick(Sender: TObject; ACol,
  ARow: Integer; var S: String);
Var
  filas, columnas:integer;
begin
 {   if((sstrgAlternativas.Col = cClave) or (sstrgAlternativas.Col = cNombre)) then begin
    frmBuscarCliente:=TfrmBuscarCliente.Create(self);
    frmBuscarCliente.dbNombre := dbNombre;
    frmBuscarCliente.dbUsuario := dbUsuario;
    frmBuscarCliente.dbPass:= dbPass;
    frmBuscarCliente.cxTipo := cxTipo;
    frmBuscarCliente.cxNombre := cxNombre;
    frmBuscarCliente.cxServidor := cxServidor;
    frmBuscarCliente.cxProtocolo := cxProtocolo;
    frmBuscarCliente.cxCarpeta := cxCarpeta;
    if grdArticulos.Col = cClave then begin
      frmBuscarCliente.tipoBusqueda:='Clave';
      frmBuscarCliente.edtClave.text:=sstrgAlternativas.Cells[cClave,grdArticulos.Row];
    end else if grdArticulos.col = cNombre then begin
      frmBuscarCliente.tipoBusqueda:='Nombre';
      frmBuscarCliente.edtClave.text:=sstrgAlternativas.Cells[cNombre,grdArticulos.Row];
    end;
    frmBuscarCliente.origenBusqueda:='Artículo';
    frmBuscarCliente.ShowModal;
    if frmBuscarCliente.resultadoClave <> '' then begin
      sstrgAlternativas.Cells[cClave,grdArticulos.Row]:=frmBuscarCliente.resultadoClave;
      sstrgAlternativas.Cells[cNombre,grdArticulos.Row]:=frmBuscarCliente.resultadoNombre;
      sstrgAlternativas.Cells[cArticulo_id_dest,grdArticulos.Row]:=frmBuscarCliente.resultadoID;
    end;
    FreeAndNil(frmBuscarCliente);
  end;   }
end;

procedure TfrmAXV.sstrgAlternativasButtonClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  ShowMessage('');
end;

end.
