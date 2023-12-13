program dkr2z2;
var
  s: string;
  i, dl, j, z: integer;
  n: Boolean;
begin
  writeln('Введите строку');
  readln(s);
  z:=0;
  dl:=length(s);
  for i:=0 to dl-3 do
  begin
    j:=0;
    n:=false;
    while j<dl-3 do
    begin
      if (i+1=j+1) and (i+2=j+2) and (i+3=j+3) then 
        j:=j+1;
      if (s[dl-2]=s[i+1]) and (s[dl-1]=s[i+2]) 
            and (s[dl]=s[i+3]) and (i+1<>dl-2) and (i+2<>dl-1) and (i+3<>dl) then
        n:=true;
      if (s[i+1]=s[j+1]) and (s[i+2]=s[j+2]) and (s[i+3]=s[j+3]) then
        n:=true;
      j:=j+1;
    end;
    if n=false then 
      z:=z+1;
  end;
  write('Количество уникальных подстрок из трёх символов: ', z)
end.

