object frmCadIndices: TfrmCadIndices
  Left = 278
  Top = 206
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de �ndices'
  ClientHeight = 285
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 419
    Top = 0
    Width = 23
    Height = 285
    Align = alRight
    ButtonHeight = 23
    Caption = 'ToolBar1'
    Flat = True
    Images = frmNetImo.lista_imagens
    TabOrder = 0
    object tbPrimeiro: TToolButton
      Left = 0
      Top = 0
      Hint = 'Primeiro registro'
      Caption = 'tbPrimeiro'
      ImageIndex = 8
      Wrap = True
      OnClick = tbPrimeiroClick
    end
    object tbAnterior: TToolButton
      Left = 0
      Top = 23
      Hint = 'Registro anterior'
      Caption = 'tbAnterior'
      ImageIndex = 9
      Wrap = True
      OnClick = tbAnteriorClick
    end
    object btProximo: TToolButton
      Left = 0
      Top = 46
      Hint = 'Pr�ximo registro'
      Caption = 'btProximo'
      ImageIndex = 10
      Wrap = True
      OnClick = btProximoClick
    end
    object btUltimo: TToolButton
      Left = 0
      Top = 69
      Hint = '�ltimo registro'
      Caption = 'btUltimo'
      ImageIndex = 11
      Wrap = True
      OnClick = btUltimoClick
    end
    object btIncluir: TToolButton
      Left = 0
      Top = 92
      Hint = 'Adicionar'
      Caption = 'btIncluir'
      ImageIndex = 12
      Wrap = True
      OnClick = btIncluirClick
    end
    object btEditar: TToolButton
      Left = 0
      Top = 115
      Hint = 'Editar'
      Caption = 'btEditar'
      ImageIndex = 13
      Wrap = True
      OnClick = btEditarClick
    end
    object btDelete: TToolButton
      Left = 0
      Top = 138
      Hint = 'Excluir'
      Caption = 'btDelete'
      ImageIndex = 14
      Wrap = True
      OnClick = btDeleteClick
    end
    object btGravar: TToolButton
      Left = 0
      Top = 161
      Hint = 'Gravar'
      Caption = 'btGravar'
      ImageIndex = 15
      Wrap = True
      OnClick = btGravarClick
    end
    object btCancela: TToolButton
      Left = 0
      Top = 184
      Hint = 'Cancelar'
      Caption = 'btCancela'
      ImageIndex = 16
      Wrap = True
      OnClick = btCancelaClick
    end
    object btLocalizar: TToolButton
      Left = 0
      Top = 207
      Hint = 'Localizar'
      Caption = 'btLocalizar'
      ImageIndex = 22
      Wrap = True
      OnClick = btLocalizarClick
    end
    object btFechar: TToolButton
      Left = 0
      Top = 230
      Hint = 'Fechar'
      Caption = 'btFechar'
      ImageIndex = 2
      OnClick = btFecharClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 285
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 417
      Height = 44
      Align = alTop
      TabOrder = 0
      object Image1: TImage
        Left = 5
        Top = 2
        Width = 40
        Height = 40
        Stretch = True
      end
      object DBText2: TDBText
        Left = 49
        Top = 11
        Width = 101
        Height = 24
        AutoSize = True
        DataField = 'IND_NMDESC'
        DataSource = dsIndices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 45
      Width = 417
      Height = 239
      Align = alClient
      TabOrder = 1
      object Label1: TLabel
        Left = 77
        Top = 20
        Width = 44
        Height = 13
        Caption = 'C�digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 62
        Top = 58
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descri��o:'
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
        Left = 88
        Top = 80
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor:'
        FocusControl = dbeVLCORR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 124
        Top = 18
        Width = 65
        Height = 17
        DataField = 'IND_CDINDI'
        DataSource = dsIndices
        Transparent = True
      end
      object Label3: TLabel
        Left = 39
        Top = 104
        Width = 83
        Height = 13
        Alignment = taRightJustify
        Caption = 'Valor do juros:'
        FocusControl = dbeVLCORR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object dbeNMDESC: TDBEdit
        Left = 124
        Top = 50
        Width = 150
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IND_NMDESC'
        DataSource = dsIndices
        TabOrder = 0
      end
      object dbeVLCORR: TDBEdit
        Left = 124
        Top = 74
        Width = 64
        Height = 21
        DataField = 'IND_VLCORR'
        DataSource = dsIndices
        TabOrder = 1
      end
      object DBCheckBox1: TDBCheckBox
        Left = 8
        Top = 124
        Width = 129
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Juros Acumulativo:'
        DataField = 'IND_JUACUM'
        DataSource = dsIndices
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit1: TDBEdit
        Left = 124
        Top = 98
        Width = 64
        Height = 21
        DataField = 'IND_VLJURO'
        DataSource = dsIndices
        TabOrder = 2
      end
      object GridIndices: TDBGrid
        Left = 1
        Top = 189
        Width = 415
        Height = 49
        Align = alBottom
        DataSource = dsIndices
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GridIndicesDblClick
        OnKeyDown = GridIndicesKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'IND_CDINDI'
            Title.Caption = 'C�DIGO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IND_NMDESC'
            Title.Caption = 'DESCRI��O'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 203
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IND_VLCORR'
            Title.Caption = 'VALOR'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 124
            Visible = True
          end>
      end
    end
  end
  object dsIndices: TDataSource
    DataSet = dmBD.tbIndices
    OnStateChange = dsIndicesStateChange
    OnDataChange = dsIndicesDataChange
    Left = 297
    Top = 50
  end
end
