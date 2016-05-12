object frmRecebimentos: TfrmRecebimentos
  Left = 249
  Top = 206
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Recebimentos de Contas'
  ClientHeight = 436
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 436
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 784
      Height = 55
      Align = alTop
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BevelWidth = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      object Image1: TImage
        Left = 8
        Top = 6
        Width = 40
        Height = 40
        Picture.Data = {
          07544269746D6170F6000000424DF60000000000000076000000280000001000
          0000100000000100040000000000800000000000000000000000100000000000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00777700000000077777000880000000070008800880000007088008888300
          0007000888438800000770883434388000077783434343883007770734343438
          8807777883434388883777708834388980377777008888808037777777003000
          3807777777703038800777777770888007777777777000077777777777777777
          7777}
        Stretch = True
      end
      object DBText2: TDBText
        Left = 49
        Top = 11
        Width = 149
        Height = 37
        AutoSize = True
        DataField = 'PRE_NMCLIE'
        DataSource = dsPrestacoes
        Transparent = True
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 395
      Width = 784
      Height = 40
      Align = alBottom
      TabOrder = 1
      object btConfirmar: TBitBtn
        Left = 13
        Top = 8
        Width = 133
        Height = 25
        Caption = '&Confirmar Pagamento'
        TabOrder = 0
        Visible = False
        OnClick = btConfirmarClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF331400451B00572200572200471C00361600FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF491C00491C00803200A54100AA
          4200AA4200A74100843400511F00511F00FF00FFFF00FFFF00FFFF00FFFF00FF
          5923006E2B00AF4400B14500AA4200A54100AA4200AA4200AF4400B14500702C
          00361600FF00FFFF00FFFF00FF5923007B3000C54D00B84800AA4200A54100A5
          4100A74100A74100A74100AA4200B14500702C00511F00FF00FFFF00FF592300
          D45300CC5000BB4900AA4200B25510F3E3D4F8EFE7C67F42A74100A74100AA42
          00B14500511F00FF00FF5F2500A03F00EB5C00CC5000B14500AC4300AA4603DA
          AA7EFFFFFFFCF8F4C4793AA74100A74100AF4400843400451B005F2500D75400
          EB5C00D45300B14500AA4200AC4300AA4200D5A06FFEFEFCFCF7F3C27738A741
          00AC43009E3E00451B00772E00F66000F86200FED5AFF8D1ACF4CFABF8D0ABF7
          CEA6F6CFAAFCF8F6FFFFFFFAF4EECB894FAA4200AA42004F1F00893500FF7813
          FF6A04FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFCFFFFFFFFFFFFE6C6
          A7AC4300AA4200572200893500FF8829FF801EF48931FC8C32FC8C31FC8C31F8
          8225EDA566FEFBF8FFFFFFE9B88CC75A0BB84800A541004B1D00893500FF801E
          FFAD67FF6400EE5D00FB6300FB6300FC8B30FCEBDAFFFFFFEAAF79CF5200C54D
          00BB4900953A004B1D00FF00FFE65A00FFC693FF9842E15800EB5C00FB7511FF
          F8F2FFFFFFF0AC70CF5200CA4F00C04B00C74E00752D00FF00FFFF00FFE65A00
          FF892BFFDAB7FF9741F86200EA6405FCC695FEB87AE35C01D95500D45300D754
          00B44600752D00FF00FFFF00FFFF00FFC54D00FF9842FFE2C6FFBB7FFF8728FF
          750FFF6B05FF6E08FF6E08FF6701CA4F00702C00FF00FFFF00FFFF00FFFF00FF
          FF00FFFF801EFF801EFFBA7DFFD5ADFFC591FFB574FFA558FF8323D75400D754
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE15800FF700AFF
          7D19FF7813FB6300B64700FF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object BitBtn2: TBitBtn
        Left = 151
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Fechar'
        TabOrder = 1
        Visible = False
        Kind = bkClose
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 336
      Width = 784
      Height = 59
      Align = alBottom
      TabOrder = 2
      object pnlCalc: TPanel
        Left = 1
        Top = 1
        Width = 782
        Height = 57
        Align = alClient
        TabOrder = 0
        Visible = False
        object lbl_SubTotal: TLabel
          Left = 224
          Top = 24
          Width = 26
          Height = 13
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_TOTAL: TLabel
          Left = 464
          Top = 24
          Width = 26
          Height = 13
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 16
          Top = 24
          Width = 42
          Height = 13
          AutoSize = True
          DataField = 'PRE_NMDESC'
          DataSource = dsPrestacoes
        end
        object Label2: TLabel
          Left = 224
          Top = 8
          Width = 70
          Height = 13
          Caption = 'SUB-TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 465
          Top = 8
          Width = 41
          Height = 13
          Caption = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 16
          Top = 8
          Width = 75
          Height = 13
          Caption = 'PRESTA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lbl_Dias: TLabel
          Left = 565
          Top = 24
          Width = 26
          Height = 13
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_correcao: TLabel
          Left = 328
          Top = 24
          Width = 26
          Height = 13
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_vljuros: TLabel
          Left = 400
          Top = 24
          Width = 26
          Height = 13
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 307
          Top = 8
          Width = 59
          Height = 13
          Caption = 'VL.CORR.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 387
          Top = 8
          Width = 61
          Height = 13
          Caption = 'VL.JUROS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 56
      Width = 784
      Height = 280
      Align = alClient
      DataSource = dsPrestacoes
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PRE_CDPRES'
          Title.Caption = 'N.'#186' RECEB.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_NMCLIE'
          Title.Caption = 'CLIENTE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_NMDESC'
          Title.Caption = 'DESCRI'#199#195'O'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_NMINDI'
          Title.Caption = 'INDICE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_VLANTE'
          Title.Caption = 'VL.BASE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_PECORR'
          Title.Caption = '%COR.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_VLCORR_CALC'
          Title.Caption = 'VL.CORRE.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_VLSUBT_CALC'
          Title.Caption = 'SUB-TOTAL'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_PEJURO'
          Title.Caption = '% JUROS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_VLJURO_CALC'
          Title.Caption = 'VL.JUROS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_TOTAL_CALC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Caption = 'VALOR PRESTA'#199#195'O'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_DTVENC'
          Title.Caption = 'DT.VCTO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRE_NRPRES'
          Title.Caption = 'PARCELA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PRE_DIASAT'
          Title.Caption = 'ATRASO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_VLMULT'
          Title.Caption = 'MULTA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_JURVCT'
          Title.Caption = 'JUROS A/VENC.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRE_QTDIAS'
          Visible = True
        end>
    end
  end
  object dsReceber: TDataSource
    DataSet = dmBD.tbContReceber
    Left = 640
    Top = 96
  end
  object dsHistorico: TDataSource
    DataSet = dmBD.tbHistorico
    Left = 705
    Top = 97
  end
  object dsPrestacoes: TDataSource
    DataSet = dmBD.tbPrestacoes
    Left = 673
    Top = 97
  end
end
