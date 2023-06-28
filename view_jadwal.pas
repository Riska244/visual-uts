unit view_jadwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DB, ADODB, DBGrids, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart, DbChart, StdCtrls;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    dbcht1: TDBChart;
    brsrsSeries1: TBarSeries;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    procedure formshow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.formshow(Sender: TObject);
begin
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=110;
dbgrd1.Columns[6].Width:=50;
dbgrd1.Columns[7].Width:=50;
dbcht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM');
end;

procedure TForm1.btn1Click(Sender: TObject);
var i:Integer;
begin
qry1.SQL.Clear;
qry1.SQL.Add('select count(no)as jumlah_kelas,sum(kehadiran_total)as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
qry1.Open;
dbcht1.Series[0].Clear;   //Clear grafik

for i:=1 to qry1.RecordCount do
begin
  dbcht1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.fieldbyname('nama_kelas').AsString);
  qry1.Next;
end;

end;
procedure TForm1.btn2Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select * from jadwal_table');
qry1.Open;

dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=110;
dbgrd1.Columns[6].Width:=50;
dbgrd1.Columns[7].Width:=50;
end;

end.
