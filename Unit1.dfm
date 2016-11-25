object Form1: TForm1
  Left = 264
  Top = 124
  Width = 632
  Height = 277
  Caption = 'Timer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lessont: TLabel
    Left = 24
    Top = 24
    Width = 407
    Height = 149
    Caption = '...........'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = 12615680
    Font.Height = -133
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object lose: TLabel
    Left = 8
    Top = 176
    Width = 36
    Height = 38
    Caption = '....'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clRed
    Font.Height = -33
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object btn: TButton
    Left = 496
    Top = 184
    Width = 123
    Height = 33
    Caption = 'Start / Stop'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnClick
  end
  object se1: TSpinEdit
    Left = 544
    Top = 8
    Width = 73
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 1
    Value = 0
  end
  object se2: TSpinEdit
    Left = 544
    Top = 32
    Width = 73
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 2
    Value = 0
  end
  object btn3: TButton
    Left = 488
    Top = 8
    Width = 51
    Height = 25
    Caption = 'B.Set'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 488
    Top = 32
    Width = 51
    Height = 25
    Caption = 'L.Set'
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 8
    Top = 224
    Width = 609
    Height = 17
    Caption = 'V V V V V V V V V V V V V V V V V V V'
    TabOrder = 5
    OnClick = btn5Click
  end
  object m: TMemo
    Left = 8
    Top = 248
    Width = 609
    Height = 233
    TabOrder = 6
    Visible = False
  end
  object xpmnfst1: TXPManifest
    Left = 272
    Top = 40
  end
  object tlose: TTimer
    OnTimer = tloseTimer
    Left = 24
    Top = 8
  end
  object tlesson: TTimer
    Enabled = False
    OnTimer = tlessonTimer
    Left = 64
    Top = 8
  end
  object tmr1: TTimer
    Interval = 100
    OnTimer = tmr1Timer
    Left = 104
    Top = 8
  end
end
