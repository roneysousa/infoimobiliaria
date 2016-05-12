object frmTipoImoveis: TfrmTipoImoveis
  Left = 285
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tipos Imoveis'
  ClientHeight = 271
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 414
    Height = 271
    Align = alClient
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 38
      Width = 412
      Height = 232
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 71
        Top = 25
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
        Left = 55
        Top = 58
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descri��o:'
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
        Top = 26
        Width = 65
        Height = 17
        DataField = 'TPI_CDTIPO'
        DataSource = dsTipoImovel
        Transparent = True
      end
      object DBEdit1: TDBEdit
        Left = 119
        Top = 53
        Width = 184
        Height = 21
        DataField = 'TPI_NMDESC'
        DataSource = dsTipoImovel
        TabOrder = 0
      end
      object GridTipos: TDBGrid
        Left = 1
        Top = 182
        Width = 410
        Height = 49
        Align = alBottom
        DataSource = dsTipoImovel
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GridTiposDblClick
        Columns = <
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'TPI_CDTIPO'
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
            FieldName = 'TPI_NMDESC'
            Title.Caption = 'DESCRI��O'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 203
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 412
      Height = 37
      Align = alTop
      TabOrder = 1
    end
  end
  object ToolBar1: TToolBar
    Left = 414
    Top = 0
    Width = 23
    Height = 271
    Align = alRight
    ButtonHeight = 23
    Caption = 'ToolBar1'
    Flat = True
    Images = frmNetImo.lista_imagens
    TabOrder = 1
    object tbPrimeiro: TToolButton
      Left = 0
      Top = 0
      Caption = 'tbPrimeiro'
      ImageIndex = 8
      Wrap = True
      OnClick = tbPrimeiroClick
    end
    object tbAnterior: TToolButton
      Left = 0
      Top = 23
      Caption = 'tbAnterior'
      ImageIndex = 9
      Wrap = True
      OnClick = tbAnteriorClick
    end
    object btProximo: TToolButton
      Left = 0
      Top = 46
      Caption = 'btProximo'
      ImageIndex = 10
      Wrap = True
      OnClick = btProximoClick
    end
    object btUltimo: TToolButton
      Left = 0
      Top = 69
      Caption = 'btUltimo'
      ImageIndex = 11
      Wrap = True
      OnClick = btUltimoClick
    end
    object btIncluir: TToolButton
      Left = 0
      Top = 92
      Caption = 'btIncluir'
      ImageIndex = 12
      Wrap = True
      OnClick = btIncluirClick
    end
    object btEditar: TToolButton
      Left = 0
      Top = 115
      Caption = 'btEditar'
      ImageIndex = 13
      Wrap = True
      OnClick = btEditarClick
    end
    object btDelete: TToolButton
      Left = 0
      Top = 138
      Caption = 'btDelete'
      ImageIndex = 14
      Wrap = True
      OnClick = btDeleteClick
    end
    object btGravar: TToolButton
      Left = 0
      Top = 161
      Caption = 'btGravar'
      ImageIndex = 15
      Wrap = True
      OnClick = btGravarClick
    end
    object btCancela: TToolButton
      Left = 0
      Top = 184
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
      Caption = 'btFechar'
      ImageIndex = 2
      OnClick = btFecharClick
    end
  end
  object dsTipoImovel: TDataSource
    DataSet = dmBD.tbTiposImovel
    OnStateChange = dsTipoImovelStateChange
    Left = 345
    Top = 62
  end
end
