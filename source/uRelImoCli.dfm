object frmRelImoClie: TfrmRelImoClie
  Left = 219
  Top = 192
  Width = 696
  Height = 378
  Caption = 'frmRelImoClie'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object qrImoCli: TQuickRep
    Left = 0
    Top = 0
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qryImoCli
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
    ReportTitle = 'Im�veis por Cliente'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 38
      Top = 193
      Width = 740
      Height = 24
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
        63.5
        1957.91666666667)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 3
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
          7.9375
          13.2291666666667
          219.604166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryImoCli
        DataField = 'IMO_CDIMOV'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 90
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
          238.125
          13.2291666666667
          216.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryImoCli
        DataField = 'IMO_NMTPIM'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 237
        Top = 3
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          627.0625
          7.9375
          219.604166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryImoCli
        DataField = 'IMO_ENDIMO'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 500
        Top = 3
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1322.91666666667
          7.9375
          214.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryImoCli
        DataField = 'IMO_BAIRRO'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 650
        Top = 3
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1719.79166666667
          7.9375
          214.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryImoCli
        DataField = 'IMO_VLIMOV'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 241
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
        Left = 557
        Top = 5
        Width = 181
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1473.72916666667
          13.2291666666667
          478.895833333333)
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
        Left = 686
        Top = 24
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1815.04166666667
          63.5
          137.583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'P�gina:'
        Transparent = False
        FontSize = 10
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 53
      Width = 740
      Height = 140
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
        370.416666666667
        1957.91666666667)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 5
        Top = 117
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
          309.5625
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C�DIGO:'
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
        Left = 90
        Top = 117
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          238.125
          309.5625
          293.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TIPO DE IM�VEL:'
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
        Left = 237
        Top = 117
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          627.0625
          309.5625
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ENDERE�O:'
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
        Left = 500
        Top = 117
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1322.91666666667
          309.5625
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
      object QRShape1: TQRShape
        Left = 1
        Top = 57
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
          150.8125
          1955.27083333333)
        Pen.Style = psDashDotDot
        Shape = qrsHorLine
      end
      object txtEmpresa: TQRLabel
        Left = 8
        Top = 3
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
          7.9375
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
        Top = 21
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
          55.5625
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Usu�rio:'
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
        Top = 21
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
          55.5625
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
        Left = 577
        Top = 16
        Width = 160
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1526.64583333333
          42.3333333333333
          423.333333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'IM�VEIS P/ CLIENTE'
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
      object txtNMRELA: TQRLabel
        Left = 8
        Top = 40
        Width = 199
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          105.833333333333
          526.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat�rio de Im�veis por Cliente'
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
      object QRShape2: TQRShape
        Left = 1
        Top = 107
        Width = 739
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          2.64583333333333
          283.104166666667
          1955.27083333333)
        Pen.Style = psDashDotDot
        Shape = qrsHorLine
      end
      object QRLabel10: TQRLabel
        Left = 6
        Top = 83
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          15.875
          219.604166666667
          156.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CLIENTE:'
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
        Left = 5
        Top = 63
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
          166.6875
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C�DIGO:'
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
        Left = 72
        Top = 64
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          190.5
          169.333333333333
          206.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryImoCli
        DataField = 'IMO_CDCLIE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 72
        Top = 84
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          190.5
          222.25
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryImoCli
        DataField = 'IMO_NMCLIE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 657
        Top = 117
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1738.3125
          309.5625
          201.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VL.IM�VEL:'
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
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 217
      Width = 740
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Style = psDot
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.5
        1957.91666666667)
      BandType = rbSummary
      object QRSysData3: TQRSysData
        Left = 149
        Top = 4
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          394.229166666667
          10.5833333333333
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDetailCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 3
        Top = 4
        Width = 136
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          7.9375
          10.5833333333333
          359.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quantidade de Im�veis:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object qryImoCli: TQuery
    DatabaseName = 'NETIMO'
    SQL.Strings = (
      'Select * from SACIMO')
    Left = 16
    Top = 8
    object qryImoCliIMO_CDIMOV: TStringField
      FieldName = 'IMO_CDIMOV'
      Origin = 'NETIMO."SACIMO.DB".IMO_CDIMOV'
      Size = 10
    end
    object qryImoCliIMO_TPIMOV: TStringField
      FieldName = 'IMO_TPIMOV'
      Origin = 'NETIMO."SACIMO.DB".IMO_TPIMOV'
      Size = 3
    end
    object qryImoCliIMO_CDEMPR: TStringField
      FieldName = 'IMO_CDEMPR'
      Origin = 'NETIMO."SACIMO.DB".IMO_CDEMPR'
      Size = 10
    end
    object qryImoCliIMO_CDCLIE: TStringField
      FieldName = 'IMO_CDCLIE'
      Origin = 'NETIMO."SACIMO.DB".IMO_CDCLIE'
      Size = 7
    end
    object qryImoCliIMO_ENDIMO: TStringField
      FieldName = 'IMO_ENDIMO'
      Origin = 'NETIMO."SACIMO.DB".IMO_ENDIMO'
      Size = 40
    end
    object qryImoCliIMO_NRIMOV: TStringField
      FieldName = 'IMO_NRIMOV'
      Origin = 'NETIMO."SACIMO.DB".IMO_NRIMOV'
      Size = 10
    end
    object qryImoCliIMO_BAIRRO: TStringField
      FieldName = 'IMO_BAIRRO'
      Origin = 'NETIMO."SACIMO.DB".IMO_BAIRRO'
      Size = 30
    end
    object qryImoCliIMO_NMTPIM: TStringField
      FieldKind = fkLookup
      FieldName = 'IMO_NMTPIM'
      LookupDataSet = tbTipoImoveis
      LookupKeyFields = 'TPI_CDTIPO'
      LookupResultField = 'TPI_NMDESC'
      KeyFields = 'IMO_TPIMOV'
      Lookup = True
    end
    object qryImoCliIMO_CIDADE: TStringField
      FieldName = 'IMO_CIDADE'
      Origin = 'NETIMO."SACIMO.DB".IMO_CIDADE'
      Size = 30
    end
    object qryImoCliIMO_UFIMOV: TStringField
      FieldName = 'IMO_UFIMOV'
      Origin = 'NETIMO."SACIMO.DB".IMO_UFIMOV'
      Size = 2
    end
    object qryImoCliIMO_CEDPIMO: TStringField
      FieldName = 'IMO_CEDPIMO'
      Origin = 'NETIMO."SACIMO.DB".IMO_CEDPIMO'
      Size = 9
    end
    object qryImoCliIMO_VLIMOV: TCurrencyField
      FieldName = 'IMO_VLIMOV'
      Origin = 'NETIMO."SACIMO.DB".IMO_VLIMOV'
    end
    object qryImoCliIMO_NMCLIE: TStringField
      FieldKind = fkLookup
      FieldName = 'IMO_NMCLIE'
      LookupDataSet = qyrCliente
      LookupKeyFields = 'CLI_CDCLIE'
      LookupResultField = 'CLI_NMCLIE'
      KeyFields = 'IMO_CDCLIE'
      Size = 40
      Lookup = True
    end
  end
  object qyrCliente: TQuery
    Active = True
    DatabaseName = 'NETIMO'
    SQL.Strings = (
      'Select * from SACCLI')
    Left = 48
    Top = 8
    object qyrClienteCLI_CDCLIE: TStringField
      FieldName = 'CLI_CDCLIE'
      Origin = 'NETIMO."SACCLI.DB".CLI_CDCLIE'
      Size = 7
    end
    object qyrClienteCLI_NMCLIE: TStringField
      FieldName = 'CLI_NMCLIE'
      Origin = 'NETIMO."SACCLI.DB".CLI_NMCLIE'
      Size = 40
    end
  end
  object tbTipoImoveis: TTable
    Active = True
    DatabaseName = 'NETIMO'
    TableName = 'SACTPI.db'
    Left = 88
    Top = 8
    object tbTipoImoveisTPI_CDTIPO: TStringField
      FieldName = 'TPI_CDTIPO'
      Size = 3
    end
    object tbTipoImoveisTPI_NMDESC: TStringField
      FieldName = 'TPI_NMDESC'
      Size = 30
    end
  end
end
