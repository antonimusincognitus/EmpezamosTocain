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
    AdvToolBarButton1: TAdvToolBarButton;
    AdvStickyPopupMenu1: TAdvStickyPopupMenu;
    AdvPopupMenu1: TAdvPopupMenu;
    Nuevaalternativa1: TMenuItem;
    Nuevocomplemento1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtClaveExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PGCArticulosChange(Sender: TObject);
    procedure edtClaveKeyPress(Sender: TObject; var Key: Char);
    procedure edtClaveClickBtn(Sender: TObject);
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

procedure Tjagt_frmArticulosComplementarios.FormCreate(Sender: TObject);
begin
  es_nuevo:= true;
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
  frmBuscarCliente.tipoBusqueda := 'Clave';
  frmBuscarCliente.origenBusqueda := 'Artículo';
  frmBuscarCliente.edt_Clave := edtclave;
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
    edtclave.text := 'Buscar';
    edtclave.setfocus;
    exit;
  end;
  if edtClave.Text <> 'Buscar' then
  edtClave.SetFocus;
end;

procedure Tjagt_frmArticulosComplementarios.edtClaveExit(Sender: TObject);
var
  text_consulta : string;
begin
  if edtClave.Text <> 'Buscar' then
  begin
    jagt_frmArticulosComplementarios.Text := edtClave.Text;
    text_consulta := 'select articulo_id from claves_articulos where clave_articulo = ' + quotedstr(edtClave.Text);
    InputBox('','',text_consulta);
    ejecuta_consulta_lectura(dbConectar,dmQuerys,text_consulta);
    if dmQuerys.figQuery.RecordCount = 0 then
    begin
      MessageDlg('La clave del artículo '+ edtClave.Text + ' no se encuentra registrada.'
        + #13#10 + 'Puede localizar el artículo por medio de la clave o del nombre.'
        + #13#10 + 'Para buscarlo oprima la tecla F4.', mtError, [mbOK],0);
      edtClave.SetFocus;
      exit;
    end
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
  if (edtClave.Text='Buscar') or (edtNombre.Text='Buscar')
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
  if edtClave.Text <> 'Buscar' then
  frmBuscarCliente.edt_Clave.text := edtClave.text;
  frmBuscarCliente.ShowModal;

end;

end.
