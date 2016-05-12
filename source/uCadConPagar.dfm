object frmContPagar: TfrmContPagar
  Left = 202
  Top = 154
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contas a Pagar'
  ClientHeight = 383
  ClientWidth = 739
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
    Width = 717
    Height = 383
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 37
      Top = 56
      Width = 78
      Height = 13
      Caption = 'N.º da Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 23
      Top = 103
      Width = 91
      Height = 13
      Caption = 'Empreedimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 46
      Top = 128
      Width = 69
      Height = 13
      Caption = 'Fornecedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 19
      Top = 152
      Width = 96
      Height = 13
      Caption = 'Data da Compra:'
      FocusControl = dbeDTCOMP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 26
      Top = 176
      Width = 89
      Height = 13
      Caption = 'N.º Nota/Série:'
      FocusControl = dbeNRNOTA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 53
      Top = 199
      Width = 62
      Height = 13
      Caption = 'Descrição:'
      FocusControl = DBEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 35
      Top = 223
      Width = 80
      Height = 13
      Caption = 'Data de Vcto:'
      FocusControl = dbeDTVENC
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 81
      Top = 247
      Width = 30
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEdit9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 49
      Top = 268
      Width = 65
      Height = 13
      Caption = 'Anotações:'
      FocusControl = DBMemo1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtNRCOMP: TDBText
      Left = 117
      Top = 56
      Width = 65
      Height = 17
      DataField = 'PAG_NRCOMP'
      DataSource = dsContPagar
      Transparent = True
    end
    object lbl_FLCONT: TLabel
      Left = 272
      Top = 56
      Width = 67
      Height = 13
      Caption = 'Conta Paga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label12: TLabel
      Left = 239
      Top = 223
      Width = 99
      Height = 13
      Caption = 'Data Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 344
      Top = 222
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'PAG_DTPAGA'
      DataSource = dsContPagar
      Transparent = True
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 715
      Height = 48
      Align = alTop
      Alignment = taLeftJustify
      BevelInner = bvRaised
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 10
      object Label13: TLabel
        Left = 46
        Top = 7
        Width = 257
        Height = 37
        Caption = 'Contas a Pagar'
        Transparent = True
      end
      object Image1: TImage
        Left = 7
        Top = 4
        Width = 40
        Height = 40
        Picture.Data = {
          07544269746D617076020000424D760200000000000076000000280000001E00
          0000200000000100040000000000000200000000000000000000100000000000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00777777770777777777777777777777007777777020777777777700077777
          770077777702220777777770777077777700777770222A207777770777770777
          770077770222A222077777077777077777007770222AAAA22077770777770777
          7700770222AAAAAA2207777077707777770070222AAAA2AAA220777700077777
          77000222AAAAAA2AAA220777777777777700702A2AAAAAA2AAA2207777777700
          070077022A2AAAAAAAAA2207777770777000770022A2AAAA2222A22077777077
          70007022022A2AA2AAA22A220777707770000222A022A2A2A2222AA220777700
          0700702A2A022A22222A2AAA22077777770077022A2022A222AA2AAAA2207777
          7700777022A2022A2222AAAAAA22077777007777022A2022A2AAAA2AAA2A2077
          770077777022AA022A2AAAA2AAA222077700777777022AA022A2AAAAAA222077
          77007777777022AA022A2AAAA2220777770077700077022AA022AAAA22200777
          7700770777077022AA0222A22202207777007077777077022A202A2220A22207
          770070777770777022A202220A2220777700707777707777022A2020A2220777
          77007707770777777022AA0A222077777700777000770007770222A222077777
          770077777770777077702A222077777777007777777077707777022207777777
          7700777777707770777770207777777777007777777700077777770777777777
          7700}
        Stretch = True
      end
    end
    object dbeDTCOMP: TDBEdit
      Left = 117
      Top = 144
      Width = 100
      Height = 21
      DataField = 'PAG_DTCOMP'
      DataSource = dsContPagar
      TabOrder = 3
      OnExit = dbeDTCOMPExit
      OnKeyPress = dbeCDFORNKeyPress
    end
    object dbeNRNOTA: TDBEdit
      Left = 117
      Top = 168
      Width = 100
      Height = 21
      DataField = 'PAG_NRNOTA'
      DataSource = dsContPagar
      TabOrder = 4
      OnExit = dbeNRNOTAExit
      OnKeyPress = dbeCDFORNKeyPress
    end
    object dbeSerie: TDBEdit
      Left = 220
      Top = 168
      Width = 40
      Height = 21
      DataField = 'PAG_NRSERI'
      DataSource = dsContPagar
      TabOrder = 5
      OnExit = dbeSerieExit
      OnKeyPress = dbeCDFORNKeyPress
    end
    object DBEdit7: TDBEdit
      Left = 117
      Top = 192
      Width = 304
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PAG_NMDESC'
      DataSource = dsContPagar
      TabOrder = 6
    end
    object dbeDTVENC: TDBEdit
      Left = 117
      Top = 216
      Width = 100
      Height = 21
      DataField = 'PAG_DTVENC'
      DataSource = dsContPagar
      TabOrder = 7
      OnExit = dbeDTVENCExit
      OnKeyPress = dbeCDFORNKeyPress
    end
    object DBEdit9: TDBEdit
      Left = 117
      Top = 240
      Width = 100
      Height = 21
      DataField = 'PAG_VLPARC'
      DataSource = dsContPagar
      TabOrder = 8
    end
    object DBMemo1: TDBMemo
      Left = 117
      Top = 264
      Width = 304
      Height = 57
      DataField = 'PAG_ANOTAC'
      DataSource = dsContPagar
      ScrollBars = ssVertical
      TabOrder = 9
    end
    object dblcmbCDEMPR: TDBLookupComboBox
      Left = 117
      Top = 96
      Width = 150
      Height = 21
      DataField = 'PAG_CDEMPR'
      DataSource = dsContPagar
      KeyField = 'EMP_CDEMPR'
      ListField = 'EMP_NMEMPR'
      ListSource = dsEmpreedimento
      TabOrder = 1
    end
    object dblcmbCDFORN: TDBLookupComboBox
      Left = 117
      Top = 120
      Width = 150
      Height = 21
      DataField = 'PAG_CDFORN'
      DataSource = dsContPagar
      KeyField = 'FOR_CDFORN'
      ListField = 'FOR_NMFORN'
      ListSource = dsFornecedor
      TabOrder = 2
    end
    object ckbFLEMPR: TDBCheckBox
      Left = 23
      Top = 76
      Width = 108
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Fluxo de Empre.:'
      DataField = 'PAG_FLEMPR'
      DataSource = dsContPagar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      OnClick = ckbFLEMPRClick
    end
    object dbGridContas: TDBGrid
      Left = 1
      Top = 336
      Width = 526
      Height = 46
      DataSource = dsContPagar
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbGridContasDblClick
      OnKeyDown = dbGridContasKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PAG_NRCOMP'
          Title.Caption = 'N.º COMPRA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_NRPARC'
          Title.Caption = 'PC'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_NRNOTA'
          Title.Caption = 'NOTA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_NRSERI'
          Title.Caption = 'SÉRIE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_NMDESC'
          Title.Caption = 'DESCRIÇÃO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_DTCOMP'
          Title.Caption = 'DATA_COMPRA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_DTVENC'
          Title.Caption = 'DATA_VECTO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_DTPAGA'
          Title.Caption = 'DATA_PAGAM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAG_VLPARC'
          Title.Caption = 'VALOR_PARCELA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object ToolBar1: TToolBar
    Left = 717
    Top = 0
    Width = 22
    Height = 383
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
    object btUltimo: TToolButton
      Left = 0
      Top = 66
      Caption = 'btUltimo'
      ImageIndex = 11
      Wrap = True
      OnClick = btUltimoClick
    end
    object btAdicionar: TToolButton
      Left = 0
      Top = 88
      Caption = 'btAdicionar'
      ImageIndex = 12
      Wrap = True
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
    object btNovaParcela: TToolButton
      Left = 0
      Top = 198
      Hint = 'Nova Parcela | Inclui uma nova parcela na conta selecionada'
      Caption = 'btNovaParcela'
      ImageIndex = 30
      Wrap = True
      Visible = False
      OnClick = btNovaParcelaClick
    end
    object btGrid: TToolButton
      Left = 0
      Top = 220
      Caption = 'btGrid'
      ImageIndex = 24
      Wrap = True
      Visible = False
      OnClick = btGridClick
    end
    object btLocalizar: TToolButton
      Left = 0
      Top = 242
      Caption = 'btLocalizar'
      ImageIndex = 22
      Wrap = True
      OnClick = btLocalizarClick
    end
    object btSair: TToolButton
      Left = 0
      Top = 264
      Caption = 'btSair'
      ImageIndex = 2
      OnClick = btSairClick
    end
  end
  object dsContPagar: TDataSource
    DataSet = dmBD.tbContPagar
    OnStateChange = dsContPagarStateChange
    OnDataChange = dsContPagarDataChange
    Left = 440
    Top = 56
  end
  object dsFornecedor: TDataSource
    DataSet = dmBD.tbFornecedores
    Left = 472
    Top = 56
  end
  object dsEmpreedimento: TDataSource
    DataSet = dmBD.tbEmpredim
    Left = 440
    Top = 88
  end
end
