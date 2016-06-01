unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Lab6_TLB, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  lab: IRasch;
  a,b,x,y,z: extended;
begin
  lab:=CoRasch.Create;
  x:=strtofloat(Edit1.Text);
  y:=strtofloat(Edit2.Text);
  z:=strtofloat(Edit3.Text);
  a:=lab.GetA(x,y,z);
  b:=lab.GetB(x,y,z);
  Label4.Caption:='A = '+A.ToString;
  Label5.Caption:='B = '+B.ToString;
end;

end.
