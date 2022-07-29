unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  ComObj;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  Excel: Variant;
   AppLocation:string;

implementation

uses Unit3, Unit4, Unit1;

{$R *.dfm}

procedure TForm5.FormShow(Sender: TObject);
begin
PasswordDlg.ShowModal;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin

form1.show;
end;

end.
