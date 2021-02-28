unit uMeioCampo;

interface

uses
  uJogador, System.SysUtils;

type
  TMeioCampo = class(TJogador)
  protected
    function TempoParaAposentar : Integer; override;
  end;
implementation

const IdadeParaSeAposentar = 38;

{ TMeioCampo }

function TMeioCampo.TempoParaAposentar: Integer;
begin
  Result := IdadeParaSeAposentar - CalculaIdade;
end;

end.
