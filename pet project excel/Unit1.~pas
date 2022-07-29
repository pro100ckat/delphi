unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus,  ComObj, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox3: TComboBox;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    About1: TMenuItem;
    HowtoUseHelp1: TMenuItem;
    BitBtn1: TBitBtn;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Print1: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    BitBtn2: TBitBtn;
    ComboBox4: TComboBox;
    procedure Exit1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure HowtoUseHelp1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   Excel: Variant;
   AppLocation:string;
   i,s:integer;  h:real;

implementation

uses Unit3, Unit4, Unit6, Unit7;

{$R *.dfm}

procedure TForm1.Exit1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 try excel := CreateOLEObject('Excel.Application'); // Создание OLE объекта
 except
ShowMessage('Cannot start MS Excel.');
end;
GetDir(0,AppLocation); // Возвращает текущий каталог диска
excel.workbooks.open(extractfilepath(paramstr(0))+'res.xls');

i:=1;
s:=0;
while (vartype(excel.cells[i,2].value)<>varempty) do begin
s:=s+1;
i:=I+1;
end;
excel.cells[s+1,1]:=s+1-3;
excel.cells[s+1,2]:=combobox4.Text;
excel.cells[s+1,3]:= combobox1.Text;
excel.cells[s+1,4]:=edit5.Text;
excel.cells[s+1,5]:= edit4.text;
h:= (strtoint(edit4.Text)/100);
excel.cells[s+1,6]:= ((strtoint(edit5.Text)/h)/100);
excel.cells[s+1,7]:= combobox2.Text;
excel.cells[s+1,8]:= combobox3.Text;

 excel.activeWorkBook.save;
 excel.activeworkbook.close;
 ShowMessage('Ученик добавлен!');
 end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin


edit4.Text:='';
edit5.Text:='';
combobox1.text:='';
combobox2.text:='';
combobox3.text:='';
combobox4.Text:='';
end;

procedure TForm1.About1Click(Sender: TObject);
begin
Showmessage('Программу разработал ученик 10 класса "В" Коваленко Вячеслав Андреевич в 2014 году')
end;

procedure TForm1.HowtoUseHelp1Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm1.Print1Click(Sender: TObject);
begin
 try excel := CreateOLEObject('Excel.Application'); // Создание OLE объекта
 except
 ShowMessage('Cannot start MS Excel.');
end;
GetDir(0,AppLocation); // Возвращает текущий каталог диска
excel.workbooks.open(extractfilepath(paramstr(0))+'res.xls');
Excel.ActiveSheet.PrintOut;
excel.activeworkbook.close;
excel.application.quit;
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
 try excel := CreateOLEObject('Excel.Application'); // Создание OLE объекта
 except
  ShowMessage('Cannot start MS Excel.');
end;
GetDir(0,AppLocation); // Возвращает текущий каталог диска
excel.workbooks.open(extractfilepath(paramstr(0))+'res.xls');
Excel.Visible := True;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 find.show;
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
 try excel := CreateOLEObject('Excel.Application'); // Создание OLE объекта
 except
 ShowMessage('Cannot start MS Excel.');
end;
GetDir(0,AppLocation); // Возвращает текущий каталог диска
excel.workbooks.open(extractfilepath(paramstr(0))+'res.xls');
 excel.activeWorkBook.save;
excel.activeworkbook.close;
excel.application.quit;
end;

end.
