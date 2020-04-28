var
i,a,b,c,h:uint64;
begin
read(b);
a:=1; c:=1;
for i:=1 to b do
  begin
  a:=a*i;
  h:=a div c mod 10;
  while h=0 do
  begin
  c:=c*10;
  h:=a div c mod 10;
  end;
  a:=a div c;
  while a>=100 do
  a:=a mod 100;
  c:=1;
  {writeln(i,' ',a);
  }end;
    while a>=10 do
  a:=a mod 10;
  writeln(a);
end.