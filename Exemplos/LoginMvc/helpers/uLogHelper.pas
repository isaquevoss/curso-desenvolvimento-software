unit uLogHelper;

interface

  procedure gravaLog(mensagem: string);

implementation

uses
  System.Classes, System.SysUtils;

  procedure gravaLog(mensagem: string);
  var
    sl: tstringList;
  begin
    sl := TStringList.Create();
    if FileExists('./arq.log') then
      sl.LoadFromFile('./arq.log');
    sl.Add('data_hora '+DateTimeToStr( now()));
    sl.Add(mensagem);
    sl.Add('-----------------------------------------------------------------');
    sl.SaveToFile('./arq.log');
  end;

end.
