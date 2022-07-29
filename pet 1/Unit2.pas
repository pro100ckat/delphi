unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.Buttons;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    UpDown1: TUpDown;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    StringGrid2: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  a:array[1..10,1..10]of integer;
  b:array[1..10] of integer;
  n,q:integer;


implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var i,j:integer;
begin

  n:= UpDown1.Position;
  for i:=1 to   n do
   for j:=1 to n do
    a[i,j]:=strtoint(StringGrid1.Cells[j-1,i-1]);
end;
procedure TForm2.Button2Click(Sender: TObject);
var i,j,t:integer;
  bf,k,p: Integer;
begin
   for j:=1 to n do
   for i := 1 to n-1 do
     for k := i+1 to n do
if a[i,j]>a[k,j] then
begin
bf:=a[i,j];
a[i,j]:=a[k,j];
a[k,j]:=bf;
end;

for j := 1 to n do
    begin
    B[J]:=1;
    for I := 1 to n do
     b[j]:=b[j]*a[i,j];
    end;
    for j := n downto 2 do
      for i:= 2 to j do
      if b[i]>b[i-1]  then
      begin
      t:=b[i];
      b[i]:=b[i-1];
      b[i-1]:=t;
      for k := 1 to n do
        begin
          t:=a[k,i];
          a[k,i]:=a[k,i-1];
          a[k,i-1]:=t;
        end;

    end;

UpDown1.Position:=n;
for i:=1 to   n do
 for j:=1 to n do
  StringGrid2.Cells[j-1,i-1]:=inttostr(a[i,j]);

end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
StringGrid1.ColCount:=strtoint(Edit1.Text);
  StringGrid1.RowCount:=UpDown1.Position;
  StringGrid2.ColCount:=strtoint(Edit1.Text);
  StringGrid2.RowCount:=UpDown1.Position;

end;

end.
