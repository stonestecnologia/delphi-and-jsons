object Frm: TFrm
  Left = 0
  Top = 0
  Caption = 'Json'
  ClientHeight = 468
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 41
    Width = 595
    Height = 427
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = ' Gerando '
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 587
        Height = 399
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object MemoGerando: TMemo
          Left = 5
          Top = 5
          Width = 577
          Height = 389
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = ' Recebendo '
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 587
        Height = 399
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object MemoRecebendo: TMemo
          Left = 5
          Top = 5
          Width = 577
          Height = 389
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'https://jsonformatter.org/'
    TabOrder = 1
    object BtnGer: TButton
      Left = 9
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Gerando'
      TabOrder = 0
      OnClick = BtnGerClick
    end
    object btnRec: TButton
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Recebendo'
      TabOrder = 1
      OnClick = btnRecClick
    end
  end
end
