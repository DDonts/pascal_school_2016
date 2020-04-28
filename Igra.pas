uses GraphABC, ABCObjects;
var
x,y:integer;
pic:file;

procedure ris;
    begin
    Window.Clear;
    Brush.Color := clGreen;
    DrawCircle(x,y,20);
    Redraw;
    Sleep(1);
    end;
procedure KeyDown(Key: integer);
var
i:integer;
begin
    
   case Key of
  VK_Q:  exit;
  VK_A:  for i:=0 to 10 do
            begin
            x := x - 1;
            ris;
            Sleep(10);
            end;
  VK_D:  for i:=0 to 10 do
            begin
            x := x + 1;
            ris;
            Sleep(10);
            end;
  VK_W:  begin  
          for i:=0 to 20 do
            begin
            y := y - 1;
            ris;
            Sleep(10);
            end;
          for i:=0 to 20 do
            begin
            y := y + 1;
            ris;
            Sleep(10);
            end;
         end;
  VK_S:  y := y + 10;
   end;
   ris
end;


begin
  // Привязка обработчиков к событиям
  x:=200; y:=x;  
  assign(pic,'lena.jpg');
  Create(0,0,pic);
  OnKeyDown := KeyDown;
  
end.

