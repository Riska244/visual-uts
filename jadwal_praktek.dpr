program jadwal_praktek;

uses
  Forms,
  view_jadwal in 'view_jadwal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
