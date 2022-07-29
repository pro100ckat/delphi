unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  var i,u,r:integer;    i1,r1:real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

if radiogroup1.ItemIndex = 0  then
begin
if (Edit1.Text='') or (edit2.Text='')  then Showmessage('Введите данные!') else begin
u:=0;
i:=0;
r:=0;
u:=strtoint(edit1.Text);
r:=strtoint(edit2.text);
i1:=u/r;
   label3.Caption:='Ток: ' + floattostr(i1) +' А';
end;
end;

   if radiogroup1.ItemIndex = 1  then
begin
if (Edit1.Text='') or (edit2.Text='')  then Showmessage('Введите данные!') else begin
u:=0;
i:=0;
r:=0;
i:=strtoint(edit1.Text);
r:=strtoint(edit2.text);
u:=i*r;
   label3.Caption:='Напряжение ' + inttostr(u) +' В';
end;
end;

if radiogroup1.ItemIndex = 2  then
begin
if (Edit1.Text='') or (edit2.Text='')  then Showmessage('Введите данные!') else begin
begin
u:=0;
i:=0;
r:=0;
u:=strtoint(edit1.Text);
i:=strtoint(edit2.text);
r1:=u/i;
   label3.Caption:='Сопротивление ' + floattostr(r1) +' Ом';
end;
end;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin

label3.Caption:='Ток:'+floattostr(i);
      if radiogroup1.itemindex = 1 then  begin
   label1.Caption:='Ток (ампер)';
   label2.Caption:='Сопротивление (ОМ)';
   label3.Caption:='Напряжение:';
      end;
     if radiogroup1.itemindex = 0 then  begin
   label1.Caption:='Напряжение (вольт)';
   label2.Caption:='Сопротивление (Ом)';
   label3.Caption:='Ток';
     end;
     if radiogroup1.itemindex = 2 then begin
   label1.Caption:='Напряжение (вольт)';
   label2.Caption:='Ток (ампер)';
   label3.Caption:='Сопротивление';
     end;
end;

end.
