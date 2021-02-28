unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  uJogador, uJogadorFactory, uEnumPosicoes, uTime;

type
  TFrmJogadores = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNome: TLabeledEdit;
    btnListar: TButton;
    DateTime: TDateTimePicker;
    edtNacionalidade: TLabeledEdit;
    edtAltura: TLabeledEdit;
    edtPeso: TLabeledEdit;
    cmbPosicoes: TComboBox;
    Memo1: TMemo;
    procedure btnListarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    oJogador : TJogador;
    oTime    : TTimeJogadores;
    procedure ListarJogador;
    function CriarObejtoJogador: TJogador;
  public
    { Public declarations }

  end;

var
  FrmJogadores: TFrmJogadores;

implementation

{$R *.dfm}

procedure TFrmJogadores.btnListarClick(Sender: TObject);
begin
  ListarJogador;
end;

function TFrmJogadores.CriarObejtoJogador: TJogador;
var
  oFactoryJogador: TJogadorFactory;
begin
  oFactoryJogador := TJogadorFactory.Create;
  try
    Result := oFactoryJogador.ConstruirJogador(TPosicoes(cmbPosicoes.ItemIndex));
  finally
    oFactoryJogador.Free;
  end;
end;

procedure TFrmJogadores.FormCreate(Sender: TObject);
begin
  oTime          := TTimeJogadores.Create;
  edtAltura.Text := IntToStr(0);
  edtPeso.Text   := IntToStr(0);
end;

procedure TFrmJogadores.ListarJogador;
begin
  try
    oJogador               := CriarObejtoJogador;
    oJogador               := TJogador.Create;
    oJogador.Nome          := edtNome.Text;
    oJogador.Nacionalidade := edtNacionalidade.Text;
    oJogador.Altura        := StrToFloat(edtAltura.Text);
    oJogador.Peso          := StrToFloat(edtPeso.Text);
    oJogador.DataNasc      := DateTime.Date;

    oTime.Adicionar(oJogador);

    Memo1.Lines.Add(oTime.ToString);
  finally
    if assigned(oTime) then
      FreeAndNil(oTime);
    if Assigned(oJogador) then
      FreeAndNil(oJogador);
  end;

end;

end.
