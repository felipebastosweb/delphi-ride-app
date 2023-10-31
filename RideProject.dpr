program RideProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  Forms.MainForm in 'Forms.MainForm.pas' {Form1},
  DataModule.MainModule in 'DataModules\DataModule.MainModule.pas' {DataModule1: TDataModule},
  Forms.PassengerRideCreateForm in 'Forms.PassengerRideCreateForm.pas' {Form2},
  Forms.PassengerRideRequestForm in 'Forms.PassengerRideRequestForm.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
