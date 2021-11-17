object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'BLOCO DE NOTAS'
  ClientHeight = 273
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 31
    Width = 476
    Height = 242
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 33
    TabOrder = 1
    object PalavraLoc: TEdit
      Left = 24
      Top = 7
      Width = 89
      Height = 21
      TabOrder = 0
    end
    object Localizar: TButton
      Left = 128
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Localizar'
      TabOrder = 1
      OnClick = LocalizarClick
    end
    object PalavraSub: TEdit
      Left = 224
      Top = 7
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Substituir: TButton
      Left = 368
      Top = 5
      Width = 97
      Height = 25
      Caption = 'Substituir Palavra'
      TabOrder = 3
      OnClick = SubstituirClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 200
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object novo: TMenuItem
        Caption = 'Novo'
        OnClick = novoClick
      end
      object abrir: TMenuItem
        Caption = 'Abrir'
        OnClick = abrirClick
      end
      object salvar: TMenuItem
        Caption = 'Salvar'
        OnClick = salvarClick
      end
      object SalvarComo1: TMenuItem
        Caption = 'Salvar Como'
        OnClick = SalvarComo1Click
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        OnClick = Fechar1Click
      end
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
    object Formatar1: TMenuItem
      Caption = 'Formatar'
      OnClick = Formatar1Click
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.txt'
    Filter = 'TXT|*.txt'
    Left = 152
    Top = 200
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.txt'
    Filter = 'TXT|*.txt'
    Left = 208
    Top = 200
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 264
    Top = 200
  end
end
