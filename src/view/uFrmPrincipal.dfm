object FrmJogadores: TFrmJogadores
  Left = 0
  Top = 0
  Caption = 'Jogadores'
  ClientHeight = 345
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 210
    Height = 345
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 304
    ExplicitHeight = 343
    object Label1: TLabel
      Left = 17
      Top = 150
      Width = 102
      Height = 13
      Caption = 'Data de nascimento: '
    end
    object Label2: TLabel
      Left = 17
      Top = 14
      Width = 148
      Height = 25
      BiDiMode = bdLeftToRight
      Caption = 'Time de futebol'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 17
      Top = 107
      Width = 40
      Height = 13
      Caption = 'Posi'#231#227'o:'
    end
    object edtNome: TLabeledEdit
      Left = 17
      Top = 76
      Width = 176
      Height = 21
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome: '
      TabOrder = 0
    end
    object btnListar: TButton
      Left = 17
      Top = 298
      Width = 176
      Height = 25
      Caption = 'Listar informa'#231#245'es'
      TabOrder = 6
      OnClick = btnListarClick
    end
    object DateTime: TDateTimePicker
      Left = 17
      Top = 167
      Width = 176
      Height = 21
      Date = 44247.000000000000000000
      Time = 0.865444016206311100
      DoubleBuffered = False
      ParentDoubleBuffered = False
      TabOrder = 2
    end
    object edtNacionalidade: TLabeledEdit
      Left = 17
      Top = 214
      Width = 176
      Height = 21
      EditLabel.Width = 73
      EditLabel.Height = 13
      EditLabel.Caption = 'Nacionalidade: '
      TabOrder = 3
    end
    object edtAltura: TLabeledEdit
      Left = 17
      Top = 257
      Width = 80
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = 'Altura: '
      TabOrder = 4
    end
    object edtPeso: TLabeledEdit
      Left = 113
      Top = 257
      Width = 80
      Height = 21
      EditLabel.Width = 23
      EditLabel.Height = 13
      EditLabel.Caption = 'Peso'
      TabOrder = 5
    end
    object cmbPosicoes: TComboBox
      Left = 17
      Top = 123
      Width = 176
      Height = 21
      TabOrder = 1
      Items.Strings = (
        'Defesa'
        'Meio-Campo'
        'Atacante')
    end
  end
  object Memo1: TMemo
    Left = 210
    Top = 0
    Width = 237
    Height = 345
    Align = alRight
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitHeight = 343
  end
end
