program kurs;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  procedures in 'procedures.pas',
  addnew in 'addnew.pas' {Form2},
  redact in 'redact.pas' {Form3},
  del in 'del.pas' {ydal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(Tydal, ydal);
  Application.Run;
end.
