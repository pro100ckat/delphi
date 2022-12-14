unit procedures;

interface
procedure shapka;
procedure print_mas;
procedure print_bmas;
procedure readf;
procedure clean_grid;
procedure save_f;
procedure add_new;
procedure delete_tm;
procedure sort_name;
procedure sort_shops;
procedure sort_cena;
procedure sort_kolvo;
procedure search_mas;
procedure print_one;
procedure create_b;
procedure rewrite_combo;

 TYPE
tovar=record 				  // ?????? ? ???????:
  Name:string;		// - ???????????? ??????
  Price:string;		      // - ????
  shops:string;
  kolvo:string;
END;


VAR a,b : array [1..25] of tovar; 		//-?????? ???????
f: TextFile;	 	      // -????? ??? ???????? ?????? ? ???????????
var v:tovar;
io,gl:integer;

implementation
uses Main, addnew,del,SysUtils,System.UITypes, Dialogs,forms,graphics;

//????????? ?????????? ? ????????

procedure shapka;
begin
 form1.StringGrid1.Cells[0,0]:='?????';
 form1.StringGrid1.Cells[1,0]:='????????';
 form1.StringGrid1.Cells[2,0]:='????';
 form1.StringGrid1.Cells[3,0]:='????????';
 form1.StringGrid1.Cells[4,0]:='??????????';
end;


procedure readf;
var i:integer; s:string;
begin
  assignfile(f,form1.FileOpen1.Dialog.FileName);
  reset(f);
  i:=1;
while not eof(f) do
 begin
 s:=s+' ';
  readln(f,s);   //?????? ??????
  a[i].name:=copy(s,1,pos('|',s)-1);//??? ?? ??????? ???????
  delete(s,1,pos('|',s));
  a[i].price:=copy(s,1,pos(' ',s));//??? ?? ??????? ???????
  delete(s,1,pos(' ',s));
  a[i].shops:=copy(s,1,pos('!',s)-1);//??? ?? ??????? ???????
  delete(s,1,pos('!',s));
  a[i].kolvo:=copy(s,1,pos('.',s));//??? ?? ??????? ???????
  delete(s,1,pos('.',s));
  i:=i+1;      //???????
 end;

   closefile(f);
end;

procedure save_f;
var k:integer;
begin
  assignfile(f,namef);
  rewrite(f);
  for k := 1 to n do  begin
  with a[k] do begin
  write(f,name,'|');
  write(f,price,'');
  write(f,shops,'!');
  write(f,kolvo,'');
  writeln(f);
  end;
  end;
  closefile(f);
  Application.MessageBox(Pchar('???? ??????? ????????'), '??????????...' );
end;

procedure print_mas;
var k:integer;
begin
for k := 1 to n do
     form1.StringGrid1.Cells[0,k]:=inttostr(k);
   for k := 1 to n do
  begin
   form1.StringGrid1.Cells[1,k]:= a[k].name;
   form1.StringGrid1.Cells[2,k]:= a[k].price;
   form1.StringGrid1.Cells[3,k]:= a[k].shops;
   form1.StringGrid1.Cells[4,k]:= a[k].kolvo;
   end;
end;


       procedure print_bmas;
var k:integer;
begin
for k := 1 to n do
     form1.StringGrid1.Cells[0,k]:=inttostr(k);
   for k := 1 to n do
  begin
   form1.StringGrid1.Cells[1,k]:= b[k].name;
   form1.StringGrid1.Cells[2,k]:= b[k].price;
   form1.StringGrid1.Cells[3,k]:= b[k].shops;
   form1.StringGrid1.Cells[4,k]:= b[k].kolvo;
   end;
end;


procedure clean_grid;
var i,j:integer;
begin
   with Form1.StringGrid1 do
     for i := 1 to n  do
       for j := 0 to 5 do
         Cells[j, i] := '';
end;




procedure add_new;
begin
    N:=n+1;
    a[n].Name:=form2.edit1.text+'';
    a[n].price:=form2.edit2.text+' ';
    a[n].shops:=form2.edit3.text+'';
    if form2.combobox1.itemindex=0 then
    a[n].kolvo:=form2.edit4.Text+' ??.' else
    a[n].kolvo:=form2.edit4.Text+' ??.';
   Application.MessageBox(Pchar('????? ??????? ????????'), '?????????? ?????????' );
   form1.stringgrid1.RowCount:=form1.stringgrid1.RowCount+1;
end;

procedure delete_tm;
var index,i:integer;
begin
    if MessageDlg('???????, ??? ?????? ??????? ??? ???????',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes
            then begin
            index:=ydal.combobox1.ItemIndex+1;
    if (index<=n) then begin

  For i:= index to n-1 do { kol - ????? ?????????? ?????????}
   Begin
   a[i].name:=a[i+1].name;
   a[i].price:=a[i+1].price;
   a[i].shops:=a[i+1].shops;
   a[i].kolvo:=a[i+1].kolvo;
   end;
   a[n].name:='';
   a[n].price:='';
   a[n].shops:='';
   a[n].kolvo:='';
   form1.StringGrid1.Cells[0,n]:='';
   form1.StringGrid1.Cells[1,n]:='';
   form1.StringGrid1.Cells[2,n]:='';
   form1.StringGrid1.Cells[3,n]:='';
   form1.StringGrid1.Cells[4,n]:='';
   n:=n-1;   {????? ?????? ????????? ?????????? ????????? ?? 1}
   form1.StringGrid1.RowCount:=form1.stringgrid1.RowCount-1;
    end;
Application.MessageBox(Pchar('???????? ?????? ?????????!'), '????????...' );
    end
    else
   Application.MessageBox(Pchar('?????? ??? ???? ??????? ??? ? ??????'), '??????' );
end;

procedure sort_name;
var i,j:integer;
begin
  for i:=1 to n-1 do
for j:=i+1 to n do
 if b[i].name>b[j].name then
   begin
    v:=b[i];
    b[i]:=b[j];
    b[j]:=v;
   end;
end;


procedure sort_shops;
var i,j:integer;
begin
  for i:=1 to n do
for j:=i+1 to n do
 if b[i].shops<b[j].shops then
   begin
    v:=b[i];
    b[i]:=b[j];
    b[j]:=v;
   end;

end;

 procedure sort_kolvo;
    var i,j:integer; s,s1:string;
   begin
  for i:=1 to n do
for j:=i+1 to n do
begin
s:='';
  s:=copy(b[i].kolvo,1,pos('.',b[i].kolvo)-4);
  s1:=copy(b[j].kolvo,1,pos('.',b[j].kolvo)-4);
 if strtoint(s)<=strtoint(s1) then
   begin
    v:=b[i];
    b[i]:=b[j];
    b[j]:=v;
   end;
end;

 end;

procedure sort_cena;
 var i,j:integer; s,s1:string;
   begin
  for i:=1 to n do
for j:=i+1 to n do
begin
s:='';
  s:=copy(b[i].price,1,pos(' ',b[i].price)-1);
  s1:=copy(b[j].price,1,pos(' ',b[j].price)-1);
 if strtoint(s)<=strtoint(s1) then
   begin
    v:=b[i];
    b[i]:=b[j];
    b[j]:=v;
   end;
end;
end;

procedure search_mas;
var i,p:integer; str:string;
begin
gl:=0;
str:=form1.SearchBox1.Text;
p:=1;
         for i:=1 to n do
          begin
            if (copy(a[i].name,1,length(str))=str) or (copy(a[i].price,1,length(str))=str) or (copy(a[i].shops,1,length(str))=str) or (copy(a[i].kolvo,1,length(str))=str)then
             begin
                gl:=i;
                print_one;
                p:=p+1;
             end;
             form1.StringGrid1.rowcount:=p;
end;
if form1.SearchBox1.Text='' then begin
clean_grid;
print_mas;
end;
end;

procedure create_b;
var
  i: Integer;
begin
 for i := 1 to n do
b[i]:=a[i];
end;

procedure print_one;
begin
io:=io+1;
   form1.StringGrid1.Cells[0,io]:=inttostr(io);
   form1.StringGrid1.Cells[1,io]:= a[gl].name;
   form1.StringGrid1.Cells[2,io]:= a[gl].price;
   form1.StringGrid1.Cells[3,io]:= a[gl].shops;
   form1.StringGrid1.Cells[4,io]:= a[gl].kolvo;

end;

procedure rewrite_combo;
  var s:string; i:integer;
begin
Ydal.ComboBox1.Items.Clear;
s:='';
for I := 1 to n do begin
s:=a[i].Name+a[i].price+a[i].shops+a[i].kolvo;
ydal.ComboBox1.Items.Add(s);
s:='';
ydal.ComboBox1.itemindex:=0;
end;

end;
end.
