unit buscarclientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid, AdvEdit, ExtCtrls;

type
  TfrmBuscarCliente = class(TForm)
    cbxCoincidirMayusculas: TCheckBox;
    cbxPalabras: TCheckBox;
    edt_Clave: TAdvEdit;
    lbllistaClentes: TLabel;
    sgBusqueda: TAdvStringGrid;
    btnBuscar: TButton;
    btnAceptar: TButton;
    btnCancelar: TButton;
    lblCantidadClientes: TLabel;
    Bevel1: TBevel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure edt_ClaveChange_(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_ClaveValueValidate(Sender: TObject; Value: String;
      var IsValid: Boolean);
    procedure edt_ClaveChange(Sender: TObject);
  private
    { Private declarations }
  public
    dbNombre,dbUsuario,dbPass,cxTipo,cxNombre,cxServidor,cxProtocolo,cxCarpeta:string;
    resultadoClave, resultadoNombre, resultadoID, tipoBusqueda, origenBusqueda:string;
    { Public declarations }
  end;

var
  frmBuscarCliente: TfrmBuscarCliente;

implementation
uses Database, Query, FIBQuery, pFIBQuery;
var
  dbConectar:TdmDataBase;
const
  cClave=0;
  cNombre=1;
  cID=2;
{$R *.dfm}

function ConectarADB: Boolean;
begin
  Result := False;
  dbConectar:= TdmDataBase.Create(nil);
  if frmBuscarCliente.cxTipo ='1' then//Es local
        dbConectar.idbDatabase.DatabaseName := 'localhost:'+ frmBuscarCliente.cxCarpeta + frmBuscarCliente.dbNombre + '.fdb'
  else if frmBuscarCliente.cxProtocolo ='0'
    then dbConectar.idbDatabase.DatabaseName := frmBuscarCliente.cxServidor+':'+frmBuscarCliente.cxCarpeta+frmBuscarCliente.dbNombre + '.fdb'
  else if frmBuscarCliente.cxProtocolo ='1'
    then dbConectar.idbDatabase.DatabaseName := '\\'+frmBuscarCliente.cxServidor+'\'+frmBuscarCliente.cxCarpeta+frmBuscarCliente.dbNombre + '.fdb'
  else if frmBuscarCliente.cxProtocolo ='2'
    then dbConectar.idbDatabase.DatabaseName := frmBuscarCliente.cxServidor+'@'+frmBuscarCliente.cxCarpeta+frmBuscarCliente.dbNombre + '.fdb';
  dbConectar.idbDatabase.DBParams.Clear;
  dbConectar.idbDatabase.DBParams.Add('user_name=' + frmBuscarCliente.dbUsuario);
  dbConectar.idbDatabase.DBParams.Add('password=' + frmBuscarCliente.dbPass);
  dbConectar.idbDatabase.DBParams.Add('sql_role_name=USUARIO_MICROSIP');
     try dbConectar.idbDatabase.Connected := True;
        Result := True;
     except
        MessageDlg('El nombre de usuario o la contraseña no son válidos para el Servidor de la conexión "' + frmBuscarCliente.cxNombre +
           '".' + #13#10 + 'Escriba los datos correctamente o consulte al Administrador del sistema.',mtError,[mbOK],0);
        result:=false;
     end;//try
end;

function txtSQLbuscado(campo:string):string;
begin
  If frmBuscarCliente.cbxCoincidirMayusculas.Checked and frmBuscarCliente.cbxPalabras.Checked then
    Result:= ('where ' + campo + ' like ' + QuotedStr('%' + frmBuscarCliente.edt_Clave.Text + '%'))
  else if frmBuscarCliente.cbxCoincidirMayusculas.Checked=false and frmBuscarCliente.cbxPalabras.Checked then
    Result:= ('where upper(' + campo + ') like ' + QuotedStr('%' + UpperCase(frmBuscarCliente.edt_Clave.Text) + '%'))
  else if frmBuscarCliente.cbxCoincidirMayusculas.Checked and frmBuscarCliente.cbxPalabras.Checked=false then
    Result:= ('where ' + campo + ' like ' + QuotedStr(frmBuscarCliente.edt_Clave.Text + '%'))
  else if frmBuscarCliente.cbxCoincidirMayusculas.Checked=false and frmBuscarCliente.cbxPalabras.Checked=false then
    Result:= ('where upper(' + campo + ') like ' + QuotedStr(UpperCase(frmBuscarCliente.edt_Clave.Text) + '%'))
end;

procedure GetClientes;
var
  fqCliente:TdmQuerys;
begin
  frmBuscarCliente.sgBusqueda.RowCount:=1;
  frmBuscarCliente.sgBusqueda.FocusCell(0,0);
//  frmBuscarCliente.sgBusqueda.Row:=1;
  fqCliente:= TdmQuerys.Create(nil);
  fqCliente.dbtTransaccion.DefaultDatabase:=dbConectar.idbDatabase;
  fqCliente.figQuery.Database:=dbConectar.idbDatabase;
  with fqCliente.figQuery do begin
    Close;
    SQL.Clear;
    if (frmBuscarCliente.tipoBusqueda='Clave') and (frmBuscarCliente.origenBusqueda='Cliente') then
      SQL.Add('select c.nombre, c.cliente_id as id, k.clave_cliente as clave from clientes as c '
        + 'inner join claves_clientes as k on c.cliente_id = k.cliente_id '
        + txtSQLbuscado('k.clave_cliente')
        + ' order by clave')
    else if (frmBuscarCliente.tipoBusqueda='Nombre') and (frmBuscarCliente.origenBusqueda='Cliente') then
      SQL.Add('select c.nombre, c.cliente_id as id, k.clave_cliente as clave from clientes as c '
        + 'left join claves_clientes as k on c.cliente_id = k.cliente_id '
        + txtSQLbuscado('c.nombre')
        + ' order by nombre')
    else if (frmBuscarCliente.tipoBusqueda='Clave') and (frmBuscarCliente.origenBusqueda='Artículo') then
      SQL.Add('select a.nombre, a.articulo_id as id, k.clave_articulo as clave from articulos as a '
        + 'inner join claves_articulos as k on a.articulo_id = k.articulo_id '
        + txtSQLbuscado('k.clave_articulo')
        + ' order by clave')
    else if (frmBuscarCliente.tipoBusqueda='Nombre') and (frmBuscarCliente.origenBusqueda='Artículo') then
      SQL.Add('select a.nombre, a.articulo_id as id, k.clave_articulo as clave from articulos as a '
        + 'left join claves_articulos as k on a.articulo_id = k.articulo_id '
        + txtSQLbuscado('a.nombre')
        + ' order by nombre');
//    ShowMessage(SQL.GetText); //***PARA VALIDAR QUE LA CONSULTA SEA CORRECTA***
    ExecQuery;
    if fn('nombre').AsString ='' then
      begin
        frmBuscarCliente.btnAceptar.Enabled:=False;
        frmBuscarCliente.sgBusqueda.RowCount:=2;
        frmBuscarCliente.sgBusqueda.Cells[cClave,1]:='';
        frmBuscarCliente.sgBusqueda.Cells[cNombre,1]:='';
      end
    else begin
      frmBuscarCliente.btnAceptar.Enabled:=true;
      while Not Eof do begin
        frmBuscarCliente.sgBusqueda.AddRow;
        frmBuscarCliente.sgBusqueda.Row:=frmBuscarCliente.sgBusqueda.RowCount-1;
        frmBuscarCliente.sgBusqueda.Cells[cClave,frmBuscarCliente.sgBusqueda.Row]:=fn('clave').AsString;
        frmBuscarCliente.sgBusqueda.Cells[cNombre,frmBuscarCliente.sgBusqueda.Row]:=fn('nombre').AsString;
        frmBuscarCliente.sgBusqueda.Cells[cID,frmBuscarCliente.sgBusqueda.Row]:=fn('id').AsString;
        Next;
      end;//while
    end;//if
  end; //with
  if fqCliente.dbtTransaccion.Active then fqCliente.dbtTransaccion.Commit;
  FreeAndNil(fqCliente);
  if frmBuscarCliente.sgBusqueda.RowCount > 2 then
    frmBuscarCliente.lblCantidadClientes.Caption:= IntToStr(frmBuscarCliente.sgBusqueda.RowCount - 1) + ' ' + frmBuscarCliente.origenBusqueda + 's encontrados'
  else if frmBuscarCliente.sgBusqueda.Cells[1,1] <> '' then
    frmBuscarCliente.lblCantidadClientes.Caption:= IntToStr(frmBuscarCliente.sgBusqueda.RowCount - 1) + ' ' + frmBuscarCliente.origenBusqueda + ' encontrado'
  else
    frmBuscarCliente.lblCantidadClientes.Caption := 'No se encontraron '+frmBuscarCliente.origenBusqueda+'s';
  frmBuscarCliente.sgBusqueda.Row:=1;
end;

procedure TfrmBuscarCliente.FormShow(Sender: TObject);
var
  dbclientes:TdmQuerys;
begin
  if ConectarADB then
    begin
      IF tipoBusqueda='Nombre' then
        begin
          edt_Clave.Left:=58;
          edt_Clave.Width:=300;
          btnBuscar.Left:=370;
        end
      else if tipoBusqueda='Clave' then
        begin
          edt_Clave.Left:=48;
          edt_Clave.Width:=140;
          btnBuscar.Left:=200;
        end;
      edt_Clave.LabelCaption:=tipoBusqueda+': ';
      resultadoClave:='';
      resultadoNombre:='';
      frmBuscarCliente.Caption:= 'Buscar ' + origenBusqueda + ' por ' + tipoBusqueda;
      frmBuscarCliente.lbllistaClentes.Caption := 'Lista de los ' + origenBusqueda + 's encontrados';
      If edt_Clave.Text <> '' then GetClientes;
    end
  else frmBuscarCliente.Close;
end;

procedure TfrmBuscarCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(key=vk_return) then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmBuscarCliente.btnCancelarClick(Sender: TObject);
begin
  frmBuscarCliente.Close;
end;

procedure TfrmBuscarCliente.btnAceptarClick(Sender: TObject);
begin
  resultadoClave:=sgBusqueda.Cells[cClave,sgBusqueda.Row];
  resultadoNombre:=sgBusqueda.Cells[cNombre,sgBusqueda.Row];
  resultadoID:=sgBusqueda.Cells[cID,sgBusqueda.Row];
  frmBuscarCliente.Close;
end;

procedure TfrmBuscarCliente.edt_ClaveChange_(Sender: TObject);
begin
  if edt_Clave.Text = '' then
    btnBuscar.Enabled:=False
  else
    btnBuscar.Enabled:=true;
end;

procedure TfrmBuscarCliente.btnBuscarClick(Sender: TObject);
begin
  if ConectarADB then GetClientes;
end;

procedure TfrmBuscarCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(dbConectar);
end;

procedure TfrmBuscarCliente.edt_ClaveValueValidate(Sender: TObject;
  Value: String; var IsValid: Boolean);
begin
//
end;

procedure TfrmBuscarCliente.edt_ClaveChange(Sender: TObject);
begin
  if edt_Clave.Modified  then
    btnBuscar.Enabled:=False
  else
    btnBuscar.Enabled:=true;

end;

end.
