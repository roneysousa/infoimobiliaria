object frmCadContReceber: TfrmCadContReceber
  Left = 255
  Top = 150
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contas a Receber'
  ClientHeight = 394
  ClientWidth = 679
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 657
    Height = 394
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 655
      Height = 44
      Align = alTop
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      object Label9: TLabel
        Left = 47
        Top = 4
        Width = 291
        Height = 37
        Caption = 'Contas a Receber'
        Transparent = True
      end
      object Image1: TImage
        Left = 8
        Top = 2
        Width = 40
        Height = 40
        Picture.Data = {
          07544269746D617016020000424D160200000000000076000000280000001E00
          00001A0000000100040000000000A00100000000000000000000100000000000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00000000000077700000000007777777000BBBBBB0000770BBBBBBB0007777
          77000BBBBBB0330070BBBBBB0330077777000BBBBBB0333000BBBBBB03330077
          770070000000000000000000033330077700770BBB0BBBBBBBB0BBBBB0333300
          77007770BBB0BBBBBB030BBBBB033330070077770BB0BBBBBB0330BBBBB03333
          0000777770B000000003330BBBBB033330007777770B0BBBBBB03330BBBBB033
          300077777770B0BBBBBB03330BBBBB033000777777770B0BBBBBB03330BBBBB0
          0700777777777000BBBBBB033300000007007777777077770BBBBBB033077777
          770077777700777770BBBBBB00077B077700777777B7777777000000007777B0
          7700777770077777777777777777777B070077777B7777777777777777777777
          B0007777B077777777077070777777777B007777B77777777B07707B07777777
          7700777B077777777B777077077777777700777B77777777B0777077B0777777
          7700777077777777B777707770777777770077777777777B077770777B077777
          770077777777777B777770777707777777007777777777777777707777B77777
          7700}
        Stretch = True
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 45
      Width = 655
      Height = 348
      Align = alClient
      TabOrder = 1
      object Label2: TLabel
        Left = 73
        Top = 71
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
      object Label3: TLabel
        Left = 55
        Top = 95
        Width = 62
        Height = 13
        Caption = 'Descrição:'
        FocusControl = dbeNMDESC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 83
        Top = 163
        Width = 34
        Height = 13
        Caption = 'Valor:'
        FocusControl = dbeVLTOTA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 17
        Top = 140
        Width = 102
        Height = 13
        Caption = 'Data Vencimento:'
        FocusControl = dbeDTVENC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 32
        Top = 117
        Width = 87
        Height = 13
        Caption = 'Data da Conta:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblRecebida: TLabel
        Left = 226
        Top = 187
        Width = 92
        Height = 13
        Caption = 'Conta Recebida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label8: TLabel
        Left = 16
        Top = 19
        Width = 101
        Height = 13
        Caption = 'Nº. Recebimento:'
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
        Top = 19
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'PRE_CDPRES'
        DataSource = dsContasReceber
        Transparent = True
      end
      object DBText2: TDBText
        Left = 122
        Top = 185
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'PRE_DTPAGA'
        DataSource = dsContasReceber
        Transparent = True
      end
      object Label7: TLabel
        Left = 18
        Top = 185
        Width = 99
        Height = 13
        Caption = 'Data Pagamento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 120
        Top = 42
        Width = 65
        Height = 17
        DataField = 'PRE_NRPRES'
        DataSource = dsContasReceber
      end
      object Label1: TLabel
        Left = 54
        Top = 43
        Width = 62
        Height = 13
        Caption = 'Prestação:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dbeNMDESC: TDBEdit
        Left = 120
        Top = 87
        Width = 254
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PRE_NMDESC'
        DataSource = dsContasReceber
        ReadOnly = True
        TabOrder = 1
      end
      object dbeVLTOTA: TDBEdit
        Left = 120
        Top = 156
        Width = 100
        Height = 21
        DataField = 'PRE_TOTAL'
        DataSource = dsContasReceber
        ReadOnly = True
        TabOrder = 4
      end
      object dbeDTVENC: TDBEdit
        Left = 120
        Top = 133
        Width = 100
        Height = 21
        DataField = 'PRE_DTVENC'
        DataSource = dsContasReceber
        ReadOnly = True
        TabOrder = 3
        OnExit = dbeDTVENCExit
        OnKeyPress = dbeDTVENCKeyPress
      end
      object DBEdit1: TDBEdit
        Left = 120
        Top = 110
        Width = 100
        Height = 21
        DataField = 'PRE_DTCADA'
        DataSource = dsContasReceber
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 120
        Top = 63
        Width = 254
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PRE_NMCLIE'
        DataSource = dsContasReceber
        TabOrder = 0
      end
      object dbGridContasRec: TDBGrid
        Left = 1
        Top = 280
        Width = 653
        Height = 67
        Align = alBottom
        DataSource = dsContasReceber
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyDown = dbGridContasRecKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PRE_NRPRES'
            Title.Caption = 'N.º PREST.'
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
            Title.Caption = 'ÍNDICE'
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
            Title.Caption = 'VL.ANTER.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRE_VLCORR'
            Title.Caption = 'CORREÇÃO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRE_PECORR'
            Title.Caption = 'VL.INDICE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRE_VLSUBT'
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
            FieldName = 'PRE_VLJURO'
            Title.Caption = 'VL.JUROS'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRE_PEJURO'
            Title.Caption = '%JUROS'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRE_TOTAL'
            Title.Caption = 'TOTAL'
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
            Title.Caption = 'VENCIMENTO'
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
            Title.Caption = 'JUROS_VCT'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRE_DTPAGA'
            Title.Caption = 'PAGAMENTO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 657
    Top = 0
    Width = 22
    Height = 394
    Align = alRight
    Caption = 'ToolBar1'
    Flat = True
    Images = frmNetImo.lista_imagens
    TabOrder = 1
    object btPrimeiro: TToolButton
      Left = 0
      Top = 0
      Caption = 'btPrimeiro'
      ImageIndex = 8
      Wrap = True
      OnClick = btPrimeiroClick
    end
    object btAnterior: TToolButton
      Left = 0
      Top = 22
      Caption = 'btAnterior'
      ImageIndex = 9
      Wrap = True
      OnClick = btAnteriorClick
    end
    object btProximo: TToolButton
      Left = 0
      Top = 44
      Caption = 'btProximo'
      ImageIndex = 10
      Wrap = True
      OnClick = btProximoClick
    end
    object tbUltimo: TToolButton
      Left = 0
      Top = 66
      Caption = 'tbUltimo'
      ImageIndex = 11
      Wrap = True
      OnClick = tbUltimoClick
    end
    object btAdicionar: TToolButton
      Left = 0
      Top = 88
      Caption = 'btAdicionar'
      ImageIndex = 12
      Wrap = True
      Visible = False
      OnClick = btAdicionarClick
    end
    object btEditar: TToolButton
      Left = 0
      Top = 110
      Caption = 'btEditar'
      ImageIndex = 13
      Wrap = True
      OnClick = btEditarClick
    end
    object btExcluir: TToolButton
      Left = 0
      Top = 132
      Caption = 'btExcluir'
      ImageIndex = 14
      Wrap = True
      Visible = False
      OnClick = btExcluirClick
    end
    object btGravar: TToolButton
      Left = 0
      Top = 154
      Caption = 'btGravar'
      ImageIndex = 15
      Wrap = True
      OnClick = btGravarClick
    end
    object btCancelar: TToolButton
      Left = 0
      Top = 176
      Caption = 'btCancelar'
      ImageIndex = 16
      Wrap = True
      OnClick = btCancelarClick
    end
    object btGerarBoleto: TToolButton
      Left = 0
      Top = 198
      Hint = 'Gerar Boleto Bancário'
      Caption = 'btGerarBoleto'
      ImageIndex = 37
      Wrap = True
      OnClick = btGerarBoletoClick
    end
    object btLocalizar: TToolButton
      Left = 0
      Top = 220
      Caption = 'btLocalizar'
      ImageIndex = 22
      Wrap = True
      Visible = False
    end
    object btFechar: TToolButton
      Left = 0
      Top = 242
      Caption = 'btFechar'
      ImageIndex = 2
      OnClick = btFecharClick
    end
  end
  object dsContasReceber: TDataSource
    DataSet = dmBD.tbPrestacoes
    OnStateChange = dsContasReceberStateChange
    OnDataChange = dsContasReceberDataChange
    Left = 457
    Top = 9
  end
  object dsEscritorio: TDataSource
    DataSet = dmBD.tbEscritorio
    Left = 456
    Top = 48
  end
  object dsClientes: TDataSource
    DataSet = dmBD.tbClientes
    Left = 457
    Top = 90
  end
end
