object frmRelPropCompra: TfrmRelPropCompra
  Left = 192
  Top = 107
  Width = 696
  Height = 481
  VertScrollBar.Position = 219
  Caption = 'frmRelPropCompra'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object qrPropCompra: TQuickRep
    Left = 0
    Top = -219
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qryContrato
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100
      2970
      700
      2100
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 953
      Width = 718
      Height = 83
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        219.604166666667
        1899.70833333333)
      BandType = rbPageFooter
      object QRSysData1: TQRSysData
        Left = 608
        Top = 5
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1608.66666666667
          13.2291666666667
          343.958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Text = 'Data/Hora:'
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 648
        Top = 24
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1714.5
          63.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'P�gina:'
        Transparent = False
        FontSize = 10
      end
      object txtEmpresa: TQRLabel
        Left = 8
        Top = 8
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          21.1666666666667
          190.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'txtEmpresa'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtUsuario: TQRLabel
        Left = 8
        Top = 32
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          84.6666666666667
          171.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'txtUsuario'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtNMRELA: TQRLabel
        Left = 8
        Top = 55
        Width = 120
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          145.520833333333
          317.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Contrato de Cliente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 265
      Width = 718
      Height = 164
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Style = psDashDotDot
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        433.916666666667
        1899.70833333333)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 5
        Top = 8
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          21.1666666666667
          248.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PROPONENTE:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 5
        Top = 29
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          76.7291666666667
          277.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NATURALIDADE:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 5
        Top = 69
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          182.5625
          216.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CART.IDENT:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 5
        Top = 49
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          129.645833333333
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SEXO:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 330
        Top = 49
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          873.125
          129.645833333333
          254)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ESTADO CIVIL:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 5
        Top = 130
        Width = 180
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          13.2291666666667
          343.958333333333
          476.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PROFIS�O/RAMO NEG�CIO:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 330
        Top = 29
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          873.125
          76.7291666666667
          293.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NACIONALIDADE:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 5
        Top = 107
        Width = 53
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          13.2291666666667
          283.104166666667
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CIDADE:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 552
        Top = 29
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1460.5
          76.7291666666667
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NASC.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 552
        Top = 48
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1460.5
          127
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'REGIME:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 330
        Top = 69
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          873.125
          182.5625
          224.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '�RG.EXPED.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 552
        Top = 69
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1460.5
          182.5625
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CPF/CGC:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 5
        Top = 88
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          232.833333333333
          343.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'END.RESSIDENCIAL:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 552
        Top = 89
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1460.5
          235.479166666667
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BAIRRO:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 333
        Top = 107
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          881.0625
          283.104166666667
          153.458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ESTADO:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 552
        Top = 107
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1460.5
          283.104166666667
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CEP:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 552
        Top = 130
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1460.5
          343.958333333333
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FONE:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 101
        Top = 8
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          267.229166666667
          21.1666666666667
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_NMCLIE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 110
        Top = 28
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          291.041666666667
          74.0833333333333
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_NATURA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 445
        Top = 29
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1177.39583333333
          76.7291666666667
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_NACION'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 600
        Top = 29
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1587.5
          76.7291666666667
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_DTNASC'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 47
        Top = 49
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          124.354166666667
          129.645833333333
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_SEXO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 429
        Top = 49
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1135.0625
          129.645833333333
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_ESTCIV'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 86
        Top = 70
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          227.541666666667
          185.208333333333
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_IDEINS'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 418
        Top = 69
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1105.95833333333
          182.5625
          206.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_OREMIS'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 618
        Top = 69
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1635.125
          182.5625
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_IDEINS'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 139
        Top = 88
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          367.770833333333
          232.833333333333
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_ENCLIE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText19: TQRDBText
        Left = 610
        Top = 89
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1613.95833333333
          235.479166666667
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_BAIRRO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 62
        Top = 109
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          164.041666666667
          288.395833333333
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_CIDADE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 586
        Top = 107
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1550.45833333333
          283.104166666667
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_CEPCLI'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 189
        Top = 130
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          500.0625
          343.958333333333
          219.604166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_NOMFUN'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Left = 596
        Top = 130
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1576.91666666667
          343.958333333333
          214.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_NRFONE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 396
        Top = 107
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1047.75
          283.104166666667
          190.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryCliente
        DataField = 'CLI_UFCLIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 429
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        1899.70833333333)
      BandType = rbTitle
      object QRLabel19: TQRLabel
        Left = 239
        Top = 3
        Width = 229
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          632.354166666667
          7.9375
          605.895833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'IM�VEL OBJETO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 20
      end
    end
    object QRLabel26: TQRLabel
      Left = 193
      Top = 206
      Width = 441
      Height = 46
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        121.708333333333
        510.645833333333
        545.041666666667
        1166.8125)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PROPOSTA DE COMPRA'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 24
    end
    object QRMemo1: TQRMemo
      Left = 38
      Top = 165
      Width = 307
      Height = 46
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        121.708333333333
        100.541666666667
        436.5625
        812.270833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = True
      Color = clWhite
      Lines.Strings = (
        'Fone:(08)-233-4343 - Fax:(08)-233-4343 - Teresina-PI'
        'Av.Ininga - Riverside Walk - 1201, Loja V-98'
        'CEP - 64048-110')
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBImage1: TQRDBImage
      Left = 40
      Top = 7
      Width = 313
      Height = 146
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        386.291666666667
        105.833333333333
        18.5208333333333
        828.145833333333)
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 469
      Width = 718
      Height = 249
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        658.8125
        1899.70833333333)
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 313
        Top = 118
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          828.145833333333
          312.208333333333
          219.604166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryContrato
        DataField = 'CTC_VLENTR'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 5
        Top = 5
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          13.2291666666667
          256.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR TOTAL:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 5
        Top = 25
        Width = 238
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          66.1458333333333
          629.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FORMA DE REAJUSTE;AT� ENTREGA:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 310
        Top = 5
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          820.208333333333
          13.2291666666667
          116.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SINAL:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 510
        Top = 5
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1349.375
          13.2291666666667
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SALDO:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 510
        Top = 25
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1349.375
          66.1458333333333
          283.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AP�S ENTREGA:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 104
        Top = 5
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          275.166666666667
          13.2291666666667
          216.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryContrato
        DataField = 'CTC_VLIMOV'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 358
        Top = 5
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          947.208333333333
          13.2291666666667
          219.604166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryContrato
        DataField = 'CTC_VLENTR'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 566
        Top = 5
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1497.54166666667
          13.2291666666667
          203.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryContrato
        DataField = 'QRDBText27'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 248
        Top = 25
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          656.166666666667
          66.1458333333333
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryContrato
        DataField = 'CTC_CDINDI'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText30: TQRDBText
        Left = 624
        Top = 25
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1651
          66.1458333333333
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryContrato
        DataField = 'CTC_INDENT'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 1
        Top = 46
        Width = 714
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875
          2.64583333333333
          121.708333333333
          1889.125)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape10: TQRShape
        Left = 2
        Top = 84
        Width = 714
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875
          5.29166666666667
          222.25
          1889.125)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel42: TQRLabel
        Left = 347
        Top = 51
        Width = 13
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          918.104166666667
          134.9375
          34.3958333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'c'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 20
      end
      object QRLabel43: TQRLabel
        Left = 8
        Top = 90
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          238.125
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 160
        Top = 90
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          423.333333333333
          238.125
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 296
        Top = 90
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          783.166666666667
          238.125
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 456
        Top = 90
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1206.5
          238.125
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 600
        Top = 90
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1587.5
          238.125
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 8
        Top = 118
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          312.208333333333
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel49: TQRLabel
        Left = 8
        Top = 144
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          381
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel50: TQRLabel
        Left = 8
        Top = 171
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          452.4375
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel51: TQRLabel
        Left = 9
        Top = 198
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          23.8125
          523.875
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape11: TQRShape
        Left = 2
        Top = 109
        Width = 714
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875
          5.29166666666667
          288.395833333333
          1889.125)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape12: TQRShape
        Left = 2
        Top = 136
        Width = 714
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875
          5.29166666666667
          359.833333333333
          1889.125)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape13: TQRShape
        Left = 2
        Top = 162
        Width = 714
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875
          5.29166666666667
          428.625
          1889.125)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape14: TQRShape
        Left = 2
        Top = 190
        Width = 714
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875
          5.29166666666667
          502.708333333333
          1889.125)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape15: TQRShape
        Left = 2
        Top = 217
        Width = 714
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875
          5.29166666666667
          574.145833333333
          1889.125)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape16: TQRShape
        Left = 2
        Top = 244
        Width = 714
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875
          5.29166666666667
          645.583333333333
          1889.125)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel52: TQRLabel
        Left = 9
        Top = 227
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          23.8125
          600.604166666667
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'c'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 144
        Top = 87
        Width = 3
        Height = 161
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          425.979166666667
          381
          230.1875
          7.9375)
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape2: TQRShape
        Left = 280
        Top = 87
        Width = 3
        Height = 161
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          425.979166666667
          740.833333333333
          230.1875
          7.9375)
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape3: TQRShape
        Left = 440
        Top = 87
        Width = 3
        Height = 161
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          425.979166666667
          1164.16666666667
          230.1875
          7.9375)
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Left = 576
        Top = 87
        Width = 3
        Height = 161
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          425.979166666667
          1524
          230.1875
          7.9375)
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRDBText1: TQRDBText
        Left = 599
        Top = 117
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1584.85416666667
          309.5625
          219.604166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryContrato
        DataField = 'CTC_DTENTR'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 463
        Top = 118
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1225.02083333333
          312.208333333333
          219.604166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryContrato
        DataField = 'CTC_VLENTR'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 204
        Top = 117
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          539.75
          309.5625
          21.1666666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 718
      Width = 718
      Height = 235
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        621.770833333333
        1899.70833333333)
      BandType = rbSummary
      object txtData: TQRLabel
        Left = 224
        Top = 207
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          592.666666666667
          547.6875
          113.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'txtData'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 302
        Top = 71
        Width = 151
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          799.041666666667
          187.854166666667
          399.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Assinatura do Proponente'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 78
        Top = 63
        Width = 565
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          206.375
          166.6875
          1494.89583333333)
        Pen.Width = 2
        Shape = qrsHorLine
      end
    end
  end
  object qryContrato: TQuery
    DatabaseName = 'NETIMO'
    SQL.Strings = (
      'Select * from SACCTC Where CTC_CDCLIEN='#39'0000002'#39)
    Left = 24
    Top = 74
    object qryContratoCTC_CDCONT: TStringField
      FieldName = 'CTC_CDCONT'
      Origin = 'NETIMO."SACCTC.DB".CTC_CDCONT'
      Size = 10
    end
    object qryContratoCTC_CDEMPR: TStringField
      FieldName = 'CTC_CDEMPR'
      Origin = 'NETIMO."SACCTC.DB".CTC_CDEMPR'
      Size = 7
    end
    object qryContratoCTC_CDIMOV: TStringField
      FieldName = 'CTC_CDIMOV'
      Origin = 'NETIMO."SACCTC.DB".CTC_CDIMOV'
      Size = 10
    end
    object qryContratoCTC_VLIMOV: TCurrencyField
      FieldName = 'CTC_VLIMOV'
      Origin = 'NETIMO."SACCTC.DB".CTC_VLIMOV'
    end
    object qryContratoCTC_CDCLIEN: TStringField
      FieldName = 'CTC_CDCLIEN'
      Origin = 'NETIMO."SACCTC.DB".CTC_CDCLIEN'
      Size = 7
    end
    object qryContratoCTC_CDINDI: TStringField
      FieldName = 'CTC_CDINDI'
      Origin = 'NETIMO."SACCTC.DB".CTC_CDINDI'
      Size = 5
    end
    object qryContratoCTC_VLENTR: TCurrencyField
      FieldName = 'CTC_VLENTR'
      Origin = 'NETIMO."SACCTC.DB".CTC_VLENTR'
    end
    object qryContratoCTC_DTENTR: TDateField
      FieldName = 'CTC_DTENTR'
      Origin = 'NETIMO."SACCTC.DB".CTC_DTENTR'
    end
    object qryContratoCTC_QTBALO: TSmallintField
      FieldName = 'CTC_QTBALO'
      Origin = 'NETIMO."SACCTC.DB".CTC_QTBALO'
    end
    object qryContratoCTC_TOBALO: TCurrencyField
      FieldName = 'CTC_TOBALO'
      Origin = 'NETIMO."SACCTC.DB".CTC_TOBALO'
    end
    object qryContratoCTC_QTPRES: TSmallintField
      FieldName = 'CTC_QTPRES'
      Origin = 'NETIMO."SACCTC.DB".CTC_QTPRES'
    end
    object qryContratoCTC_VLPRES: TCurrencyField
      FieldName = 'CTC_VLPRES'
      Origin = 'NETIMO."SACCTC.DB".CTC_VLPRES'
    end
    object qryContratoCTC_DTPRES: TDateField
      FieldName = 'CTC_DTPRES'
      Origin = 'NETIMO."SACCTC.DB".CTC_DTPRES'
    end
    object qryContratoCTC_DTCONT: TDateField
      FieldName = 'CTC_DTCONT'
      Origin = 'NETIMO."SACCTC.DB".CTC_DTCONT'
    end
    object qryContratoCTC_DTENTG: TDateField
      FieldName = 'CTC_DTENTG'
      Origin = 'NETIMO."SACCTC.DB".CTC_DTENTG'
    end
    object qryContratoCTC_INDENT: TStringField
      FieldName = 'CTC_INDENT'
      Origin = 'NETIMO."SACCTC.DB".CTC_INDENT'
      Size = 5
    end
  end
  object qryCliente: TQuery
    DatabaseName = 'NETIMO'
    SQL.Strings = (
      'Select * from SACCLI Where CLI_CDCLIE='#39'0000002'#39)
    Left = 58
    Top = 74
    object qryClienteCLI_CDCLIE: TStringField
      FieldName = 'CLI_CDCLIE'
      Origin = 'NETIMO."SACCLI.DB".CLI_CDCLIE'
      Size = 7
    end
    object qryClienteCLI_NMCLIE: TStringField
      FieldName = 'CLI_NMCLIE'
      Origin = 'NETIMO."SACCLI.DB".CLI_NMCLIE'
      Size = 40
    end
    object qryClienteCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      Origin = 'NETIMO."SACCLI.DB".CLI_SEXO'
      Size = 10
    end
    object qryClienteCLI_DTNASC: TDateField
      FieldName = 'CLI_DTNASC'
      Origin = 'NETIMO."SACCLI.DB".CLI_DTNASC'
    end
    object qryClienteCLI_NACION: TStringField
      FieldName = 'CLI_NACION'
      Origin = 'NETIMO."SACCLI.DB".CLI_NACION'
    end
    object qryClienteCLI_NATURA: TStringField
      FieldName = 'CLI_NATURA'
      Origin = 'NETIMO."SACCLI.DB".CLI_NATURA'
    end
    object qryClienteCLI_ENCLIE: TStringField
      FieldName = 'CLI_ENCLIE'
      Origin = 'NETIMO."SACCLI.DB".CLI_ENCLIE'
      Size = 40
    end
    object qryClienteCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'NETIMO."SACCLI.DB".CLI_BAIRRO'
    end
    object qryClienteCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      Origin = 'NETIMO."SACCLI.DB".CLI_NRFONE'
      Size = 13
    end
    object qryClienteCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'NETIMO."SACCLI.DB".CLI_CIDADE'
    end
    object qryClienteCLI_CEPCLI: TStringField
      FieldName = 'CLI_CEPCLI'
      Origin = 'NETIMO."SACCLI.DB".CLI_CEPCLI'
      Size = 9
    end
    object qryClienteCLI_ESTCIV: TStringField
      FieldName = 'CLI_ESTCIV'
      Origin = 'NETIMO."SACCLI.DB".CLI_ESTCIV'
      Size = 11
    end
    object qryClienteCLI_CPFCGC: TStringField
      FieldName = 'CLI_CPFCGC'
      Origin = 'NETIMO."SACCLI.DB".CLI_CPFCGC'
      Size = 18
    end
    object qryClienteCLI_IDEINS: TStringField
      FieldName = 'CLI_IDEINS'
      Origin = 'NETIMO."SACCLI.DB".CLI_IDEINS'
      Size = 14
    end
    object qryClienteCLI_NRCGC: TStringField
      FieldName = 'CLI_NRCGC'
      Origin = 'NETIMO."SACCLI.DB".CLI_NRCGC'
      Size = 18
    end
    object qryClienteCLI_OREMIS: TStringField
      FieldName = 'CLI_OREMIS'
      Origin = 'NETIMO."SACCLI.DB".CLI_OREMIS'
      Size = 5
    end
    object qryClienteCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      Origin = 'NETIMO."SACCLI.DB".CLI_UFCLIE'
      Size = 2
    end
    object qryClienteCLI_NOMFUN: TStringField
      FieldName = 'CLI_NOMFUN'
      Origin = 'NETIMO."SACCLI.DB".CLI_NOMFUN'
    end
  end
end
