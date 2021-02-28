unit uAtacante;

interface

uses
  uJogador, System.SysUtils;

type
  TAtacante = class(TJogador)
  protected
    function TempoParaAposentar : Integer; override;
  end;
implementation

const IdadeParaSeAposentar = 35;

{ TAtacante }

function TAtacante.TempoParaAposentar: Integer;
begin
  Result := IdadeParaSeAposentar - CalculaIdade;
end;

end.
