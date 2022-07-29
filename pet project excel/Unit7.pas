unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFind = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    ListBox1: TListBox;
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
  Find: TFind;
  k,s,i:integer; str,str2,str3:string;

implementation

{$R *.dfm}

procedure TFind.Button1Click(Sender: TObject);
begin
s:=length(edit1.Text);
str:=copy(find.edit1.text, 1, s);
for i:=0 to 1000 do begin
str2:=copy(memo1.Lines[i], 1, s);
label2.caption:= str;
label3.Caption :=str2;
end;

end;
end.
