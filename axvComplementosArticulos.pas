unit axvComplementosArticulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, AdvPageControl, ComCtrls,
  StdCtrls, AdvEdit, AdvEdBtn, AdvCombo, AdvToolBar, AdvToolBarStylers,
  ActnList, ImgList, Menus, AdvMenus, AdvStickyPopupMenu;

type
  Taxv_frmArticulosComplementarios = class(TForm)
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
    AdvMainMenu1: TAdvMainMenu;
    Archivo1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  es_nuevo : boolean;
  end;

var
  axv_frmArticulosComplementarios: Taxv_frmArticulosComplementarios;

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
  if axv_frmArticulosComplementarios.cxTipo ='1' then//Es local
        dbConectar.idbDatabase.DatabaseName := 'localhost:'+ axv_frmArticulosComplementarios.cxCarpeta + axv_frmArticulosComplementarios.dbNombre + '.fdb'
  else if axv_frmArticulosComplementarios.cxProtocolo ='0'
    then dbConectar.idbDatabase.DatabaseName := axv_frmArticulosComplementarios.cxServidor+':'+axv_frmArticulosComplementarios.cxCarpeta+axv_frmArticulosComplementarios.dbNombre + '.fdb'
  else if axv_frmArticulosComplementarios.cxProtocolo ='1'
    then dbConectar.idbDatabase.DatabaseName := '\\'+axv_frmArticulosComplementarios.cxServidor+'\'+axv_frmArticulosComplementarios.cxCarpeta+axv_frmArticulosComplementarios.dbNombre + '.fdb'
  else if axv_frmArticulosComplementarios.cxProtocolo ='2'
    then dbConectar.idbDatabase.DatabaseName := axv_frmArticulosComplementarios.cxServidor+'@'+axv_frmArticulosComplementarios.cxCarpeta+axv_frmArticulosComplementarios.dbNombre + '.fdb';
  dbConectar.idbDatabase.DBParams.Clear;
  dbConectar.idbDatabase.DBParams.Add('user_name=' + axv_frmArticulosComplementarios.dbUsuario);
  dbConectar.idbDatabase.DBParams.Add('password=' + axv_frmArticulosComplementarios.dbPass);
  dbConectar.idbDatabase.DBParams.Add('sql_role_name=USUARIO_MICROSIP');
     try dbConectar.idbDatabase.Connected := True;
        Result := True;
     except
        MessageDlg('El nombre de usuario o la contraseña no son válidos para el Servidor de la conexión "' + axv_frmArticulosComplementarios.cxNombre +
           '".' + #13#10 + 'Escriba los datos correctamente o consulte al Administrador del sistema.',mtError,[mbOK],0);
        result:=false;
     end;//try
end;

procedure Taxv_frmArticulosComplementarios.FormCreate(Sender: TObject);
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

procedure Taxv_frmArticulosComplementarios.FormShow(Sender: TObject);
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

end.
