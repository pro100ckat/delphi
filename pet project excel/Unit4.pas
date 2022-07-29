unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  ComObj;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
 Excel: Variant;
   AppLocation:string;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
   try excel := CreateOLEObject('Excel.Application'); // Создание OLE объекта
  except
  ShowMessage('Cannot start MS Excel.');
end;
GetDir(0,AppLocation); // Возвращает текущий каталог диска
 excel.workbooks.open(extractfilepath(paramstr(0))+'rez.xls');
 Excel.ActiveWorkbook.SaveAs(Filename:='C:\Base\res.xls');
 excel.activeworkbook.close;
 excel.workbooks.open(extractfilepath(paramstr(0))+'res.xls');
 excel.range['g1']:=form4.combobox1.text;
 excel.activeWorkBook.save;
 excel.activeworkbook.close;
 excel.application.quit;
 form4.Visible:=false;
 ShowMessage('Книга создана');
end;

end.
