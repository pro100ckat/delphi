program lab6_2;
uses crt;
type plist =^tlist;
     tlist = record
      key:real;
      next: plist;
      end;
      list= record
        pfirst,plast:plist;
        end;
var head:plist; k:real;

procedure display(h:plist);
var p:plist;
begin
  p:=h;
  while p<> nil do
  begin
    write(p^.key:4:2,' ');
    p:=p^.next;
  end;
end;

procedure addhead(var h:plist; x:real);
var p:plist;
begin
  new(p);
  p^.key:=x;
  p^.next:=h;
  h:=p;
end;

procedure add(var h:plist; x:real);
var p,s:plist;
begin
  new(p);
  p^.key:=x;
  p^.next:=nil;
  s:=h;
  while s^.next<>nil do
    s:=s^.next;
    s^.next:=p;
  h^.next:=p;
  h:=s;
end;

procedure read_(var h:plist);
var i,m:integer; n:real;
begin
  write('Введите количество элементов '); readln(m);
  if m = 0 then exit;
  readln(n);
  addhead(h,n);
  for i:=2 to m do
  begin
    read(n);
    add(h,n);
  end;
end;

procedure main(var h:plist;x:real);
var n,m:real; p:plist;
begin
  p:=h; n:=p^.key;
  while p<> nil do
  begin
    m:=p^.key;
    p:=p^.next
  end;
  addhead(h,m*n);
end;
begin
clrscr;
  head:=nil;
  read_(head);
  display(head);
  main(head,k);
  display(head);
  readkey;
end.