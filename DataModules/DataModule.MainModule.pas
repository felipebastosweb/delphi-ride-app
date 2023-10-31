unit DataModule.MainModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure FDConnection1AfterConnect(Sender: TObject);
    procedure FDConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}


procedure TDataModule1.FDConnection1BeforeConnect(Sender: TObject);
begin
  //
end;

procedure TDataModule1.FDConnection1AfterConnect(Sender: TObject);
begin
  FDQuery1.Active := False;
  FDQuery1.SQL.Add('CREATE TABLE IF NOT EXISTS Users (');
  FDQuery1.SQL.Add(');');
  FDQuery1.Active := True;
  FDQuery1.SQL.Clear;

  FDQuery1.Active := False;
  FDQuery1.SQL.Add('CREATE TABLE IF NOT EXISTS Passengers (');
  FDQuery1.SQL.Add(');');
  FDQuery1.Active := True;
  FDQuery1.SQL.Clear;

  FDQuery1.Active := False;
  FDQuery1.SQL.Add('CREATE TABLE IF NOT EXISTS Drivers (');
  FDQuery1.SQL.Add(');');
  FDQuery1.Active := True;
  FDQuery1.SQL.Clear;

  FDQuery1.Active := False;
  FDQuery1.SQL.Add('CREATE TABLE IF NOT EXISTS Rides (');
  FDQuery1.SQL.Add(');');
  FDQuery1.Active := True;
  FDQuery1.SQL.Clear;

  FDQuery1.Active := False;
  FDQuery1.SQL.Add('CREATE TABLE IF NOT EXISTS Payments (');
  FDQuery1.SQL.Add(');');
  FDQuery1.Active := True;
  FDQuery1.SQL.Clear;
end;

end.
