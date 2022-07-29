program z1;
uses crt;
type
ssilka = ^integer;
vector = array[1..100] of ssilka;

function sred(a:vector;n:byte):real;
var i:byte; s,k:integer; sr:real;
begin
s:=0;
sr:=0;
k:=0;
for i:=1 to n do begin
if a[i]^>0 then begin
k:=k+1;
s:=s+a[i]^;
end;
end;
if k<>0 then sr:=s/k else sr:=0;
sred:=sr;
end;


var a:vector;
    n,i:byte;


begin
clrscr;
write('Razmer vektora ot 1 do 100 n=');
readln(n);
writeln('Vvedite elementi vektora');
for i:=1 to n do
 begin
  new(a[i]);
  readln(a[i]^);
 end;
 writeln('sred pnaz poloj = ', sred(a,n):4:2);


readkey;
end.