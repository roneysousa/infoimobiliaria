object frmRelPagRec: TfrmRelPagRec
  Left = 192
  Top = 107
  Width = 696
  Height = 465
  Caption = 'frmRelPagRec'
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
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
      100
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
    SnapToGrid = True
    Units = Native
    Zoom = 100
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 185
      Width = 740
      Height = 40
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
        105.833333333333
        1957.91666666667)
      BandType = rbPageFooter
      object QRSysData1: TQRSysData
        Left = 605
        Top = 2
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1600.72916666667
          5.29166666666667
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
        Left = 645
        Top = 21
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1706.5625
          55.5625
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
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 107
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        283.104166666667
        1957.91666666667)
      BandType = rbPageHeader
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
      object txtNMRELA: TQRLabel
        Left = 8
        Top = 55
        Width = 187
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
          494.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat�rio de Contas a Receber'
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
      object legNMRELA: TQRLabel
        Left = 466
        Top = 16
        Width = 271
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.9166666666667
          1232.95833333333
          42.3333333333333
          717.020833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CONFRONTOS - PAGAR/RECEBER'
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
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 145
      Width = 740
      Height = 40
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
        105.833333333333
        1957.91666666667)
      BandType = rbDetail
    end
  end
  object qryPagar: TQuery
    DatabaseName = 'NETIMO'
    SQL.Strings = (
      'Select * from SACPAG')
    Left = 16
    Top = 8
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
    object qryPagarPAG_VLCOMP: TCurrencyField
      FieldName = 'PAG_VLCOMP'
      Origin = 'NETIMO."SACPAG.DB".PAG_VLCOMP'
    end
    object qryPagarPAG_VLPARC: TCurrencyField
      FieldName = 'PAG_VLPARC'
      Origin = 'NETIMO."SACPAG.DB".PAG_VLPARC'
    end
  end
  object qryReceber: TQuery
    DatabaseName = 'NETIMO'
    SQL.Strings = (
      'Select * from SACREC')
    Left = 56
    Top = 8
    object qryReceberREC_NRRECE: TStringField
      FieldName = 'REC_NRRECE'
      Origin = 'NETIMO."SACREC.DB".REC_NRRECE'
      Size = 7
    end
    object qryReceberREC_DTCADA: TDateField
      FieldName = 'REC_DTCADA'
      Origin = 'NETIMO."SACREC.DB".REC_DTCADA'
    end
    object qryReceberREC_DTVENC: TDateField
      FieldName = 'REC_DTVENC'
      Origin = 'NETIMO."SACREC.DB".REC_DTVENC'
    end
    object qryReceberREC_DTRECE: TDateField
      FieldName = 'REC_DTRECE'
      Origin = 'NETIMO."SACREC.DB".REC_DTRECE'
    end
    object qryReceberREC_VLTOTA: TCurrencyField
      FieldName = 'REC_VLTOTA'
      Origin = 'NETIMO."SACREC.DB".REC_VLTOTA'
    end
    object qryReceberREC_VLPARC: TCurrencyField
      FieldName = 'REC_VLPARC'
      Origin = 'NETIMO."SACREC.DB".REC_VLPARC'
    end
  end
end
