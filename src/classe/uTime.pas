unit uTime;

interface

uses
  System.Generics.Collections, uJogador, uExceptions, System.Classes;

type
  TTimeJogadores = class
  private
    FListaDeJogadores: TList<TJogador>;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Adicionar(AoJogador: TJogador);
    function ToString : String; override;
  end;

implementation

{ TTime }

constructor TTimeJogadores.Create;
begin
  FListaDeJogadores := TList<TJogador>.Create;
end;

procedure TTimeJogadores.Adicionar(AoJogador: TJogador);
begin
  FListaDeJogadores.Add(AoJogador);
end;

function TTimeJogadores.ToString: String;
var
  i : integer;
begin
    for i := 0 to FListaDeJogadores.Count-1 do
    begin
      Result := FListaDeJogadores[i].ToString + sLineBreak;
    end;
end;

destructor TTimeJogadores.Destroy;
begin
  FListaDeJogadores.Free;
end;
end.
