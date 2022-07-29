unit redact;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
 uses main, procedures;
{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
var i:integer;
begin
if form3.edit1.Text<>'' then
   begin
form3.Edit2.Enabled := true;
form3.Edit3.Enabled := true;
form3.Edit4.Enabled := true;
form3.Edit5.Enabled := true;

 if strtoint(edit1.Text)<=n then    begin
  i:=strtoint(edit1.Text);
  edit2.Text:=a[i].name;
  edit3.Text:=a[i].price;
  edit4.Text:=a[i].shops;
  edit5.Text:=a[i].kolvo;
     end
     else
     showmessage('������ ������ ��� � ������. ��������� ������������ ����� ');

end;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
var i:integer;
begin
  i:=strtoint(edit1.Text);
  a[i].name:=edit2.Text;
  a[i].price:=edit3.Text;
  a[i].shops:=edit4.Text;
  a[i].kolvo:=edit5.Text;
  clean_grid;
  print_mas;
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if(Key in ['0'..'9']) or(Key = ',') or(Key = #8) then begin
if(Edit1.Text = '') and (Key = ',') then Key:=#0;
if(Edit1.Text = '0') and (Key <> ',') and (Key <> #8) then Key:=#0;
if(Key = ',')  then Key:=#0;
end
else Key:=#0;
end;

procedure TForm3.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if(Key in ['0'..'9']) or(Key = ',') or(Key = #8) then begin
if(Edit1.Text = '') and (Key = ',') then Key:=#0;
if(Edit1.Text = '0') and (Key <> ',') and (Key <> #8) then Key:=#0;
if(Key = ',')  then Key:=#0;
end
else Key:=#0;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
form3.Edit2.Enabled := false;
form3.Edit3.Enabled := false;
form3.Edit4.Enabled := false;
form3.Edit5.Enabled := false;
end;

end.
