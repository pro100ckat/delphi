unit Unit3;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons;

type
  TPasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

{$R *.dfm}

procedure TPasswordDlg.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if Password.Text = '10217' then CanClose:=true
else
begin
Application.MessageBox(Pchar('Неверный пароль!'), 'Ошибка' );
 Application.Terminate;
end;
end;

procedure TPasswordDlg.CancelBtnClick(Sender: TObject);
begin
  Close;
end;

end.
 
