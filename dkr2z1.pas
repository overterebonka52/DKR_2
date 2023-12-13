program dkr2z1;
const
  r = 10; // размер массива
var
  arr: array[1..r] of integer; 
  k: integer; // к-ая статистика
  i, j, x: integer;

begin
  writeln('Введите массив: '); // ввод массива с клавиатуры
  for i := 1 to r do
    read(arr[i]);
  
  write('Введите k: '); // ввод k
  readln(k);
  
  if (k < 1) or (k > r) then // проверка корректности введенного k
  begin
    writeln('Ошибка: k должно быть от 1 до ', r);
    exit;
  end;
  
  for i := low(arr) to high(arr) do // алгоритм поиска k-ой статистики
  begin
    x := arr[i];
    j := i;
    while (j > 1) and (x < arr[j - 1]) do
    begin
      arr[j] := arr[j - 1];
      j := j - 1; // уменьшает j на единицу
    end;
    arr[j] := x;
  end;
  
  write('Отсортированный массив: '); // вывод отсортированного массива
  for i := low(arr) to high(arr) do
    write(arr[i], ' ');
  writeln;
  
  writeln('K-ая статистика: ', arr[k]); // вывод k-ой статистики
end.
