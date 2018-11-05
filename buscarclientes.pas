unit buscarclientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Database,
  Dialogs, StdCtrls, Grids, AdvObj, BaseGrid, AdvGrid, AdvEdit, ExtCtrls;

type
  TfrmBuscarCliente = class(TForm)
    cbxCoincidirMayusculas: TCheckBox;
    cbxPalabras: TCheckBox;
    edtClave: TAdvEdit;
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
    procedure edtClaveChange(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    dbNombre,dbUsuario,dbPass,cxTipo,cxNombre,cxServidor,cxProtocolo,cxCarpeta:string;
    resultadoClave, resultadoNombre, resultadoID, tipoBusqueda, origenBusqueda:string;
  dbConectar:TdmDataBase;
  buscar_y_cerrar : boolean;
    { Public declarations }
  end;

var
  frmBuscarCliente: TfrmBuscarCliente;

implementation
uses Query, FIBQuery, pFIBQuery;
//var
const
  cClave=0;
  cNombre=1;
  cID=2;
{$R *.dfm}

function ConectarADB_: Boolean;
begin
{
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
}
end;

function txtSQLbuscado(campo:string):string;
begin
  If frmBuscarCliente.cbxCoincidirMayusculas.Checked and frmBuscarCliente.cbxPalabras.Checked then
    Result:= ('where ' + campo + ' like ' + QuotedStr('%' + frmBuscarCliente.edtClave.Text + '%'))
  else if frmBuscarCliente.cbxCoincidirMayusculas.Checked=false and frmBuscarCliente.cbxPalabras.Checked then
    Result:= ('where upper(' + campo + ') like ' + QuotedStr('%' + UpperCase(frmBuscarCliente.edtClave.Text) + '%'))
  else if frmBuscarCliente.cbxCoincidirMayusculas.Checked and frmBuscarCliente.cbxPalabras.Checked=false then
    Result:= ('where ' + campo + ' like ' + QuotedStr(frmBuscarCliente.edtClave.Text + '%'))
  else if frmBuscarCliente.cbxCoincidirMayusculas.Checked=false and frmBuscarCliente.cbxPalabras.Checked=false then
    Result:= ('where upper(' + campo + ') like ' + QuotedStr(UpperCase(frmBuscarCliente.edtClave.Text) + '%'))
end;

procedure GetClientes;
var
  fqCliente:TdmQuerys;
begin
  frmBuscarCliente.sgBusqueda.RowCount:=1;
  frmBuscarCliente.sgBusqueda.FocusCell(0,0);
//  frmBuscarCliente.sgBusqueda.Row:=1;
  fqCliente:= TdmQuerys.Create(nil);
  fqCliente.dbtTransaccion.DefaultDatabase:=frmBuscarCliente.dbConectar.idbDatabase;
  fqCliente.figQuery.Database:=frmBuscarCliente.dbConectar.idbDatabase;
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
  if (frmBuscarCliente.dbConectar.idbDataBase.TestConnected ) then
    begin
      IF tipoBusqueda='Nombre' then
        begin
          edtClave.Left:=58;
          edtClave.Width:=300;
          btnBuscar.Left:=370;
        end
      else if tipoBusqueda='Clave' then
        begin
          edtClave.Left:=48;
          edtClave.Width:=140;
          btnBuscar.Left:=200;
        end;
      edtClave.LabelCaption:=tipoBusqueda+': ';
      resultadoClave:='';
      resultadoNombre:='';
      frmBuscarCliente.Caption:= 'Buscar ' + origenBusqueda + ' por ' + tipoBusqueda;
      frmBuscarCliente.lbllistaClentes.Caption := 'Lista de los ' + origenBusqueda + 's encontrados';
      If edtClave.Text <> '' then GetClientes;
      if buscar_y_cerrar then
      begin
        sgBusqueda.Row := 1;
        freeandnil(frmBuscarCliente);
        btnAceptarClick(nil);
      end;
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

procedure TfrmBuscarCliente.edtClaveChange(Sender: TObject);
begin
  if edtClave.Text = '' then btnBuscar.Enabled:=False else btnBuscar.Enabled:=true;
end;

procedure TfrmBuscarCliente.btnBuscarClick(Sender: TObject);
begin
  if not(dbConectar = nil) then GetClientes;
end;

procedure TfrmBuscarCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(dbConectar);
end;

end.
