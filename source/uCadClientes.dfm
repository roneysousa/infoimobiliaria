object frmClientes: TfrmClientes
  Left = 193
  Top = 113
  Width = 631
  Height = 375
  Caption = 'Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 623
    Height = 296
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 42
      Width = 621
      Height = 253
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Básico'
      end
      object TabSheet2: TTabSheet
        Caption = 'TabSheet2'
        ImageIndex = 1
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 621
      Height = 41
      Align = alTop
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 296
    Width = 623
    Height = 52
    Align = alBottom
    TabOrder = 1
  end
end
