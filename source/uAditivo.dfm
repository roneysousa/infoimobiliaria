object frmAditivo: TfrmAditivo
  Left = 298
  Top = 194
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aditivo'
  ClientHeight = 240
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 374
    Height = 199
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 46
      Top = 125
      Width = 71
      Height = 13
      Caption = 'Qt.Parcelas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 46
      Top = 150
      Width = 71
      Height = 13
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 22
      Top = 52
      Width = 96
      Height = 13
      Caption = 'Saldo Devendor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 75
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 24
      Top = 174
      Width = 95
      Height = 13
      Caption = 'Valor Prestação:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 120
      Top = 16
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'CTC_NMCLIE'
      DataSource = frmContrato.dsContrato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 120
      Top = 54
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'CTC_VLSALD'
      DataSource = frmContrato.dsContrato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 120
      Top = 74
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'CTC_VLPAGA'
      DataSource = frmContrato.dsContrato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 50
      Top = 73
      Width = 67
      Height = 13
      Caption = 'Total Pago:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 43
      Top = 95
      Width = 73
      Height = 13
      Caption = 'Prest.Pagas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText4: TDBText
      Left = 120
      Top = 95
      Width = 30
      Height = 13
      DataField = 'CTC_QTPAGA'
      DataSource = frmContrato.dsContrato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 152
      Top = 95
      Width = 12
      Height = 13
      Caption = 'de'
    end
    object DBText5: TDBText
      Left = 177
      Top = 95
      Width = 30
      Height = 13
      DataField = 'CTC_QTPRES'
      DataSource = frmContrato.dsContrato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 56
      Top = 34
      Width = 61
      Height = 13
      Caption = 'Vl. Imóvel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText6: TDBText
      Left = 121
      Top = 36
      Width = 50
      Height = 13
      AutoSize = True
      DataField = 'CTC_VLIMOV'
      DataSource = frmContrato.dsContrato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtQTPRES: TEdit
      Left = 120
      Top = 118
      Width = 121
      Height = 21
      TabOrder = 0
      OnExit = edtQTPRESExit
      OnKeyPress = edtQTPRESKeyPress
    end
    object edtDTVENC: TMaskEdit
      Left = 120
      Top = 142
      Width = 121
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = edtDTVENCExit
      OnKeyPress = edtQTPRESKeyPress
    end
    object edt_VLPRES: TEdit
      Left = 120
      Top = 166
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object btCalcular: TBitBtn
      Left = 295
      Top = 168
      Width = 75
      Height = 25
      Caption = '&Calcular'
      TabOrder = 3
      OnClick = btCalcularClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000330B0000330B00000001000000010000BD4D0100CB57
        0000CC5A2A00A4676900D2851A00E7AC1D00E89B2700CF8E6800FF00FF00F3BB
        9F00FFCFA500FFD6B500FFDFC300FEEBD800FFEFDE0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000080808080808
        0808080808080808080808080808080808080808080808080808080101010101
        0101010101010101010805090909090909090909090909090901050C09090B09
        090A09090B09090A0901050D02000B01000A01000A01000A0901050D09090C09
        090B09090A09090A0901050D02000D01000B01000A01000A0901050D0D0D0D0D
        0C0B0B0B0B0A0A0A0901050D0707070707070707070B0A0A0901050D030E0E0E
        0E0E0E0E070B0B0A0901050D0303030303030303030C0B0B0901050D0D0D0D0D
        0D0D0D0D0D0D0D0C090108060606060606060606060606060408080808080808
        0808080808080808080808080808080808080808080808080808}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 199
    Width = 374
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btCriarAditivo: TBitBtn
      Left = 215
      Top = 9
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = btCriarAditivoClick
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 295
      Top = 9
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
