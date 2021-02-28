unit uExceptions;

interface

uses
  System.SysUtils;

type
  ECampoObrigatorio = class(Exception)
  public
    constructor Create; reintroduce;
  end;

implementation

{ EEnderecoObrigatorio }
 { ECampoObrigatorio }

constructor ECampoObrigatorio.Create;
begin
  Self.Message := 'Preencha os campos em branco';
end;


end.
