unit Database;

interface

uses
  SysUtils, Classes, FIBDatabase, pFIBDatabase;

type
  TdmDataBase = class(TDataModule)
    idbDataBase: TpFIBDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDataBase: TdmDataBase;

implementation

{$R *.dfm}

end.
