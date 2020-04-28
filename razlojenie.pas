var
c:array[1..1001]of integer;
i,j,k,a,b:integer;
begin
read(a);
k:=2; i:=1;
while k<=a do
  if (a mod k)<1 then
  begin
  a:=a div k;
  c[i]:=k;
  i:=i+1;
  end
  else
  k:=k+1;
for i:=1 to 1000 do
begin
if c[i]<>0 then
write(c[i]);
if c[i+1]>0 then
write('*');
end;
end.