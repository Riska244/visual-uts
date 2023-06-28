program lat_grafik_stringgrid;

uses
  Forms,
  latihan_grafik_stringgrid in 'latihan_grafik_stringgrid.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
