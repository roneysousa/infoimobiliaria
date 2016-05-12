object frmFormaPagamento: TfrmFormaPagamento
  Left = 306
  Top = 168
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Finalização'
  ClientHeight = 264
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 223
    Width = 421
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btConfirmar: TBitBtn
      Left = 197
      Top = 8
      Width = 135
      Height = 25
      Caption = '&Confirmar Pagamento'
      TabOrder = 0
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
    object btFechar: TBitBtn
      Left = 338
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancela&r'
      TabOrder = 1
      OnClick = btFecharClick
      Kind = bkCancel
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 421
    Height = 223
    Align = alClient
    Caption = 'Escolha o Tipo do Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 1
    object lblValor: TLabel
      Left = 24
      Top = 109
      Width = 34
      Height = 13
      Caption = 'Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 417
      Height = 72
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object btDinheiro: TBitBtn
        Left = 16
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Dinheiro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btDinheiroClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          777777777780008777777800080FBB07777770FBB08000808777780008770777
          0777777777770333077700000000077700070227777703330207027777000FBB
          0207077770770000770707777077707777070277770007777207022777777777
          2207000000000000000777777777777777777777777777777777}
      end
      object btCheque: TBitBtn
        Left = 16
        Top = 40
        Width = 75
        Height = 25
        Caption = '&Cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btChequeClick
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FFBFFF00
          FF00FF00FF00000000BFFF00FF00FF00FFBFFF00FF00FF00FFBFFF00FF00FF00
          FFBFFF00FF00FF00FF00FF00FFBFFF00FF00FF00FFBFFF00FF00FF00FFBFFF00
          FF00000000BFFF00FF0000000000FF00FFBFFF00FF00FF00FFBFFF00FF00FF00
          FF0000000000FF00FF00FF00FFBFFF00FF00FF00FFBFFF00FF00FF00FF000000
          0000FF00FF000080800000808000000000BFFF00FF00FF00FF00000000000000
          00000000000000000000FF00FF0000000000000000BFFF00FF00000000BFFF00
          FF00FF00FFBFFF00FFBFFF00FF00FF00FF00000000000000000000FFFF00FF00
          FF0000FFFF0000FFFF000000000000000000FFFF008080808000000000BFFF00
          FF00FF00FF000080800000808000008080000080800000000000000000000000
          00BFFF00FF00FF00FF0000FFFF0000000000FFFF008080808000000000BFFF00
          FF00FF00FFBF0000000000000000FF00FF0000000000FF00FF0000FFFF00FF00
          FF0000FFFF0000FFFF00FF00FF0000000000FFFF008080808000FF00FF000000
          0000FF00FF000000000000FFFF00000000000000000000000000000000000000
          00BFFF00FF00FF00FF0000FFFF0000000000FFFF008080808000FF00FFBFFF00
          FF00000000BFFF00FF0000000000FF00FF0000FFFF00FF00FF0000FFFF00FF00
          FF0000FFFF0000FFFF00FF00FF0000000000FFFF008080808000FF00FFBFFF00
          FF00FF00FF000080800000808000000000000000000000000000000000000000
          000000000000FF00FF0000FFFF0000000000FFFF00BFFF00FF00FF00FFBFFF00
          FF00FF00FFBF000000BFFF00FF00FF00FF000000000000FFFF00000000000000
          000000FFFF0000FFFF000000000000000000000000BFFF00FF00FF00FFBFFF00
          FF00FF00FFBFFF00FF000000000000808000008080000000000000FFFF000000
          00000000000000000000FF00FFBFFF00FF00FF00FFBFFF00FF00FF00FFBFFF00
          FF00FF00FFBFFF00FFBFFF00FF00000000BFFF00FF00FF00FF000000000000FF
          FF0000000000FF00FF00FF00FFBFFF00FF00FF00FFBFFF00FF00FF00FFBFFF00
          FF00FF00FFBFFF00FFBFFF00FF00FF00FF0000000000000000BFFF00FF000000
          000000FFFF00FF00FF00FF00FFBFFF00FF00FF00FFBFFF00FF00FF00FFBFFF00
          FF00FF00FFBFFF00FFBFFF00FF00FF00FFBFFF00FF00FF00FFBFFF00FF00FF00
          FF000000000000000000FF00FFBFFF00FF00FF00FFBFFF00FF00FF00FFBFFF00
          FF00FF00FFBFFF00FFBFFF00FF00FF00FFBFFF00FF00FF00FFBFFF00FF00FF00
          FFBFFF00FF000000FF00000000BFFF00FF00FF00FFBFFF00FF00FF00FFBFFF00
          FF00FF00FFBFFF00FFBFFF00FF00FF00FFBFFF00FF00FF00FFBFFF00FF00FF00
          FFBFFF00FF0000000000FF00FFBFFF00FF00FF00FFBFFF00FF00}
      end
    end
    object dbeVLPARC: TDBEdit
      Left = 59
      Top = 102
      Width = 100
      Height = 21
      DataField = 'PAG_VLPARC'
      DataSource = dsContPagar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object pnlCheque: TPanel
      Left = 2
      Top = 87
      Width = 417
      Height = 134
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      object Label2: TLabel
        Left = 35
        Top = 39
        Width = 51
        Height = 13
        Caption = 'Agência:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 48
        Top = 63
        Width = 38
        Height = 13
        Caption = 'Conta:'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 199
        Top = 62
        Width = 70
        Height = 13
        Caption = 'N.º Cheque:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 44
        Top = 16
        Width = 41
        Height = 13
        Caption = 'Banco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 8
        Top = 109
        Width = 81
        Height = 13
        Caption = 'Valor Cheque:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 210
        Top = 85
        Width = 59
        Height = 13
        Caption = 'Bom Para:'
        FocusControl = dbeData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 90
        Top = 33
        Width = 100
        Height = 21
        DataField = 'PAG_NRAGEN'
        DataSource = dsContPagar
        TabOrder = 1
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 90
        Top = 56
        Width = 100
        Height = 21
        DataField = 'PAG_NRCONT'
        DataSource = dsContPagar
        TabOrder = 2
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 270
        Top = 56
        Width = 100
        Height = 21
        DataField = 'PAG_NRCHEQ'
        DataSource = dsContPagar
        TabOrder = 3
        OnKeyPress = DBEdit1KeyPress
      end
      object dblcmbBANCOS: TDBLookupComboBox
        Left = 90
        Top = 10
        Width = 145
        Height = 21
        DataField = 'PAG_CDBANC'
        DataSource = dsContPagar
        KeyField = 'BAN_CDBANC'
        ListField = 'BAN_NMBANC'
        ListSource = dsBancos
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 90
        Top = 102
        Width = 100
        Height = 21
        DataField = 'PAG_VLPARC'
        DataSource = dsContPagar
        TabOrder = 6
      end
      object dbcbxCHEQPRE: TDBCheckBox
        Left = 6
        Top = 80
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Pré-Datado'
        DataField = 'PAG_FLPRED'
        DataSource = dsContPagar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = dbcbxCHEQPREClick
      end
      object dbeData: TDBEdit
        Left = 270
        Top = 79
        Width = 100
        Height = 21
        DataField = 'PAG_DTPRED'
        DataSource = dsContPagar
        Enabled = False
        TabOrder = 5
      end
    end
  end
  object dsContPagar: TDataSource
    DataSet = dmBD.tbContPagar
    Left = 370
    Top = 81
  end
  object dsBancos: TDataSource
    DataSet = dmBD.tbBancos
    Left = 378
    Top = 111
  end
end
