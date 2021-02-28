unit uJogador;

interface
uses
  DateUtils, System.SysUtils, uExceptions, uEnumPosicoes,
  System.Classes, System.Generics.Collections;

type
  TJogador = class(TObject)
    private
      FNome          : String;
      FPosicao       : TPosicoes;
      FDataNasc      : TDateTime;
      FNacionalidade : String;
      FAltura        : Double;
      FPeso          : Double;
      function GetDataNasc: TDateTime;
      function GetNome: String;
      procedure SetDataNasc(const Value: TDateTime);
      procedure SetNome(const Value: string);
      function GetAltura: Double;
      function GetNacionalidade: String;
      function GetPeso: Double;
      function GetPosicao: TPosicoes;
      procedure SetAltura(const Value: Double);
      procedure SetNacionalidade(const Value: String);
      procedure SetPeso(const Value: Double);
      procedure SetPosicao(const Value: TPosicoes);

    protected
      function TempoParaAposentar : Integer; virtual;

    public
      constructor Create;
      property Nome : String read GetNome write SetNome;
      property Posicao : TPosicoes read GetPosicao write SetPosicao;
      property DataNasc : TDateTime read GetDataNasc write SetDataNasc;
      property Nacionalidade : String read GetNacionalidade write SetNacionalidade;
      property Altura : Double read GetAltura write SetAltura;
      property Peso : Double read GetPeso write SetPeso;
      function ToString : String; override;
      function CalculaIdade : Integer;
  end;

implementation

{ TPessoa }

constructor TJogador.Create;
begin
  inherited Create;
end;

function TJogador.GetAltura: Double;
begin
  Result := FAltura;
end;

function TJogador.GetDataNasc: TDateTime;
begin
  Result := FDataNasc;
end;

function TJogador.GetNacionalidade: String;
begin
  Result := FNacionalidade;
end;

function TJogador.GetNome: String;
begin
  Result := FNome;
end;

function TJogador.GetPeso: Double;
begin
  Result := FPeso;
end;

function TJogador.GetPosicao: TPosicoes;
begin
  Result := FPosicao;
end;

procedure TJogador.SetAltura(const Value: Double);
begin
  if Value = 0 then
    raise ECampoObrigatorio.Create;
  FAltura := Value;
end;

procedure TJogador.SetDataNasc(const Value: TDateTime);
begin
  if Value = 0 then
    raise ECampoObrigatorio.Create;
  FDataNasc := Value;
end;

procedure TJogador.SetNacionalidade(const Value: String);
begin
  if Value = '' then
    raise ECampoObrigatorio.Create;
  FNacionalidade := Value;
end;

procedure TJogador.SetNome(const Value: string);
begin
  if Value = '' then
    raise ECampoObrigatorio.Create;
  FNome := Value;
end;

procedure TJogador.SetPeso(const Value: Double);
begin
  if Value = 0 then
    raise ECampoObrigatorio.Create;
  FPeso := Value;
end;

procedure TJogador.SetPosicao(const Value: TPosicoes);
begin
  FPosicao := Value;
end;

function TJogador.CalculaIdade: Integer;
begin
  Result := YearsBetween(now, DataNasc);
end;

function TJogador.TempoParaAposentar: Integer;
begin
  Result := 0;
end;

function TJogador.ToString: String;
begin
  Result := 'Jogador ' + sLineBreak + ' ' + sLineBreak
          + 'Nome: '  + Nome + sLineBreak
          + 'Idade: ' + CalculaIdade.ToString + sLineBreak
          + 'Nacionalidade: ' + Nacionalidade + sLineBreak
          + 'Altura: ' + Altura.ToString + sLineBreak
          + 'Peso: ' + Peso.ToString + sLineBreak
          + 'Tempo para se aposentar: ' + TempoParaAposentar.ToString + ' anos'
          + sLineBreak + ' ';
end;

end.
