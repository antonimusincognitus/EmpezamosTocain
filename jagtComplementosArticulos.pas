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
  end;

var
  jagt_frmArticulosComplementarios: Tjagt_frmArticulosComplementarios;

implementation
uses Database, Query, FIBQuery, pFIBQuery, DateUtils,
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
    edtClave.Text := ParamStr(9);
  end
  else
  begin
    edtClave.Text := ParamStr(7);
    ShowMessage(articulo);
  end;
  ConectarADB;

end;

procedure Tjagt_frmArticulosComplementarios.FormShow(Sender: TObject);
begin

{
  {
  dbNombre   :='CORREOS';
  dbUsuario  :='SYSDBA ';
  dbPass     :='LUM10309';
  cxTipo     :='1';
  cxNombre   :='Mi_PC';
  cxServidor :='192.168.4.9';
  cxProtocolo:='0';
  cxCarpeta  :='C:\Users\lumi\Documents\Cursos Delphi\bases de datos\';
//  ConectarADB;}
}
}
  edtClave.SetFocus;
end;

procedure Tjagt_frmArticulosComplementarios.edtClaveExit(Sender: TObject);
begin
  if edtClave.Text <> 'Buscar' then
  begin
    jagt_frmArticulosComplementarios.Text := edtClave.Text;
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

end.
