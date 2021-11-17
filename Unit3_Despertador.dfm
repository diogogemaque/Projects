object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Despertador'
  ClientHeight = 261
  ClientWidth = 401
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelHrs: TLabel
    Left = 40
    Top = 104
    Width = 95
    Height = 18
    Caption = 'Despertar em:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object status: TLabel
    Left = 288
    Top = 108
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object relogio: TPanel
    Left = 40
    Top = 8
    Width = 321
    Height = 74
    BevelInner = bvLowered
    BorderWidth = 3
    BorderStyle = bsSingle
    Caption = '00:00:00'
    Color = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -47
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Desativar: TButton
    Left = 229
    Top = 145
    Width = 132
    Height = 41
    Caption = 'Desativar'
    TabOrder = 1
    OnClick = DesativarClick
  end
  object Ativar: TButton
    Left = 40
    Top = 145
    Width = 132
    Height = 41
    Caption = 'Ativar'
    TabOrder = 2
    OnClick = AtivarClick
  end
  object MaskEdit1: TMaskEdit
    Left = 149
    Top = 100
    Width = 92
    Height = 27
    Alignment = taCenter
    EditMask = '!90:00:00;1;_'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 8
    ParentFont = False
    TabOrder = 3
    Text = '  :  :  '
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 8
    Top = 216
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 48
    Top = 216
  end
end
