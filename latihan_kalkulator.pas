unit latihan_kalkulator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lblnilai1: TLabel;
    lblnilai2: TLabel;
    lblhasil: TLabel;
    edtnilai1: TEdit;
    edtnilai2: TEdit;
    edthasil: TEdit;
    btn1: TButton;
    btn2: TButton;
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

procedure TForm1.btn1Click(Sender: TObject);
begin
edthasil.Text:=IntToStr(StrToInt(edtnilai1.Text)+strtoint(edtnilai2.Text));
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Close;
//Applocation.Terminate;
end;

end.
