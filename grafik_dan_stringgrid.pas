unit grafik_dan_stringgrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Buttons, Grids,
  StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    cbb1: TComboBox;
    edt1: TEdit;
    btn1: TButton;
    StringGrid1: TStringGrid;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    cht1: TChart;
    psrsSeries1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
   StringGrid1.Cells[0,0]:='JENIS PENYAKIT';
   StringGrid1.Cells[0,1]:='COVID 19';
   StringGrid1.Cells[0,2]:='FLU BIASA';
   StringGrid1.Cells[0,3]:='DEMAM';
   StringGrid1.Cells[0,4]:='RINDU';
   StringGrid1.Cells[1,0]:='JUMLAH';
end;

procedure TForm1.btn2Click(Sender: TObject);
var i: Integer;
begin
   for i:=1 to StringGrid1.RowCount-1 do
   cht1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]), StringGrid1.Cells[0,i]);
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
StringGrid1.Cells[1,cbb1.ItemIndex+1]:=edt1.Text;
end;

end.
