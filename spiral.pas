var
a:array[1..100]of array[1..100] of integer;
b,i,j,k,n:integer;
begin
read(n);
k:=1; b:=n; j:=0; i:=0;
while (k<sqr(b)) do
begin
j:=j+1; i:=i+1;
    while (j<n) do
      begin
      a[i,j]:=k;
      k:=k+1;
      j:=j+1;
      end;
    while (i<n) do
      begin
      a[i,j]:=k;
      k:=k+1;
      i:=i+1
      end;
      n:=n-1;
    while (j>b-n) do
      begin
      a[i,j]:=k;
      k:=k+1;
      j:=j-1;
      end;
     while (i>b-n) do
      begin
      a[i,j]:=k;
      k:=k+1;
      i:=i-1;
      end;
end;
if b mod 2 = 1 then
begin
j:=j+1; i:=i+1;
a[i,j]:=k;
end;
for i:=1 to b do
  begin
  for j:=1 to b do
    write(a[i][j],' ');
  writeln;
  end;
end.