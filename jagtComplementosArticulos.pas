unit jagtComplementosArticulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, AdvPageControl, ComCtrls,
  StdCtrls, AdvEdit, AdvEdBtn, AdvCombo, AdvToolBar, AdvToolBarStylers,
  ActnList, ImgList, Menus, AdvMenus, AdvStickyPopupMenu;

type
  Tfrmjagt = class(TForm)
    PGCArticulos: TAdvPageControl;
    tabGeneral: TAdvTabSheet;
    tabAlternativas: TAdvTabSheet;
    tabComplementos: TAdvTabSheet;
    sstrgAlternativas: TAdvStringGrid;
    strgComplementos: TAdvStringGrid;
    cbxLineas: TAdvComboBox;
    cbxUnidadMedida: TAdvComboBox;
    cbxEstatus: TAdvComboBox;
    edtNombre: TAdvEditBtn;
    edtClave: TAdvEditBtn;
    cbAlmacenable: TCheckBox;
    cbJuego: TCheckBox;
    cbPesarEnBascula: TCheckBox;
    edtPesoUnit: TAdvEdit;
    AdvDPAcciones: TAdvDockPanel;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    ATBMenues: TAdvToolBar;
    ATBBotones: TAdvToolBar;
    AdvToolBarMenuButton1: TAdvToolBarMenuButton;
    AdvToolBarMenuButton2: TAdvToolBarMenuButton;
    AdvToolBarMenuButton3: TAdvToolBarMenuButton;
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
    ATBBGuardarCerrar: TAdvToolBarButton;
    imgMenus: TImageList;
    ATBBGuardarNuevo: TAdvToolBarButton;
    ATBS1: TAdvToolBarSeparator;
    ATBBModificar: TAdvToolBarButton;
    ATBBEliminar: TAdvToolBarButton;
    ATBS2: TAdvToolBarSeparator;
    AdvStickyPopupMenu1: TAdvStickyPopupMenu;
    AdvPopupMenu1: TAdvPopupMenu;
    Nuevaalternativa1: TMenuItem;
    Nuevocomplemento1: TMenuItem;
    axv_PopMenuAlternativas: TAdvPopupMenu;
    Nuevaalternativa2: TMenuItem;
    Eliminaralternativa1: TMenuItem;
    axv_PopMenuComplementos: TAdvPopupMenu;
    EliminarComplemento1: TMenuItem;
    EliminarComplemento2: TMenuItem;
    AdvToolBarOfficeStyler2: TAdvToolBarOfficeStyler;
    Nuevo1: TMenuItem;
    N1: TMenuItem;
    Guardar1: TMenuItem;
    Guardarycerrar1: TMenuItem;
    Guardarynuevo1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure axv_BorrarRelacion(TipoRel,Rel_Id:string);
    procedure axv_CargarComplementos(articulo_id_ori:string);
    procedure axv_CargarAlternativas(articulo_id_ori:string);
    procedure axv_GuardarComplementos(articulo_id_ori:string);
    procedure axv_GuardarAlternativas(articulo_id_ori:string);
    procedure axv_getArticulo(grd:TAdvStringGrid; columna,fila:integer; nombre,clave,art_id:string);
    procedure NuevaAlternativaExecute(Sender: TObject);
    procedure NuevoComplementoExecute(Sender: TObject);
    procedure edtClaveExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PGCArticulosChange(Sender: TObject);
    procedure edtClaveKeyPress(Sender: TObject; var Key: Char);
    procedure edtClaveClickBtn(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure edtNombreClickBtn(Sender: TObject);
    procedure edtNombreExit(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure GuardarCerrarExecute(Sender: TObject);
    procedure GuardarNuevoExecute(Sender: TObject);
    procedure EliminarExecute(Sender: TObject);
    procedure EliminarAlternativaExecute(Sender: TObject);
    procedure EliminarComplementoExecute(Sender: TObject);
    procedure sstrgAlternativasCellValidate(Sender: TObject; ACol,
      ARow: Integer; var Value: String; var Valid: Boolean);
    procedure strgComplementosCellValidate(Sender: TObject; ACol,
      ARow: Integer; var Value: String; var Valid: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    dbNombre,   //  'Prueba_Diagonal';
    dbUsuario,  //  '16ANTONIOG';
    dbPass,     //  '123456';
    cxTipo,     //  '1 local; 0 remoto';
    cxNombre,   //  'Local,16Lumi, conexion, etc';
    cxCarpeta,  //  ''C:\Microsip datos\';
    cxServidor, //  '192.168.3.6; cualquiera que sea el servidor microsip';
    cxProtocolo //  0: tcp/ip 1: net/bieu   2: spx
    : string;
    articulo_id : string;
    es_nuevo : boolean;
  end;

var
  frmjagt: Tfrmjagt;

implementation
uses Database, Query, FIBQuery, pFIBQuery, DateUtils, buscarclientes, db_operaciones,
  Math;
var
  dbConectar:TdmDataBase;
  fqDummy:TdmQuerys;
  articulo_anterior, nombre_anterior : string;

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
  if frmjagt.cxTipo ='1' then//Es local
        dbConectar.idbDatabase.DatabaseName := 'localhost:'+ frmjagt.cxCarpeta + frmjagt.dbNombre + '.fdb'
  else if frmjagt.cxProtocolo ='0'
    then dbConectar.idbDatabase.DatabaseName := frmjagt.cxServidor+':'+frmjagt.cxCarpeta+frmjagt.dbNombre + '.fdb'
  else if frmjagt.cxProtocolo ='1'
    then dbConectar.idbDatabase.DatabaseName := '\\'+frmjagt.cxServidor+'\'+frmjagt.cxCarpeta+frmjagt.dbNombre + '.fdb'
  else if frmjagt.cxProtocolo ='2'
    then dbConectar.idbDatabase.DatabaseName := frmjagt.cxServidor+'@'+frmjagt.cxCarpeta+frmjagt.dbNombre + '.fdb';
  dbConectar.idbDatabase.DBParams.Clear;
  dbConectar.idbDatabase.DBParams.Add('user_name=' + frmjagt.dbUsuario);
  dbConectar.idbDatabase.DBParams.Add('password=' + frmjagt.dbPass);
  dbConectar.idbDatabase.DBParams.Add('sql_role_name=USUARIO_MICROSIP');
     try dbConectar.idbDatabase.Connected := True;
        Result := True;
     except
        MessageDlg('El nombre de usuario o la contraseña no son válidos para el Servidor de la conexión "' + frmjagt.cxNombre +
           '".' + #13#10 + 'Escriba los datos correctamente o consulte al Administrador del sistema.',mtError,[mbOK],0);
        result:=false;
     end;//try
end;

//RECUPERAR LOS COMPLEMENTOS DEL ARTICULO ELEGIDO
procedure Tfrmjagt.axv_CargarComplementos(articulo_id_ori:string);
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
      + '   and r.articulo_id_ori = '
      + articulo_id_ori);
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
procedure Tfrmjagt.axv_cargarAlternativas(articulo_id_ori:string);
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
procedure Tfrmjagt.axv_GuardarAlternativas(articulo_id_ori:string);
var
  i:integer;
begin
  if fqDummy.dbtTransaccion.Active then fqDummy.dbtTransaccion.Commit;
  fqDummy.dbtTransaccion.Active:=true;
  for i:=1 to frmjagt.sstrgAlternativas.RowCount-1 do begin
    with fqDummy.figQuery do begin
      Close;
      SQL.Clear;
      SQL.Add('update or insert into lm_articulos_rel (articulo_rel_id, articulo_id_ori, articulo_id_dest,unidades_relacionadas, notas,tipo_relacion)');
      if sstrgAlternativas.Cells[cRelacion_id,i] = ''
      then SQL.Add('values  ((gen_id(id_articulos_rel,1))')
      else SQL.Add('values  ('+sstrgAlternativas.Cells[cRelacion_id,i]);
      SQL.Add(' ,' + articulo_id_ori //id_ori
        + ' ,' + sstrgAlternativas.Cells[cArticulo_id,i] //id_dest
        + ' ,' + sstrgAlternativas.Cells[cPiezas,i] //unidades_relacionadas
        + ' ,' + QuotedStr(sstrgAlternativas.Cells[cNotas,i]) //notas
        + ' ,''A'')' //tipo_relacion
        + ' matching (articulo_rel_id)');
      ExecQuery;
    end;//with
  end;//for
  if fqDummy.dbtTransaccion.Active then fqDummy.dbtTransaccion.Commit;
end;

//INSERTA COMPLEMENTOS EN LA BASE DE DATOS
procedure Tfrmjagt.axv_GuardarComplementos(articulo_id_ori:string);
var
  i:integer;
begin
  for i:=1 to frmjagt.strgComplementos.RowCount-1 do begin
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
inputbox ('','',sql.Text);
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

procedure limpia_formulario ();
begin
    frmjagt.edtclave.text := '';
    frmjagt.edtNombre.text := '';
    frmjagt.text := '';
    frmjagt.cbxLineas.text := '';
    frmjagt.cbxUnidadMedida.text := '';
    frmjagt.cbAlmacenable.Checked := false;
    frmjagt.cbJuego.Checked := false;
    frmjagt.cbPesarEnBascula.Checked := false;
    frmjagt.edtPesoUnit.text := '';
    frmjagt.cbxEstatus.text := '';
    articulo_anterior := '';
    nombre_anterior := '';
end;

procedure manipula_formulario (ct: TDMQuerys);
begin
  with ct do
  begin
    frmjagt.edtNombre.text := dmQuerys.figQuery.FldByName['ar_nom'].AsString;
    frmjagt.Text := frmjagt.edtNombre.text; //edtClave.Text;
    frmjagt.cbxLineas.Text := dmQuerys.figQuery.FldByName['la_nom'].AsString;
    frmjagt.cbxUnidadMedida.Text := dmQuerys.figQuery.FldByName['unidad_venta'].AsString;
    frmjagt.cbAlmacenable.Checked := dmQuerys.figQuery.FldByName['es_almacenable'].AsString = 'S';
    frmjagt.cbJuego.Checked := dmQuerys.figQuery.FldByName['es_juego'].AsString = 'S';
    frmjagt.cbPesarEnBascula.Checked := dmQuerys.figQuery.FldByName['es_peso_variable'].AsString = 'S';
    frmjagt.edtPesoUnit.Text := dmQuerys.figQuery.FldByName['peso_unitario'].AsString;
    frmjagt.cbxEstatus.Text := dmQuerys.figQuery.FldByName['ar_st'].AsString;
  end;
end;

Procedure Tfrmjagt.axv_getArticulo(grd:TAdvStringGrid;columna,fila:integer; nombre,clave,art_id:string);
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

procedure Tfrmjagt.FormCreate(Sender: TObject);
begin
  es_nuevo:= true;
  articulo_anterior := '';
  PGCArticulos.ActivePageIndex := 0;
  dbNombre    :=ParamStr(1);//  'Prueba_Diagonal';
  dbUsuario   :=ParamStr(2);//  '16ANTONIOG';
  dbPass      :=ParamStr(3);//  '123456';
  cxTipo      :=ParamStr(4);//  '1';
  cxNombre    :=ParamStr(5);//  'Local';
  cxCarpeta   :=ParamStr(6);//  ''C:\Microsip datos\';
  if cxtipo = '0' then
  begin
    cxServidor  :=ParamStr(7);//  '';
    cxProtocolo :=ParamStr(8);//  '';
    es_nuevo := ParamStr(9) = '1';
    edtClave.Text := ParamStr(10);
  end
  else
  begin
    es_nuevo := ParamStr(7) = '1';
    edtClave.Text := ParamStr(8);
  end;
  ConectarADB;

end;

procedure Tfrmjagt.FormShow(Sender: TObject);
begin
  Application.CreateForm(TfrmBuscarCliente, frmBuscarCliente);
//  frmBuscarCliente.dbConectar := dbConectar;
//  frmBuscarCliente.buscar_y_cerrar := true;
  frmBuscarCliente.dbNombre   :=dbNombre   ;
  frmBuscarCliente.dbUsuario  :=dbUsuario  ;
  frmBuscarCliente.dbPass     :=dbPass     ;
  frmBuscarCliente.cxTipo     :=cxTipo     ;
  frmBuscarCliente.cxNombre   :=cxNombre   ;
  frmBuscarCliente.cxServidor :=cxServidor ;
  frmBuscarCliente.cxProtocolo:=cxProtocolo;
  frmBuscarCliente.cxCarpeta  :=cxCarpeta  ;
  if es_nuevo then
  begin
    edtclave.text := '';
    edtclave.setfocus;
    ATBBModificar.Enabled := false;
    ATBBEliminar.Enabled := false;
    exit;
  end;
  if not es_nuevo then
  begin
    ATBBModificar.Enabled := true;
    ATBBEliminar.Enabled := true;
//    articulo_anterior := edtClave.Text;
    edtClaveExit(self);
  strgComplementos.HideColumn(cArticulo_id);
  strgComplementos.HideColumn(cRelacion_id);
  sstrgAlternativas.HideColumn(cArticulo_id);
  sstrgAlternativas.HideColumn(cRelacion_id);
  sstrgAlternativas.HideColumn(cPiezas);
  end;
  if edtClave.Text <> '' then
  edtClave.SetFocus;
end;
procedure Tfrmjagt.NuevaAlternativaExecute(Sender: TObject);
begin
  sstrgAlternativas.AddRow;
end;

procedure Tfrmjagt.NuevoComplementoExecute(Sender: TObject);
begin
  strgComplementos.AddRow;
end;

procedure Tfrmjagt.axv_BorrarRelacion(TipoRel,Rel_Id:string);
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

procedure Tfrmjagt.edtClaveExit(Sender: TObject);
var
  text_consulta : string;
begin
  if edtClave.Text <> '' then
  begin
    text_consulta := 'select articulo_id from claves_articulos where clave_articulo = ' + quotedstr(edtClave.Text);
//    InputBox('','',text_consulta);
    if articulo_anterior = edtClave.Text then
      exit;
    articulo_anterior := edtClave.Text;
    ejecuta_consulta_lectura(dbConectar,dmQuerys,text_consulta);
    if dmQuerys.figQuery.RecordCount = 0 then
    begin
      MessageDlg('La clave del artículo '+ edtClave.Text + ' no se encuentra registrada.'
        + #13#10 + 'Puede localizar el artículo por medio de la clave o del nombre.'
        + #13#10 + 'Para buscarlo oprima la tecla F4.', mtError, [mbOK],0);
      edtClave.SetFocus;
      exit;
    end;
    articulo_id := dmQuerys.figQuery.FldByName['articulo_id'].AsString;
    text_consulta := 'select ar.nombre ar_nom, la.nombre la_nom, unidad_venta, es_almacenable, es_juego,es_peso_variable,peso_unitario,ar.estatus ar_st from articulos ar inner join lineas_articulos la    on (la.linea_articulo_id = ar.linea_articulo_id) where articulo_id = ' + articulo_id;
    InputBox('','',text_consulta);
    ejecuta_consulta_lectura(dbConectar,dmQuerys,text_consulta);
    manipula_formulario(dmQuerys);

    axv_CargarComplementos(articulo_id);
    axv_CargarAlternativas(articulo_id);
  end;
end;

procedure Tfrmjagt.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then frmjagt.Perform(WM_NEXTDLGCTL, 0, 0);
  if key = #27 then
    Self.Close;
end;

procedure Tfrmjagt.PGCArticulosChange(
  Sender: TObject);
begin
  if (edtClave.Text='') or (edtNombre.Text='')
  then begin
    MessageDlg('El árticulo no ha sido indicado.'
      + #13#10 + 'Indiquelo antes de continuar.',mtError,[mbOk],0);
    PGCArticulos.ActivePageIndex:=0;
  end;
end;

procedure Tfrmjagt.edtClaveKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key=#13 then frmjagt.Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure Tfrmjagt.edtClaveClickBtn(
  Sender: TObject);
begin
  frmBuscarCliente.edt_Clave.Text := '';
  if edtClave.Text <> '' then
  frmBuscarCliente.edt_Clave.text := edtClave.text;

  frmBuscarCliente.tipoBusqueda := 'Clave';
  frmBuscarCliente.origenBusqueda := 'Artículo';
  frmBuscarCliente.edt_Clave.Text := edtclave.text;

  frmBuscarCliente.ShowModal;

end;

procedure Tfrmjagt.ModificarExecute(
  Sender: TObject);
begin
//
end;

procedure Tfrmjagt.edtNombreClickBtn(
  Sender: TObject);
begin
  frmBuscarCliente.edt_Clave.Text := '';
  if edtClave.Text <> '' then
  frmBuscarCliente.edt_Clave.text := edtNombre.text;

  frmBuscarCliente.tipoBusqueda := 'Nombre';
  frmBuscarCliente.origenBusqueda := 'Artículo';
  frmBuscarCliente.edt_Clave.Text := edtnombre.text;

  frmBuscarCliente.ShowModal;


end;

procedure Tfrmjagt.edtNombreExit(Sender: TObject);
var
  text_consulta : string;
begin
  if edtClave.Text <> '' then
  begin
    text_consulta := 'select articulo_id from articulos where nombre = ' + quotedstr(edtnombre.Text);
    InputBox('','',text_consulta);
    if nombre_anterior = edtnombre.Text then
      exit;
    nombre_anterior := edtnombre.Text;
    ejecuta_consulta_lectura(dbConectar,dmQuerys,text_consulta);
    if dmQuerys.figQuery.RecordCount = 0 then
    begin
      MessageDlg('El nombre del artículo '+ edtnombre.Text + ' no se encuentra registrado.'
        + #13#10 + 'Puede localizar el artículo por medio de la clave o del nombre.'
        + #13#10 + 'Para buscarlo oprima la tecla F4.', mtError, [mbOK],0);
      edtnombre.SetFocus;
      exit;
    end;
    articulo_id := dmQuerys.figQuery.FldByName['articulo_id'].AsString;
    text_consulta := 'select ar.nombre ar_nom, la.nombre la_nom, unidad_venta, es_almacenable, es_juego,es_peso_variable,peso_unitario,ar.estatus ar_st from articulos ar inner join lineas_articulos la    on (la.linea_articulo_id = ar.linea_articulo_id) where articulo_id = ' + articulo_id;
    InputBox('','',text_consulta);
    ejecuta_consulta_lectura(dbConectar,dmQuerys,text_consulta);
    manipula_formulario (dmQuerys);

    axv_CargarComplementos(articulo_id);
    axv_CargarAlternativas(articulo_id);
  end;

end;

procedure Tfrmjagt.NuevoExecute(Sender: TObject);
begin
  ATBBModificar.Enabled := false;
  ATBBEliminar.Enabled := false;
  PGCArticulos.ActivePageIndex := 0;
  limpia_formulario;
  edtClave.SetFocus;

end;

procedure Tfrmjagt.GuardarExecute(
  Sender: TObject);
begin
//
end;

procedure Tfrmjagt.GuardarCerrarExecute(
  Sender: TObject);
begin
  axv_GuardarComplementos(articulo_id);
  axv_GuardarAlternativas(articulo_id);
  Self.Close;
end;

procedure Tfrmjagt.GuardarNuevoExecute(
  Sender: TObject);
begin
//
end;

procedure Tfrmjagt.EliminarExecute(
  Sender: TObject);
var
  i:integer;
begin
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
  end;
end;

procedure Tfrmjagt.EliminarAlternativaExecute(
  Sender: TObject);
begin
//
end;

procedure Tfrmjagt.EliminarComplementoExecute(
  Sender: TObject);
begin
//
end;

procedure Tfrmjagt.sstrgAlternativasCellValidate(
  Sender: TObject; ACol, ARow: Integer; var Value: String;
  var Valid: Boolean);
var
  nombre,clave,art_id:string;
begin
  if ((aCol=cNombre) or (acol=cClave)) and (strgComplementos.Cells[cArticulo_id,aRow]='') then begin
    case ACol of
      cNombre: nombre:=Value;
      cClave: clave:=Value;
      cArticulo_id:art_id:=Value;
    end;
    axv_getArticulo(sstrgAlternativas,ACol,Arow,nombre,clave,art_id);
  end;
end;

procedure Tfrmjagt.strgComplementosCellValidate(
  Sender: TObject; ACol, ARow: Integer; var Value: String;
  var Valid: Boolean);
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


end.
