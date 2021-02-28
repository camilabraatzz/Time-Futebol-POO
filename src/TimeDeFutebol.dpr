program TimeDeFutebol;

uses
  Vcl.Forms,
  uFrmPrincipal in 'view\uFrmPrincipal.pas' {FrmJogadores},
  uJogador in 'classe\uJogador.pas',
  uEnumPosicoes in 'classe\uEnumPosicoes.pas',
  uJogadorFactory in 'classe\uJogadorFactory.pas',
  uTime in 'classe\uTime.pas',
  uMeioCampo in 'classe\uMeioCampo.pas',
  uDefesa in 'classe\uDefesa.pas',
  uAtacante in 'classe\uAtacante.pas',
  uExceptions in 'exception\uExceptions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmJogadores, FrmJogadores);
  Application.Run;
end.
