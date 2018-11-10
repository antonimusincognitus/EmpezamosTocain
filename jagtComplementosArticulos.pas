unit jagtComplementosArticulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, AdvPageControl, ComCtrls,
  StdCtrls, AdvEdit, AdvEdBtn, AdvCombo, AdvToolBar, AdvToolBarStylers,
  ActnList, ImgList, Menus, AdvMenus, AdvStickyPopupMenu;

type
  Tjagt_frmArticulosComplementarios = class(TForm)
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
    articulo : string;
    es_nuevo : boolean;
  end;

var
  jagt_frmArticulosComplementarios: Tjagt_frmArticulosComplementarios;

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
  if jagt_frmArticulosComplementarios.cxTipo ='1' then//Es local
        dbConectar.idbDatabase.DatabaseName := 'localhost:'+ jagt_frmArticulosComplementarios.cxCarpeta + jagt_frmArticulosComplementarios.dbNombre + '.fdb'
  else if jagt_frmArticulosComplementarios.cxProtocolo ='0'
    then dbConectar.idbDatabase.DatabaseName := jagt_frmArticulosComplementarios.cxServidor+':'+jagt_frmArticulosComplementarios.cxCarpeta+jagt_frmArticulosComplementarios.dbNombre + '.fdb'
  else if jagt_frmArticulosComplementarios.cxProtocolo ='1'
    then dbConectar.idbDatabase.DatabaseName := '\\'+jagt_frmArticulosComplementarios.cxServidor+'\'+jagt_frmArticulosComplementarios.cxCarpeta+jagt_frmArticulosComplementarios.dbNombre + '.fdb'
  else if jagt_frmArticulosComplementarios.cxProtocolo ='2'
    then dbConectar.idbDatabase.DatabaseName := jagt_frmArticulosComplementarios.cxServidor+'@'+jagt_frmArticulosComplementarios.cxCarpeta+jagt_frmArticulosComplementarios.dbNombre + '.fdb';
  dbConectar.idbDatabase.DBParams.Clear;
  dbConectar.idbDatabase.DBParams.Add('user_name=' + jagt_frmArticulosComplementarios.dbUsuario);
  dbConectar.idbDatabase.DBParams.Add('password=' + jagt_frmArticulosComplementarios.dbPass);
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
procedure Tjagt_frmArticulosComplementarios.axv_CargarComplementos(articulo_id_ori:string);
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
procedure Tjagt_frmArticulosComplementarios.axv_cargarAlternativas(articulo_id_ori:string);
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
procedure Tjagt_frmArticulosComplementarios.axv_GuardarAlternativas(articulo_id_ori:string);
var
  fqGuardar:TdmQuerys;
  i:integer;
begin
  fqGuardar:=TdmQuerys.Create(nil);
  fqGuardar.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqGuardar.dbtTransaccion.Active:=true;
  fqGuardar.figQuery.Database:=dbConectar.idbDatabase;
  for i:=1 to jagt_frmArticulosComplementarios.strgComplementos.RowCount-1 do begin
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
procedure Tjagt_frmArticulosComplementarios.axv_GuardarComplementos(articulo_id_ori:string);
var
  fqGuardar:TdmQuerys;
  i:integer;
begin
  fqGuardar:=TdmQuerys.Create(nil);
  fqGuardar.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqGuardar.dbtTransaccion.Active:=true;
  fqGuardar.figQuery.Database:=dbConectar.idbDatabase;
  for i:=1 to jagt_frmArticulosComplementarios.strgComplementos.RowCount-1 do begin
    with fqGuardar.figQuery do begin
      Close;
      SQL.Clear;
      if strgComplementos.Cells[cRelacion_id,i] = ''
      then SQL.Add('insert into lm_Articulos_Rel values (gen_id(id_articulos_rel,1)'
        + ' ,' + articulo_id_ori //id_ori
        + ' ,' + strgComplementos.Cells[cArticulo_id,i] //id_dest
        + ' ,' + strgComplementos.Cells[cPiezas,i] //unidades_relacionadas
        + ' ,' + quotedstr(strgComplementos.Cells[cNotas,i]) //notas
        + ' ,''C'')') //tipo_relacion
      else SQL.Add('update lm_Articulos_rel set'
        + 'articulo_id_dest = ' + strgComplementos.Cells[cArticulo_id,i] //id_dest
        + ', unidades_relacionadas = ' + strgComplementos.Cells[cPiezas,i] //unidades_relacionadas
        + ', notas = ' + QuotedStr(strgComplementos.cells[cNotas,i]) //notas
        + 'where articulo_rel_id = ' + strgComplementos.Cells[cRelacion_id,i]);
inputbox ('','',sql.Text);
      ExecQuery;
    end;//with
  end;//for
  if fqGuardar.dbtTransaccion.Active then fqGuardar.dbtTransaccion.Commit;
  FreeAndNil(fqGuardar);
end;

procedure limpia_formulario ();
begin
    jagt_frmArticulosComplementarios.edtclave.text := '';
    jagt_frmArticulosComplementarios.edtNombre.text := '';
    jagt_frmArticulosComplementarios.text := '';
    jagt_frmArticulosComplementarios.cbxLineas.text := '';
    jagt_frmArticulosComplementarios.cbxUnidadMedida.text := '';
    jagt_frmArticulosComplementarios.cbAlmacenable.Checked := false;
    jagt_frmArticulosComplementarios.cbJuego.Checked := false;
    jagt_frmArticulosComplementarios.cbPesarEnBascula.Checked := false;
    jagt_frmArticulosComplementarios.edtPesoUnit.text := '';
    jagt_frmArticulosComplementarios.cbxEstatus.text := '';
    articulo_anterior := '';
    nombre_anterior := '';
end;

procedure manipula_formulario (ct: TDMQuerys);
begin
  with ct do
  begin
    jagt_frmArticulosComplementarios.edtNombre.text := dmQuerys.figQuery.FldByName['ar_nom'].AsString;
    jagt_frmArticulosComplementarios.Text := jagt_frmArticulosComplementarios.edtNombre.text; //edtClave.Text;
    jagt_frmArticulosComplementarios.cbxLineas.Text := dmQuerys.figQuery.FldByName['la_nom'].AsString;
    jagt_frmArticulosComplementarios.cbxUnidadMedida.Text := dmQuerys.figQuery.FldByName['unidad_venta'].AsString;
    jagt_frmArticulosComplementarios.cbAlmacenable.Checked := dmQuerys.figQuery.FldByName['es_almacenable'].AsString = 'S';
    jagt_frmArticulosComplementarios.cbJuego.Checked := dmQuerys.figQuery.FldByName['es_juego'].AsString = 'S';
    jagt_frmArticulosComplementarios.cbPesarEnBascula.Checked := dmQuerys.figQuery.FldByName['es_peso_variable'].AsString = 'S';
    jagt_frmArticulosComplementarios.edtPesoUnit.Text := dmQuerys.figQuery.FldByName['peso_unitario'].AsString;
    jagt_frmArticulosComplementarios.cbxEstatus.Text := dmQuerys.figQuery.FldByName['ar_st'].AsString;
  end;
end;

Procedure Tjagt_frmArticulosComplementarios.axv_getArticulo(grd:TAdvStringGrid;columna,fila:integer; nombre,clave,art_id:string);
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

procedure Tjagt_frmArticulosComplementarios.FormCreate(Sender: TObject);
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

procedure Tjagt_frmArticulosComplementarios.FormShow(Sender: TObject);
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
  end;
  if edtClave.Text <> '' then
  edtClave.SetFocus;
end;
procedure Tjagt_frmArticulosComplementarios.NuevaAlternativaExecute(Sender: TObject);
begin
  sstrgAlternativas.AddRow;
end;

procedure Tjagt_frmArticulosComplementarios.NuevoComplementoExecute(Sender: TObject);
begin
  strgComplementos.AddRow;
end;

procedure Tjagt_frmArticulosComplementarios.axv_BorrarRelacion(TipoRel,Rel_Id:string);
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

procedure Tjagt_frmArticulosComplementarios.edtClaveExit(Sender: TObject);
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
    articulo := dmQuerys.figQuery.FldByName['articulo_id'].AsString;
    text_consulta := 'select ar.nombre ar_nom, la.nombre la_nom, unidad_venta, es_almacenable, es_juego,es_peso_variable,peso_unitario,ar.estatus ar_st from articulos ar inner join lineas_articulos la    on (la.linea_articulo_id = ar.linea_articulo_id) where articulo_id = ' + articulo;
    InputBox('','',text_consulta);
    ejecuta_consulta_lectura(dbConectar,dmQuerys,text_consulta);
    manipula_formulario(dmQuerys);

    axv_CargarComplementos(articulo);
    axv_CargarAlternativas(articulo);
  end;
end;

procedure Tjagt_frmArticulosComplementarios.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then jagt_frmArticulosComplementarios.Perform(WM_NEXTDLGCTL, 0, 0);
  if key = #27 then
    Self.Close;
end;

procedure Tjagt_frmArticulosComplementarios.PGCArticulosChange(
  Sender: TObject);
begin
  if (edtClave.Text='') or (edtNombre.Text='')
  then begin
    MessageDlg('El árticulo no ha sido indicado.'
      + #13#10 + 'Indiquelo antes de continuar.',mtError,[mbOk],0);
    PGCArticulos.ActivePageIndex:=0;
  end;
end;

procedure Tjagt_frmArticulosComplementarios.edtClaveKeyPress(
  Sender: TObject; var Key: Char);
begin
  if Key=#13 then jagt_frmArticulosComplementarios.Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure Tjagt_frmArticulosComplementarios.edtClaveClickBtn(
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

procedure Tjagt_frmArticulosComplementarios.ModificarExecute(
  Sender: TObject);
begin
//
end;

procedure Tjagt_frmArticulosComplementarios.edtNombreClickBtn(
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

procedure Tjagt_frmArticulosComplementarios.edtNombreExit(Sender: TObject);
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
    articulo := dmQuerys.figQuery.FldByName['articulo_id'].AsString;
    text_consulta := 'select ar.nombre ar_nom, la.nombre la_nom, unidad_venta, es_almacenable, es_juego,es_peso_variable,peso_unitario,ar.estatus ar_st from articulos ar inner join lineas_articulos la    on (la.linea_articulo_id = ar.linea_articulo_id) where articulo_id = ' + articulo;
    InputBox('','',text_consulta);
    ejecuta_consulta_lectura(dbConectar,dmQuerys,text_consulta);
    manipula_formulario (dmQuerys);

    axv_CargarComplementos(articulo);
    axv_CargarAlternativas(articulo);
  end;

end;

procedure Tjagt_frmArticulosComplementarios.NuevoExecute(Sender: TObject);
begin
  ATBBModificar.Enabled := false;
  ATBBEliminar.Enabled := false;
  PGCArticulos.ActivePageIndex := 0;
  limpia_formulario;
  edtClave.SetFocus;

end;

procedure Tjagt_frmArticulosComplementarios.GuardarExecute(
  Sender: TObject);
begin
//
end;

procedure Tjagt_frmArticulosComplementarios.GuardarCerrarExecute(
  Sender: TObject);
begin
  axv_GuardarComplementos(articulo);
  axv_GuardarAlternativas(articulo);
  Self.Close;
end;

procedure Tjagt_frmArticulosComplementarios.GuardarNuevoExecute(
  Sender: TObject);
begin
//
end;

procedure Tjagt_frmArticulosComplementarios.EliminarExecute(
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

procedure Tjagt_frmArticulosComplementarios.EliminarAlternativaExecute(
  Sender: TObject);
begin
//
end;

procedure Tjagt_frmArticulosComplementarios.EliminarComplementoExecute(
  Sender: TObject);
begin
//
end;

procedure Tjagt_frmArticulosComplementarios.sstrgAlternativasCellValidate(
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

procedure Tjagt_frmArticulosComplementarios.strgComplementosCellValidate(
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
