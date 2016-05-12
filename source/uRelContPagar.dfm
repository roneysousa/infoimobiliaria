object frmRelContPagar: TfrmRelContPagar
  Left = 187
  Top = 250
  Width = 696
  Height = 329
  Caption = 'frmRelContPagar'
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
  object qrContPagar: TQuickRep
    Left = 0
    Top = 0
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qryPagar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100
      2794
      140
      2159
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    ReportTitle = 'Contas a Pagar'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 38
      Top = 174
      Width = 740
      Height = 43
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
        113.770833333333
        1957.91666666667)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 5
        Top = 4
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          10.5833333333333
          246.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPagar
        DataField = 'PAG_CDCOMP'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 80
        Top = 4
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          211.666666666667
          10.5833333333333
          243.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPagar
        DataField = 'PAG_NMFORN'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 5
        Top = 22
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          58.2083333333333
          243.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPagar
        DataField = 'PAG_NMDESC'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 647
        Top = 22
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1711.85416666667
          58.2083333333333
          232.833333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPagar
        DataField = 'PAG_VLPARC'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 462
        Top = 4
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1222.375
          10.5833333333333
          216.958333333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPagar
        DataField = 'PAG_DIASAT'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 264
        Top = 4
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          698.5
          10.5833333333333
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPagar
        DataField = 'PAG_DTCOMP'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 362
        Top = 4
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          957.791666666667
          10.5833333333333
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPagar
        DataField = 'PAG_DTVENC'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 264
        Top = 24
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          698.5
          63.5
          235.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPagar
        DataField = 'PAG_DTPAGA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 246
      Width = 740
      Height = 45
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
        119.0625
        1957.91666666667)
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
        Text = 'Página:'
        Transparent = False
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 53
      Width = 740
      Height = 121
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Style = psDashDotDot
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        320.145833333333
        1957.91666666667)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 5
        Top = 80
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          211.666666666667
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CÓDIGO:'
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
        Left = 71
        Top = 79
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          187.854166666667
          209.020833333333
          227.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FORNCEDOR:'
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
        Top = 100
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          13.2291666666667
          264.583333333333
          214.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DESCRIÇÃO:'
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
        Left = 679
        Top = 100
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1796.52083333333
          264.583333333333
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR:'
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
        Left = 462
        Top = 78
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1222.375
          206.375
          156.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ATRASO:'
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
        Left = 1
        Top = 73
        Width = 739
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.2291666666667
          2.64583333333333
          193.145833333333
          1955.27083333333)
        Pen.Style = psDashDotDot
        Shape = qrsHorLine
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
      object QRLabel8: TQRLabel
        Left = 8
        Top = 32
        Width = 53
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
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Usuário:'
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
        Left = 64
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
          169.333333333333
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
      object legNMRELA: TQRLabel
        Left = 592
        Top = 16
        Width = 145
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1566.33333333333
          42.3333333333333
          383.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CONTAS A PAGAR'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRLabel7: TQRLabel
        Left = 264
        Top = 79
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          698.5
          209.020833333333
          219.604166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DT.COMPRA:'
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
        Left = 362
        Top = 79
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          957.791666666667
          209.020833333333
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DT.VCTO:'
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
        Width = 172
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
          455.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relatório de Contas a Pagar'
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
      object QRLabel10: TQRLabel
        Left = 264
        Top = 96
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          698.5
          254
          288.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DT.PAGAMENTO:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 217
      Width = 740
      Height = 29
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        76.7291666666667
        1957.91666666667)
      BandType = rbSummary
      object QRLabel12: TQRLabel
        Left = 594
        Top = 8
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1571.625
          21.1666666666667
          127)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL:'
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
      object QRExpr1: TQRExpr
        Left = 647
        Top = 8
        Width = 87
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1711.85416666667
          21.1666666666667
          230.1875)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(qryPAGAR.PAG_VLPARC)'
        Mask = '###,##0.#0'
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 8
        Top = 8
        Width = 79
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
          209.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quantidade:'
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
      object QRSysData3: TQRSysData
        Left = 88
        Top = 8
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          232.833333333333
          21.1666666666667
          206.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDetailCount
        Transparent = False
        FontSize = 10
      end
    end
  end
  object qryPagar: TQuery
    OnCalcFields = qryPagarCalcFields
    DatabaseName = 'NETIMO'
    SQL.Strings = (
      'Select * from SACPAG')
    Left = 16
    Top = 16
    object qryPagarPAG_CDCOMP: TStringField
      FieldName = 'PAG_CDCOMP'
      Origin = 'NETIMO."SACPAG.DB".PAG_CDCOMP'
      Size = 10
    end
    object qryPagarPAG_NRCOMP: TStringField
      FieldName = 'PAG_NRCOMP'
      Origin = 'NETIMO."SACPAG.DB".PAG_NRCOMP'
      Size = 7
    end
    object qryPagarPAG_CDLOJA: TStringField
      FieldName = 'PAG_CDLOJA'
      Origin = 'NETIMO."SACPAG.DB".PAG_CDLOJA'
      Size = 3
    end
    object qryPagarPAG_NRPEDI: TStringField
      FieldName = 'PAG_NRPEDI'
      Origin = 'NETIMO."SACPAG.DB".PAG_NRPEDI'
      Size = 10
    end
    object qryPagarPAG_NRPARC: TStringField
      FieldName = 'PAG_NRPARC'
      Origin = 'NETIMO."SACPAG.DB".PAG_NRPARC'
      Size = 2
    end
    object qryPagarPAG_DTCOMP: TDateField
      FieldName = 'PAG_DTCOMP'
      Origin = 'NETIMO."SACPAG.DB".PAG_DTCOMP'
    end
    object qryPagarPAG_DTVENC: TDateField
      FieldName = 'PAG_DTVENC'
      Origin = 'NETIMO."SACPAG.DB".PAG_DTVENC'
    end
    object qryPagarPAG_DTPAGA: TDateField
      FieldName = 'PAG_DTPAGA'
      Origin = 'NETIMO."SACPAG.DB".PAG_DTPAGA'
    end
    object qryPagarPAG_CDFORN: TStringField
      FieldName = 'PAG_CDFORN'
      Origin = 'NETIMO."SACPAG.DB".PAG_CDFORN'
      Size = 5
    end
    object qryPagarPAG_NMFORN: TStringField
      FieldKind = fkLookup
      FieldName = 'PAG_NMFORN'
      LookupDataSet = tbForn
      LookupKeyFields = 'FOR_CDFORN'
      LookupResultField = 'FOR_NMFORN'
      KeyFields = 'PAG_CDFORN'
      Lookup = True
    end
    object qryPagarPAG_TMGARA: TStringField
      FieldName = 'PAG_TMGARA'
      Origin = 'NETIMO."SACPAG.DB".PAG_TMGARA'
    end
    object qryPagarPAG_NRNOTA: TStringField
      FieldName = 'PAG_NRNOTA'
      Origin = 'NETIMO."SACPAG.DB".PAG_NRNOTA'
      Size = 10
    end
    object qryPagarPAG_NRSERI: TStringField
      FieldName = 'PAG_NRSERI'
      Origin = 'NETIMO."SACPAG.DB".PAG_NRSERI'
      Size = 2
    end
    object qryPagarPAG_CDNATU: TStringField
      FieldName = 'PAG_CDNATU'
      Origin = 'NETIMO."SACPAG.DB".PAG_CDNATU'
      Size = 2
    end
    object qryPagarPAG_NMDESC: TStringField
      FieldName = 'PAG_NMDESC'
      Origin = 'NETIMO."SACPAG.DB".PAG_NMDESC'
      Size = 50
    end
    object qryPagarPAG_VLCOMP: TCurrencyField
      FieldName = 'PAG_VLCOMP'
      Origin = 'NETIMO."SACPAG.DB".PAG_VLCOMP'
    end
    object qryPagarPAG_VLPARC: TCurrencyField
      FieldName = 'PAG_VLPARC'
      Origin = 'NETIMO."SACPAG.DB".PAG_VLPARC'
    end
    object qryPagarPAG_VLJURO: TCurrencyField
      FieldName = 'PAG_VLJURO'
      Origin = 'NETIMO."SACPAG.DB".PAG_VLJURO'
    end
    object qryPagarPAG_VLDESC: TCurrencyField
      FieldName = 'PAG_VLDESC'
      Origin = 'NETIMO."SACPAG.DB".PAG_VLDESC'
    end
    object qryPagarPAG_VLDEAN: TCurrencyField
      FieldName = 'PAG_VLDEAN'
      Origin = 'NETIMO."SACPAG.DB".PAG_VLDEAN'
    end
    object qryPagarPAG_FLSITU: TStringField
      FieldName = 'PAG_FLSITU'
      Origin = 'NETIMO."SACPAG.DB".PAG_FLSITU'
      Size = 1
    end
    object qryPagarPAG_CDUSUA: TStringField
      FieldName = 'PAG_CDUSUA'
      Origin = 'NETIMO."SACPAG.DB".PAG_CDUSUA'
      Size = 3
    end
    object qryPagarPAG_CDPAGA: TStringField
      FieldName = 'PAG_CDPAGA'
      Origin = 'NETIMO."SACPAG.DB".PAG_CDPAGA'
      Size = 2
    end
    object qryPagarPAG_CDBANC: TStringField
      FieldName = 'PAG_CDBANC'
      Origin = 'NETIMO."SACPAG.DB".PAG_CDBANC'
      Size = 3
    end
    object qryPagarPAG_NRAGEN: TStringField
      FieldName = 'PAG_NRAGEN'
      Origin = 'NETIMO."SACPAG.DB".PAG_NRAGEN'
      Size = 5
    end
    object qryPagarPAG_NRCONT: TStringField
      FieldName = 'PAG_NRCONT'
      Origin = 'NETIMO."SACPAG.DB".PAG_NRCONT'
      Size = 12
    end
    object qryPagarPAG_NRCHEQ: TStringField
      FieldName = 'PAG_NRCHEQ'
      Origin = 'NETIMO."SACPAG.DB".PAG_NRCHEQ'
      Size = 7
    end
    object qryPagarPAG_ANOTAC: TMemoField
      FieldName = 'PAG_ANOTAC'
      Origin = 'NETIMO."SACPAG.DB".PAG_ANOTAC'
      BlobType = ftMemo
      Size = 200
    end
    object qryPagarPAG_FLPRED: TBooleanField
      FieldName = 'PAG_FLPRED'
      Origin = 'NETIMO."SACPAG.DB".PAG_FLPRED'
    end
    object qryPagarPAG_DTPRED: TDateField
      FieldName = 'PAG_DTPRED'
      Origin = 'NETIMO."SACPAG.DB".PAG_DTPRED'
    end
    object qryPagarPAG_DIASAT: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PAG_DIASAT'
      Calculated = True
    end
    object qryPagarPAG_QTDIAS: TFloatField
      FieldName = 'PAG_QTDIAS'
      Origin = 'NETIMO."SACPAG.DB".PAG_QTDIAS'
    end
  end
  object tbForn: TTable
    Active = True
    DatabaseName = 'NETIMO'
    TableName = 'SACFOR.db'
    Left = 64
    Top = 16
    object tbFornFOR_CDFORN: TStringField
      FieldName = 'FOR_CDFORN'
      Size = 5
    end
    object tbFornFOR_NMFORN: TStringField
      FieldName = 'FOR_NMFORN'
      Size = 15
    end
  end
end
