program kalkulator;

uses
  Forms,
  latihan_kalkulator in 'latihan_kalkulator.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
