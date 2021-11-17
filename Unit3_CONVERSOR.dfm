object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Converte_Segundos'
  ClientHeight = 271
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 61
    Width = 203
    Height = 19
    Caption = 'Tempo de Setup da M'#225'quina'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TempSeg: TLabel
    Left = 317
    Top = 96
    Width = 108
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ContadorHora: TMaskEdit
    Left = 317
    Top = 8
    Width = 129
    Height = 33
    Alignment = taCenter
    DoubleBuffered = False
    EditMask = '!90:00:00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 8
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
    Text = '  :  :  '
  end
  object setup1: TButton
    Left = 32
    Top = 102
    Width = 75
    Height = 25
    Caption = 'Setup1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = setup1Click
  end
  object setup3: TButton
    Left = 160
    Top = 102
    Width = 75
    Height = 25
    Caption = 'Setup2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 392
    Top = 224
  end
end
