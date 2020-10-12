uses crt;
var x1,x2,x3,y,y1:set of byte;
i,k:integer;
 
begin
 clrscr;
 x1:=[];
 x2:=[];
 x3:=[];
 for i:=1 to 20 do x1:=x1+[i];
 for i:=10 to 30 do if i mod 10=0 then x2:=x2+[i];
 for i:=1 to 21 do if i mod 2 = 1 then x3:=x3+[i];
 
 y:=(x1+x2)*(x1+x3)-(x2+x3);
 y1:=[];
 
 for i:=1 to 30 do if (i mod 7 = 0) and (i in y) then y1:=y1+[i];
  
 write('Множество Y: ');
 for i:=1 to 30 do if i in y then write(i,' ');
 writeln;
  
 write('Множество Y1: ');
 for i:=1 to 30 do if i in y1 then write(i,' ');
 
 
 writeln;
 k:=0;
 for i:=1 to 30 do if i in y1 then inc(k);
 writeln('Мощность Y1 - ',k);
 readln;
end.