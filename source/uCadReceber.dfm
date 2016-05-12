object frmContReceber: TfrmContReceber
  Left = 216
  Top = 135
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contas a Pagar'
  ClientHeight = 383
  ClientWidth = 550
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
    Width = 528
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
      Left = 51
      Top = 104
      Width = 64
      Height = 13
      Caption = 'Escritórios:'
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
      Left = 18
      Top = 247
      Width = 98
      Height = 13
      Caption = 'Valor da parcela:'
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
    object Label6: TLabel
      Left = 46
      Top = 80
      Width = 70
      Height = 13
      Caption = 'N.º Parcela:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 240
      Top = 246
      Width = 98
      Height = 13
      Caption = 'Valor da Compra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtVLCOMP: TDBText
      Left = 344
      Top = 246
      Width = 69
      Height = 13
      AutoSize = True
      DataField = 'PAG_VLCOMP'
      DataSource = dsContPagar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
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
    object bdtNRPARC: TDBText
      Left = 117
      Top = 79
      Width = 65
      Height = 17
      DataField = 'PAG_NRPARC'
      DataSource = dsContPagar
      Transparent = True
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 526
      Height = 41
      Align = alTop
      Alignment = taLeftJustify
      BevelInner = bvRaised
      BevelOuter = bvNone
      Caption = 'Contas a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
    end
    object dbeDTCOMP: TDBEdit
      Left = 117
      Top = 144
      Width = 100
      Height = 21
      DataField = 'PAG_DTCOMP'
      DataSource = dsContPagar
      TabOrder = 1
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
    end
    object dbeDTVENC: TDBEdit
      Left = 117
      Top = 216
      Width = 100
      Height = 21
      DataField = 'PAG_DTVENC'
      DataSource = dsContPagar
      TabOrder = 5
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
      TabOrder = 6
    end
    object DBMemo1: TDBMemo
      Left = 117
      Top = 264
      Width = 304
      Height = 57
      DataField = 'PAG_ANOTAC'
      DataSource = dsContPagar
      ScrollBars = ssVertical
      TabOrder = 7
    end
    object dblcmbCDESCR: TDBLookupComboBox
      Left = 117
      Top = 96
      Width = 150
      Height = 21
      DataField = 'PAG_CDLOJA'
      DataSource = dsContPagar
      KeyField = 'LOJ_CDLOJA'
      ListField = 'LOJ_NMLOJA'
      ListSource = dsEscritorio
      TabOrder = 8
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
      TabOrder = 9
    end
  end
  object ToolBar1: TToolBar
    Left = 528
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
  object dbGridContas: TDBGrid
    Left = 1
    Top = 328
    Width = 526
    Height = 55
    DataSource = dsContPagar
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbGridContasDblClick
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
      end
      item
        Expanded = False
        FieldName = 'PAG_VLCOMP'
        Title.Caption = 'VALOR_COMPRA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
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
  object dsEscritorio: TDataSource
    DataSet = dmBD.tbEscritorio
    Left = 440
    Top = 88
  end
end
