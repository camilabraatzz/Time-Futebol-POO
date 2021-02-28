unit uDefesa;

interface

uses
  uJogador, System.Classes, System.SysUtils;

type
  TDefesa = class(TJogador)
    protected
      function TempoParaAposentar : Integer; override;
  end;
implementation

const IdadeParaSeAposentar = 40;

{ TDefesa }

function TDefesa.TempoParaAposentar: Integer;
begin
  Result := IdadeParaSeAposentar - CalculaIdade;
end;

end.
