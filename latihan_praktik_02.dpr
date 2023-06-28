program latihan_praktik_02;

uses
  Forms,
  latihan_02 in 'latihan_02.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
