type Tdonts=record
  x,y:integer;
  used:boolean;
  end;
function dist(x1,y1,x2,y2:integer):real;
  begin
  dist:=sqrt(sqr(x2-x1)+sqr(y2-y1));
  end;
var
s,n,i,j:integer;
sum:real;
a:array [1..100] of Tdonts;
d:array [1..1000] of array [1..1000] of real;
begin
read (n);
for i:=1 to n do
  read(a[i].x,a[i].y);
for i:=1 to n do
  begin
  for j:=1 to n do
      d[i,j]:=dist(a[i].x,a[i].y,a[j].x,a[j].y);
  end;    
for s:=1 to n do
  begin
  for i:=1 to n do
    for j:=1 to n-i do
      if d[s,j]>d[s,j+1] then
        swap(d[s,j],d[s,j+1]);
  end;
sum:=0;    
    
for i:=1 to n do
  sum:=sum+d[i,2];
write(sum);
end.