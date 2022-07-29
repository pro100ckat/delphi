unit del;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  Tydal = class(TForm)
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ydal: Tydal;

implementation
uses main,procedures;

{$R *.dfm}

procedure Tydal.BitBtn1Click(Sender: TObject);
var i:integer; s:string;
begin
delete_tm;
rewrite_combo;
clean_grid;
print_mas;
 end;



procedure Tydal.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure Tydal.FormShow(Sender: TObject);
begin
  rewrite_combo;
end;
end.
