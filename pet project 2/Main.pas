unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.StdActns, Vcl.Menus, Vcl.Grids, Vcl.StdCtrls, Vcl.WinXCtrls, System.UITypes,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N3: TMenuItem;
    N2: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    ActionList1: TActionList;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N19: TMenuItem;
    SearchBox1: TSearchBox;
    N6: TMenuItem;
    N18: TMenuItem;
    ImageList1: TImageList;
    SpeedButton1: TSpeedButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FileOpen1Accept(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure SearchBox1Change(Sender: TObject);
    procedure SearchBox1KeyPress(Sender: TObject; var Key: Char);
    procedure N6Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  StrList : TStringList;
  n:integer;
  namef:string;
  procedure SCL;

implementation

 uses procedures, addnew, redact,del;
{$R *.dfm}

procedure SCL;
begin
 StrList:=TStringList.Create;
 StrList.Sorted:=false;   	//True - �����������, False - �� �����������
 StrList.Duplicates:=dupIgnore;   	//dupAccept - ��������� ��������� (�������� �� ���������), dupIgnore - ������������, dupError - ������� ��������� �� ������
end;

procedure TForm1.FileOpen1Accept(Sender: TObject);
begin
  SCL;
  clean_grid;
  StrList.LoadFromFile(FileOpen1.Dialog.FileName);// �������� ���������� ����� � StrList
  n:=strlist.Count;
  namef:= FileOpen1.Dialog.FileName;
  stringgrid1.RowCount:=n+1;
    readf;           // ��������� ���������� �������
    print_mas;      //  ������� ������ � StringGrid

  MainMenu1.Items.Items[0].items[1].Enabled := true; // ��������� ����
  MainMenu1.Items.Items[0].items[2].Enabled := true;
  MainMenu1.Items.Items[0].items[3].Enabled := true;
  MainMenu1.Items.Items[1].Enabled := true;
  MainMenu1.Items.Items[2].Enabled := true;
  MainMenu1.Items.Items[3].Enabled := true;
  SearchBox1.Enabled:=true;
toolbutton2.Enabled:=true;
toolbutton3.Enabled:=true;
toolbutton4.Enabled:=true;
toolbutton5.Enabled:=true;
toolbutton6.Enabled:=true;
end;

procedure TForm1.FileSaveAs1Accept(Sender: TObject);
begin
save_f;    // ��������� � ����
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
shapka;    //������ �����
stringgrid1.Rowcount:=2;
MainMenu1.Items.Items[0].items[1].Enabled := False;     // ��������� ����
MainMenu1.Items.Items[0].items[2].Enabled := False;
MainMenu1.Items.Items[0].items[3].Enabled := False;
MainMenu1.Items.Items[1].Enabled := false;
MainMenu1.Items.Items[2].Enabled := false;
Searchbox1.Enabled:=false;
toolbutton2.Enabled:=false;
toolbutton3.Enabled:=false;
toolbutton4.Enabled:=false;
toolbutton5.Enabled:=false;
toolbutton6.Enabled:=false;
toolbutton7.Enabled:=false;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
showmessage('�������� ������� ���������� ��-4 ������ ����-01-15: '#139'��������� �������� ���������'#13#10'���������� ������: pro100ckat@mail.ru');
end;

procedure TForm1.N11Click(Sender: TObject);
begin
clean_grid;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
if MessageDlg('����� �� ���������? ��� ������������� ������ ����� ��������!',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes
            then close;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm1.N15Click(Sender: TObject);
var i:integer;
begin
ydal.Show
end;

procedure TForm1.N16Click(Sender: TObject);
begin
create_b;
sort_name;
clean_grid;
print_bmas;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
create_b;
sort_shops;
clean_grid;
print_mas;
end;

procedure TForm1.N18Click(Sender: TObject);
begin
create_b;
sort_kolvo;
clean_grid;
print_bmas;
end;

procedure TForm1.N19Click(Sender: TObject);
begin
create_b;
sort_cena;
clean_grid;
print_bmas;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
print_mas;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
save_f;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
showmessage('��������� ������������� ��� ������� �� �� ��������� ������� �����������.'#13#10'����������� � ����� Delphi 10 Seatle � 2016 ����.'#13#10'������: Beta 1.0');
end;

procedure TForm1.SearchBox1Change(Sender: TObject);
begin
io:=0;
clean_grid;
search_mas;
end;

procedure TForm1.SearchBox1KeyPress(Sender: TObject; var Key: Char);
begin
if key=' ' then
clean_grid;
print_mas;
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
form2.Show;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
clean_grid;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.ToolButton5Click(Sender: TObject);

begin
save_f;
end;

procedure TForm1.ToolButton6Click(Sender: TObject);
begin
print_mas;
end;

procedure TForm1.ToolButton7Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm1.ToolButton8Click(Sender: TObject);
begin
if MessageDlg('����� �� ���������? ��� ������������� ������ ����� ��������!',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes
            then close;
end;

end.
