unit latihan_02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    pnlnilai: TPanel;
    pnlbobot: TPanel;
    lblnilkeh: TLabel;
    lblniltug: TLabel;
    lblniluts: TLabel;
    lblnilharian: TLabel;
    lblniluas: TLabel;
    lbltotal: TLabel;
    lblgrade: TLabel;
    edtnilai1: TEdit;
    edtnilai2: TEdit;
    edtnilai3: TEdit;
    edtbobot1: TEdit;
    edtbobot2: TEdit;
    edtbobot3: TEdit;
    edtharian: TEdit;
    edtbobot4: TEdit;
    edtuas: TEdit;
    edtbobot5: TEdit;
    edtket: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lblket: TLabel;
    edttotal: TEdit;
    edtgrade: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.btn1Click(Sender: TObject);
var
  nil1, nil2, nil3, nil4, nil5, hasil : Real;
  b1, b2, b3, b4, b5 : Real;
  grade,ket :string;
begin
   //berfungsi untuk mengambil data nilai
   nil1 := StrToFloat(edtnilai1.Text);
   nil2 := StrToFloat(edtnilai2.Text);
   nil3 := StrToFloat(edtnilai3.Text);
   nil4 := StrToFloat(edtharian.Text);
   nil5 := StrToFloat(edtuas.Text);
   //mengambil pesan data bobot
   b1 := StrToFloat(edtbobot1.Text)/100;
   b2 := StrToFloat(edtbobot2.Text)/100;
   b3 := StrToFloat(edtbobot3.Text)/100;
   b4 := StrToFloat(edtbobot4.Text)/100;
   b5 := StrToFloat(edtbobot5.Text)/100;
   //menghitung nilai akhir
   hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;
   //menentukan grade nilai
   if (hasil >= 80) then
   grade:='A'
   else
   if (hasil >= 70) then
   grade:='B'
   else
   if (hasil >= 60) then
   grade:='C'
   else
   if (hasil >= 50) then
   grade:='D'
   else
   grade:='E';
   //menentukan keterangan hasil
   if ((grade = 'A')or(grade = 'B')or(grade = 'C')) then
   ket:='LULUS'
   else
   ket:='TIDAK LULUS';
   //hasil dari proses...
   edttotal.Text := FloatToStr(hasil);
   edtgrade.Text := grade;
   edtket.Text := ket;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
edtnilai1.Text := '0';
edtnilai2.Text := '0';
edtnilai3.Text := '0';
edtharian.Text := '0';
edtuas.Text := '0';
edttotal.Text :='';
edtgrade.Text :='';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
