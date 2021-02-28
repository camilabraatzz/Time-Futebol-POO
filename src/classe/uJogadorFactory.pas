unit uJogadorFactory;

interface

uses
  uJogador, uEnumPosicoes;

type
  TJogadorFactory = class
  private
  public
    function ConstruirJogador(Posicao: TPosicoes): TJogador;
  end;
implementation

uses
  uDefesa, uAtacante, uMeioCampo;

{ TJogadorFactory }

function TJogadorFactory.ConstruirJogador(Posicao: TPosicoes): TJogador;
begin
  case Posicao of
    tfDefesa: Result    := TDefesa.Create;
    tfMeioCampo: Result := TMeioCampo.Create;
    tfAtacante: Result  := TAtacante.Create;
  else
    Result := TJogador.Create;
  end;
end;

end.
