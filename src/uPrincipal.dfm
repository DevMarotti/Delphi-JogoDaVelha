object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  AutoSize = True
  Caption = '  Jogo da Velha  ( Humano Vs. Humano )'
  ClientHeight = 562
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 425
    Height = 562
    Color = clCream
    ParentBackground = False
    TabOrder = 0
    object pbtn_1_1: TPanel
      Tag = 1
      Left = 53
      Top = 126
      Width = 97
      Height = 97
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 0
      object sbtn_1_1: TSpeedButton
        Tag = 10
        Left = 0
        Top = 0
        Width = 97
        Height = 97
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -80
        Font.Name = 'Segoe Script'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtn_1_1Click
        ExplicitLeft = -16
      end
    end
    object pbtn_1_2: TPanel
      Tag = 2
      Left = 156
      Top = 126
      Width = 97
      Height = 97
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 1
      object sbtn_1_2: TSpeedButton
        Tag = 10
        Left = 0
        Top = 0
        Width = 97
        Height = 97
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -80
        Font.Name = 'Segoe Script'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtn_1_2Click
        ExplicitLeft = -32
        ExplicitTop = -40
      end
    end
    object pbtn_1_3: TPanel
      Tag = 3
      Left = 259
      Top = 126
      Width = 97
      Height = 97
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 2
      object sbtn_1_3: TSpeedButton
        Tag = 10
        Left = 0
        Top = 0
        Width = 97
        Height = 97
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -80
        Font.Name = 'Segoe Script'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtn_1_3Click
        ExplicitLeft = -32
        ExplicitTop = -40
      end
    end
    object pbtn_2_2: TPanel
      Tag = 5
      Left = 156
      Top = 229
      Width = 97
      Height = 97
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 3
      object sbtn_2_2: TSpeedButton
        Tag = 10
        Left = 0
        Top = 0
        Width = 97
        Height = 97
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -80
        Font.Name = 'Segoe Script'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtn_2_2Click
        ExplicitLeft = -32
        ExplicitTop = -40
      end
    end
    object pbtn_2_3: TPanel
      Tag = 6
      Left = 259
      Top = 229
      Width = 97
      Height = 97
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 4
      object sbtn_2_3: TSpeedButton
        Tag = 10
        Left = 0
        Top = 0
        Width = 97
        Height = 97
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -80
        Font.Name = 'Segoe Script'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtn_2_3Click
        ExplicitLeft = -32
        ExplicitTop = -40
      end
    end
    object pbtn_3_1: TPanel
      Tag = 7
      Left = 53
      Top = 332
      Width = 97
      Height = 97
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 5
      object sbtn_3_1: TSpeedButton
        Tag = 10
        Left = 0
        Top = 0
        Width = 97
        Height = 97
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -80
        Font.Name = 'Segoe Script'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtn_3_1Click
        ExplicitLeft = -32
        ExplicitTop = -40
      end
    end
    object pbtn_3_2: TPanel
      Tag = 8
      Left = 156
      Top = 332
      Width = 97
      Height = 97
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 6
      object sbtn_3_2: TSpeedButton
        Tag = 10
        Left = 0
        Top = 0
        Width = 97
        Height = 97
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -80
        Font.Name = 'Segoe Script'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtn_3_2Click
        ExplicitLeft = -32
        ExplicitTop = -40
      end
    end
    object pbtn_3_3: TPanel
      Tag = 9
      Left = 259
      Top = 332
      Width = 97
      Height = 97
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 7
      object sbtn_3_3: TSpeedButton
        Tag = 10
        Left = 0
        Top = 0
        Width = 97
        Height = 97
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -80
        Font.Name = 'Segoe Script'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtn_3_3Click
        ExplicitLeft = -32
        ExplicitTop = -40
      end
    end
    object pbtn_2_1: TPanel
      Tag = 4
      Left = 53
      Top = 229
      Width = 97
      Height = 97
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 8
      object sbtn_2_1: TSpeedButton
        Tag = 10
        Left = 0
        Top = 0
        Width = 97
        Height = 97
        Cursor = crHandPoint
        Align = alClient
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -80
        Font.Name = 'Segoe Script'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtn_2_1Click
        ExplicitLeft = -48
        ExplicitTop = -47
      end
    end
    object pNovoJogo: TPanel
      Left = 53
      Top = 72
      Width = 303
      Height = 41
      BevelOuter = bvNone
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 9
      object sbtnNovoJogo: TSpeedButton
        Left = 0
        Top = 0
        Width = 303
        Height = 41
        Cursor = crHandPoint
        Align = alClient
        Caption = 'Novo Jogo'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -21
        Font.Name = 'Segoe Print'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbtnNovoJogoClick
        ExplicitTop = -1
      end
    end
  end
end
