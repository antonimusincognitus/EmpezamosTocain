unit Query;

interface

uses
  SysUtils, Classes, FIBQuery, pFIBQuery, FIBDatabase, pFIBDatabase;

type
  TdmQuerys = class(TDataModule)
    dbtTransaccion: TpFIBTransaction;
    figQuery: TpFIBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmQuerys: TdmQuerys;

implementation

{$R *.dfm}

end.
