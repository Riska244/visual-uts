program Grafik_StringGrid;

uses
  Forms,
  grafik_dan_stringgrid in 'grafik_dan_stringgrid.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
