unit localizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, AdvEdit, AdvPageControl, ComCtrls,
  AdvEdBtn, AdvCombo, PlannerDatePicker, Grids, AdvObj, BaseGrid, AdvGrid,
  ExtCtrls, AdvDateTimePicker;

type
  TfrmLocalizar = class(TForm)
    pgControlLocalizar: TAdvPageControl;
    Folio: TAdvTabSheet;
    Cliente: TAdvTabSheet;
    edtFolio: TAdvEdit;
    btnAceptar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    edtClaveCliente: TAdvEditBtn;
    edtNombreCliente: TAdvEditBtn;
    cbxEstatus: TAdvComboBox;
    AdvDateTimePicker2: TAdvDateTimePicker;
    AdvDateTimePicker3: TAdvDateTimePicker;
    Panel1: TPanel;
    grdFolios: TAdvStringGrid;
    lblContador: TLabel;
    btnMostrar: TAdvGlowButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure edtFolioChange(Sender: TObject);
    procedure pgControlLocalizarChange(Sender: TObject);
    procedure pgControlLocalizarResize(Sender: TObject);
    procedure edtClaveClienteExit(Sender: TObject);
    procedure edtNombreClienteChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure edtClaveClienteClickBtn(Sender: TObject);
    procedure edtNombreClienteClickBtn(Sender: TObject);
  private
    { Private declarations }
  public
    clienteID:string;
    dbNombre,dbUsuario,dbPass,cxTipo,cxNombre,cxServidor,cxProtocolo,cxCarpeta:string;
    { Public declarations }
  end;

var
  frmLocalizar: TfrmLocalizar;

implementation
uses Database, Query, FIBQuery, StrUtils, buscarclientes, Math;
var
  dbConectar:TdmDataBase;
  fqDummy:TdmQuerys;
const
  cFecha=0;
  cFolio=1;
  cEstatus=2;
  cVigencia=3;
  cDescripcion=4;
  cDocto_ve_id=5;

{$R *.dfm}

procedure TfrmLocalizar.btnCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

Function cargarFolio:string ;
var
  i: integer;
  serie, ceros, num: string;
begin
  num:=frmLocalizar.edtFolio.Text;
  ceros:=StringOfChar('0',9-length(num));
  for i:=1 to Min(3,length(frmLocalizar.edtFolio.Text)) do
  begin
    try
      StrToInt(frmLocalizar.edtFolio.Text[i]);
    except
      begin
        serie:=copy(frmLocalizar.edtFolio.Text,1,i);
        num:=copy(frmLocalizar.edtFolio.Text,i+1,length(frmLocalizar.edtFolio.text));
      end;//excep
    end;//try
  end;//for
  Result:=serie+ceros+num;
end;

//VALIDA LA CONEXION AL SERVIDOR
function ConectarADB: Boolean;
begin
  Result := False;
  dbConectar:= TdmDataBase.Create(nil);
{
  if frmCotizacion.cxTipo ='1' then//Es local
        dbConectar.idbDatabase.DatabaseName := 'localhost:'+ frmCotizacion.cxCarpeta + frmCotizacion.dbNombre + '.fdb'
  else if frmCotizacion.cxProtocolo ='0'
    then dbConectar.idbDatabase.DatabaseName := frmCotizacion.cxServidor+':'+frmCotizacion.cxCarpeta+frmCotizacion.dbNombre + '.fdb'
  else if frmCotizacion.cxProtocolo ='1'
    then dbConectar.idbDatabase.DatabaseName := '\\'+frmCotizacion.cxServidor+'\'+frmCotizacion.cxCarpeta+frmCotizacion.dbNombre + '.fdb'
  else if frmCotizacion.cxProtocolo ='2'
    then dbConectar.idbDatabase.DatabaseName := frmCotizacion.cxServidor+'@'+frmCotizacion.cxCarpeta+frmCotizacion.dbNombre + '.fdb';
  dbConectar.idbDatabase.DBParams.Clear;
  dbConectar.idbDatabase.DBParams.Add('user_name=' + frmCotizacion.dbUsuario);
  dbConectar.idbDatabase.DBParams.Add('password=' + frmCotizacion.dbPass);
  dbConectar.idbDatabase.DBParams.Add('sql_role_name=USUARIO_MICROSIP');
     try dbConectar.idbDatabase.Connected := True;
        Result := True;
     except
        MessageDlg('El nombre de usuario o la contraseña no son válidos para el Servidor de la conexión "' + frmCotizacion.cxNombre +
           '".' + #13#10 + 'Escriba los datos correctamente o consulte al Administrador del sistema.',mtError,[mbOK],0);
        result:=false;
     end;//try
}
end;

procedure TfrmLocalizar.edtFolioChange(Sender: TObject);
begin
  if edtFolio.Text<>'' then btnAceptar.Enabled:=true;
end;

procedure TfrmLocalizar.pgControlLocalizarChange(Sender: TObject);
begin
  if pgControlLocalizar.ActivePage=Folio
  then pgControlLocalizar.Height:= 60
  else pgControlLocalizar.Height:=313;
  btnAceptar.Top:= pgControlLocalizar.Height+17;
  btnCancelar.Top:= btnAceptar.Top;
  self.Height:= pgControlLocalizar.Height+83;
end;

procedure TfrmLocalizar.pgControlLocalizarResize(Sender: TObject);
begin
  if pgControlLocalizar.ActivePage=Folio
  then pgControlLocalizar.Height:= 60
  else pgControlLocalizar.Height:=313;
  btnAceptar.Top:= pgControlLocalizar.Height+17;
  btnCancelar.Top:= btnAceptar.Top;
  self.Height:= pgControlLocalizar.Height+83;
end;

Function getClaveCliente:Boolean;
var
  fqClave:TdmQuerys;
begin
  fqClave:= TdmQuerys.Create(nil);
  fqClave.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqClave.figQuery.Database:=dbConectar.idbDatabase;
  with fqClave.figQuery do begin
    Close;
    SQL.Clear;
    SQL.Add('select k.clave_cliente, c.nombre, c.cliente_id from claves_clientes as k'
      + ' inner join clientes as c on c.cliente_id = k.cliente_id'
      + ' where c.nombre = ' + QuotedStr(frmLocalizar.edtNombreCliente.Text));
    ExecQuery;
    if fn('clave_cliente').AsString ='' then begin
       MessageDlg('El nombre del cliente no se encuantra registrado.'
        + #13#10 + 'Para buscarlo oprima la tecla F4.',mtError,mbOKCancel,0);
       Result:=false;
      end
    else begin
        Result:= true;
        frmLocalizar.edtNombreCliente.Text:=fn('nombre').AsString;
        frmLocalizar.edtClaveCliente.Text:=fn('clave_cliente').AsString;
        frmLocalizar.clienteID:=fn('cliente_id').asString;
      end
  end; //with
  if fqClave.dbtTransaccion.Active then fqClave.dbtTransaccion.Commit;
  FreeAndNil(fqClave);
end;

Function getNombreCliente:Boolean;
var
  fqCliente:TdmQuerys;
begin
  fqCliente:= TdmQuerys.Create(nil);
  fqCliente.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqCliente.figQuery.Database:=dbConectar.idbDatabase;
  with fqCliente.figQuery do begin
    Close;
    SQL.Clear;
    SQL.Add('select c.nombre, c.cliente_id, k.clave_cliente from clientes as c'
        + ' inner join claves_clientes as k on c.cliente_id = k.cliente_id'
        + ' where k.clave_cliente = ' + QuotedStr(frmLocalizar.edtClaveCliente.Text));
    ExecQuery;
    if fn('clave_cliente').AsString ='' then begin
        MessageDlg('La clave del cliente no se encuantra registrada.'
          + #13#10 + 'Puede localizar al cliente por medio de la clave o el nombre.'
          + #13#10 + 'Para buscarlo oprima la tecla F4.',mtError,mbOkCancel,0);
        Result:=False;
      end
    else begin
        Result:=true;
        frmLocalizar.edtNombreCliente.Text:=fn('nombre').AsString;
        frmLocalizar.edtClaveCliente.Text:=fn('clave_cliente').AsString;
        frmLocalizar.clienteID:=fn('cliente_id').asString;
      end;
  end; //with
  if fqCliente.dbtTransaccion.Active then fqCliente.dbtTransaccion.Commit;
  FreeAndNil(fqCliente);
end;

procedure TfrmLocalizar.edtClaveClienteExit(Sender: TObject);
var
  auxNombre,auxClave:string;
begin
  auxNombre:=edtNombreCliente.Text;
  auxClave:=edtClaveCliente.Text;
  if getNombreCliente then btnAceptar.Enabled:=True
  else begin
    edtNombreCliente.Text:=auxNombre;
    edtClaveCliente.Text:=auxClave;
  end;
end;

procedure TfrmLocalizar.edtNombreClienteChange(Sender: TObject);
var
  auxNombre,auxClave:string;
begin
  auxNombre:=edtNombreCliente.Text;
  auxClave:=edtClaveCliente.Text;
  if getClaveCliente then btnMostrar.Enabled:=True
  else begin
    edtNombreCliente.Text:=auxNombre;
    edtClaveCliente.Text:=auxClave;
  end;
end;

procedure TfrmLocalizar.FormShow(Sender: TObject);
begin
  ConectarADB;
  grdFolios.HideColumn(cDocto_ve_id);
end;

Function quitarCeros(folio:string):string;
var
  i:integer;
begin
  for i:=0 to length(folio) do
  folio:= AnsiReplaceText(folio[i],'0','');
  ShowMessage(folio);
end;

procedure TfrmLocalizar.btnMostrarClick(Sender: TObject);
var
  fqDoctos:TdmQuerys;
  i:integer;
begin
  i:=1;
  fqDoctos:= TdmQuerys.Create(nil);
  fqDoctos.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqDoctos.figQuery.Database:=dbConectar.idbDatabase;
  with fqDoctos.figQuery do begin
    Close;
    SQL.Clear;
    SQL.Add('select d.folio, d.fecha, d.estatus, d.descripcion, d.docto_ve_id, d.fecha_vigencia_entrega from doctos_ve as d'
        + ' inner join clientes as c on c.cliente_id = d.cliente_id'
        + ' where d.tipo_docto = ''C'''
        + ' and c.cliente_id = ' + clienteID
        + ' and d.fecha <= ' + QuotedStr(FormatDateTime('dd.mm.yyyy',AdvDateTimePicker3.Date))
        + ' and d.fecha >= ' + QuotedStr(FormatDateTime('dd.mm.yyyy',AdvDateTimePicker2.Date)));
    IF cbxEstatus.ItemIndex=0 then SQL.Add(' and d.estatus = ''P''')
    else if cbxEstatus.ItemIndex=1 then SQL.Add(' and d.estatus = ''E''')
    else if cbxEstatus.ItemIndex=2 then SQL.Add(' and d.estatus = ''C''');
    ExecQuery;
    IF fn('docto_ve_id').AsString <>'' then while not eof do begin
      //ShowMessage(IntToStr(i));
      grdFolios.RowCount:=i+1;
      grdFolios.Cells[cFecha,i]:=fn('fecha').AsString;
      grdFolios.Cells[cFolio,i]:=fn('Folio').AsString;
      If fn('estatus').AsString = 'E' then grdFolios.Cells[cEstatus,i]:='Cerrado';
      If fn('estatus').AsString = 'C' then grdFolios.Cells[cEstatus,i]:='Cancelado';
      If fn('estatus').AsString = 'P' then grdFolios.Cells[cEstatus,i]:='Pendiente';
      grdFolios.Cells[cDescripcion,i]:=fn('descripcion').AsString;
      grdFolios.Cells[cDocto_ve_id,i]:=fn('docto_ve_id').AsString;
      grdFolios.Cells[cVigencia,i]:=fn('fecha_vigencia_entrega').AsString;
      i:=i+1;
      Next;
    end;
  end;
  fqDoctos.dbtTransaccion.Commit;
  FreeAndNil(fqDoctos);
  lblContador.Caption:= IntToStr(grdFolios.RowCount) + ' Cotizaciones';
end;

procedure TfrmLocalizar.btnAceptarClick(Sender: TObject);
var
  fqDocumento:TdmQuerys;
begin
  fqDocumento:= TdmQuerys.Create(nil);
  fqDocumento.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqDocumento.figQuery.Database:=dbConectar.idbDatabase;
  with fqDocumento.figQuery do begin
    Close;
    SQL.Clear;
    if pgControlLocalizar.ActivePageIndex=0 then
      SQL.Add('select d.*, c.nombre From doctos_ve as d'
        + ' left join clientes as c on d.cliente_id=c.cliente_id'
        + ' where d.tipo_docto = ''C'' '
        + ' and d.folio = ' + QuotedStr(cargarFolio))
    else SQL.Add('Select d.*, c.nombre from doctos_ve as d'
        + ' left join clientes as c on d.cliente_id=c.cliente_id'
        + ' where d.tipo_docto = ''C'' '
        + ' and d.docto_ve_id = ' + grdFolios.Cells[cDocto_ve_id,grdFolios.Row]);
    try ExecQuery;
      if fn('docto_ve_id').AsString =''
      then MessageDlg('La cotización no se encuentra registrada.',mtError,[mbOK],0)
      else begin
{
        frmCotizacion.edtClave.Text:=fn('clave_cliente').AsString;
        frmCotizacion.edtNombre.Text:=fn('nombre').AsString;
        frmCotizacion.cbxSerie.Text:=fn('folio').AsString;
        frmCotizacion.viaEmbarque_id:=fn('via_embarque_id').AsString;
        frmCotizacion.moneda_id:=fn('moneda_id').AsInteger;
        frmCotizacion.folio_id:=fn('docto_ve_id').AsString;
        frmCotizacion.nombreCliente:=fn('nombre').AsString;
        frmCotizacion.claveCliente:=fn('vlave_cliente').AsString;
        frmCotizacion.clienteID:=fn('cliente_id').AsString;
        frmCotizacion.vendedor_id:=fn('vendedor_id').AsString;
        frmCotizacion.direccion_id:=fn('dir_consig_id').AsString;
        frmCotizacion.condicion_id:=fn('cond_pago_id').AsString;
        frmCotizacion.tipo_de_cambio:=fn('tipo_cambio').AsExtended;
        frmCotizacion.timePikerFecha.Date:=fn('fecha').AsDateTime;
        frmCotizacion.TimePickerVigencia.Date:=fn('fecha_vigencia_entrega').AsDateTime;
        //frmCotizacion.memoDescripcion.Text:=fn('descripcion').AsWideString;
}
      end;//if
    except ShowMessage(SQL.Text);
    end;//TRY
  end;//
  fqDocumento.dbtTransaccion.Commit;
  FreeAndNil(fqDocumento);
  frmLocalizar.Close;
end;

procedure TfrmLocalizar.edtClaveClienteClickBtn(Sender: TObject);
begin
  frmBuscarCliente:=TfrmBuscarCliente.Create(self);
  frmBuscarCliente.dbNombre := dbNombre;
  frmBuscarCliente.dbUsuario := dbUsuario;
  frmBuscarCliente.dbPass := dbPass;
  frmBuscarCliente.cxTipo := cxTipo;
  frmBuscarCliente.cxNombre := cxNombre;
  frmBuscarCliente.cxServidor := cxServidor;
  frmBuscarCliente.cxProtocolo := cxProtocolo;
  frmBuscarCliente.cxCarpeta := cxCarpeta;
  frmBuscarCliente.tipoBusqueda:='Clave';
  frmBuscarCliente.origenBusqueda:='Cliente';
//  frmBuscarCliente.edtClave.text:=frmCotizacion.edtNombre.Text;
  frmBuscarCliente.ShowModal;
  if (frmBuscarCliente.resultadoClave <> '') or (frmBuscarCliente.resultadoNombre <> '') then begin
    edtNombreCliente.Text:=frmBuscarCliente.resultadoNombre;
    edtClaveCliente.Text:=frmBuscarCliente.resultadoClave;
    clienteID:=frmBuscarCliente.resultadoID;
  end;
  FreeAndNil(frmBuscarCliente);
end;

procedure TfrmLocalizar.edtNombreClienteClickBtn(Sender: TObject);
begin
  frmBuscarCliente:=TfrmBuscarCliente.Create(self);
  frmBuscarCliente.dbNombre := dbNombre;
  frmBuscarCliente.dbUsuario := dbUsuario;
  frmBuscarCliente.dbPass:= dbPass;
  frmBuscarCliente.cxTipo := cxTipo;
  frmBuscarCliente.cxNombre := cxNombre;
  frmBuscarCliente.cxServidor := cxServidor;
  frmBuscarCliente.cxProtocolo := cxProtocolo;
  frmBuscarCliente.cxCarpeta := cxCarpeta;
  frmBuscarCliente.tipoBusqueda:='Nombre';
  frmBuscarCliente.origenBusqueda:='Cliente';
//  frmBuscarCliente.edtClave.text:=frmCotizacion.edtNombre.Text;
  frmBuscarCliente.ShowModal;
  if (frmBuscarCliente.resultadoClave <> '') or (frmBuscarCliente.resultadoNombre <> '') then begin
    edtNombreCliente.Text:=frmBuscarCliente.resultadoNombre;
    edtClaveCliente.Text:=frmBuscarCliente.resultadoClave;
    clienteID:=frmBuscarCliente.resultadoID;
  end;
  FreeAndNil(frmBuscarCliente);
end;

end.
