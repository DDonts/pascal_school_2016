uses
  graphABC;
function ugol(x1,x2,x3,y1,y2,y3:real):real;
var
i:real;
begin
  x1:=x1-x2;
  y1:=y1-y2;
  x2:=x3-x2;
  y2:=y3-y2;
  ugol:=arccos((x1*x2+y1*y2)/(sqrt(sqr(x1)+sqr(y1))*sqrt(sqr(x2)+sqr(y2))));
end;

function dist(a1,b1,a2,b2:integer):real;
begin
  dist:=sqrt(sqr(a2-a1)+sqr(b2-b1));
end;

function dist1(a2,b2:integer):real;
begin
  dist1:=sqrt(sqr(a2)+sqr(b2));
end;

var
  donts,i,x,y,x1,x2,y1,y2,x3,y3:integer;
  fangle,b2angle,bangle,n,angleup, a, b, angle, sina, cosa, d1,d2,d3: real;
  

begin
  donts:=0;while donts<1 do begin
  x := 200; y := 180; x1:=300; y1:=120; x2:=200; y2:=240; x3:=400; y3:=240; angleup:=ugol(200,300,400,240,120,240);
  a:=0; b:=0; write('Введите угол [-80..30] относительно OX и коэфициент преломнения n(n>1)');
  read(angle, n{показатель преломления});clearwindow();   angle:=degtorad(-angle); sina := sin(angle); cosa := cos(angle); fangle:=angleup*(n-1);
  SetPenWidth(2);MoveTo(200, 240); LineTo(400, 240);LineTo(300, 120); LineTo(200, 240); 
  MoveTo(x, y); 
  d1:=dist(300,120,200,240);
  repeat
  begin
    a:=a+cosa;
    x:=x+round(a);
    b:=b+sina;
    y:=y+round(b);
    LineTo(x, y);
    d2:=round(dist(300,120,x,y)*10)/10;
    d3:=round(dist(200,240,x,y)*10)/10;
    x:=x-round(a);
    y:=y-round(b);
  end;
  until (d2+d3)<d1;
  angle:=ugol(200,180,x,y,x1,y1);
  bangle:=angle/n;
  cosa:=cos(bangle); sina:=sin(bangle); d1:=dist(300,120,400,240);
  repeat
  begin
    a:=a+cosa;
    x:=x+round(a);
    b:=b+sina;
    y:=y+round(b);
    LineTo(x, y);
    d2:=round(dist(300,120,x,y)*10)/10;
    d3:=round(dist(400,240,x,y)*10)/10;
    x:=x-round(a);
    y:=y-round(b);
  end;
  until ((d2+d3)<d1){ or ((d2+d3)<dist(200,240,400,240))};
  cosa:=cos(fangle); sina:=sin(fangle);
  for i:=0 to 100 do
  begin
    a:=a+cosa;
    x:=x+round(a);
    b:=b+sina;
    y:=y+round(b);
    LineTo(x, y);
    x:=x-round(a);
    y:=y-round(b);
  end;
  
 end;
end.