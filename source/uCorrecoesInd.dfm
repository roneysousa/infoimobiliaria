object frmCorrecoes: TfrmCorrecoes
  Left = 292
  Top = 197
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Corre��es de �ndices'
  ClientHeight = 328
  ClientWidth = 488
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
    Left = 464
    Top = 0
    Width = 24
    Height = 328
    Align = alRight
    ButtonHeight = 23
    Caption = 'ToolBar1'
    Flat = True
    Images = frmNetImo.lista_imagens
    TabOrder = 0
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
    end
    object btFechar: TToolButton
      Left = 0
      Top = 230
      Caption = 'btFechar'
      ImageIndex = 2
      OnClick = btFecharClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 328
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 462
      Height = 39
      Align = alTop
      TabOrder = 0
      object DBText2: TDBText
        Left = 47
        Top = 8
        Width = 91
        Height = 24
        AutoSize = True
        DataField = 'COR_NMINDI'
        DataSource = dsCorrIndeces
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
      end
      object Image1: TImage
        Left = 6
        Top = 3
        Width = 33
        Height = 33
        Picture.Data = {
          055449636F6E0000010001002020100000000000E80200001600000028000000
          2000000040000000010004000000000000020000000000000000000000000000
          0000000000000000000080000080000000808000800000008000800080800000
          80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
          FFFFFF007770BB333333333333333333330777007770B0000000000000000000
          030777007770B7FF6FFFFFFFFFFFFFFF030777007770B7FF6FFFFFFFFFFFFFFF
          030777007770B7666666666666666666030777007770B7FF6FFFFFFFFFFFFFFF
          030777007770B7FF6FFFFFFFFFFFFFFF030777007770B7666666666666666666
          030777007770B7FF6FFFFFFFFFFFFFFF030777007770B7FF6FFFFFFFFFFFFFFF
          030777007770B7666666666666666666030777007770B7FF6FFFFFFFFFFFFFFF
          030777007770B7FF6FFFFFFFFFFFFFFF030777007770B7666666666666666666
          030777007770B7FF6FFFFFFFFFFFFFFF030777007770B7FF6FFFFFFFFFFFFFFF
          030777007770B7666666666666666666030777007770B7FF6FFFFFFFFFFFFFFF
          030777007770B7FF6FFFFFFFFFFFFFFF030777007770B7666666666666666666
          030777007770B7FF6FFFFFFFFFFFFFFF030777007770B7FF6FFFFFFFFFFFFFFF
          030777007770B7FF6FF88888888888FF030777007770B7FF6F000000000008FF
          030777007770B777770FF888887707770B0777007770BBBBBBB0FF888770BBBB
          BB0777007777000000000FF88700000000777700777777777770FF8888707777
          7777770077777777777000000000777777777700777777777777777777777777
          7777770077777777777777777777777777777700777777777777777777777777
          7777770000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000}
        Stretch = True
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 40
      Width = 462
      Height = 287
      Align = alClient
      TabOrder = 1
      object Label1: TLabel
        Left = 40
        Top = 13
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'N.� Corre��o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 76
        Top = 41
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = '�ndices:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 67
        Top = 88
        Width = 56
        Height = 13
        Caption = 'Corre��o:'
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
        Top = 11
        Width = 65
        Height = 19
        DataField = 'COR_NRCORR'
        DataSource = dsCorrIndeces
        Transparent = True
      end
      object Label5: TLabel
        Left = 95
        Top = 113
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'M�s:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 87
        Top = 64
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Atual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 124
        Top = 61
        Width = 65
        Height = 17
        DataField = 'IND_VLCORR'
        DataSource = dsIndices
      end
      object dbeVLCORR: TDBEdit
        Left = 124
        Top = 82
        Width = 145
        Height = 21
        DataField = 'COR_VLCORR'
        DataSource = dsCorrIndeces
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 123
        Top = 35
        Width = 145
        Height = 21
        DataField = 'COR_CDINDI'
        DataSource = dsCorrIndeces
        KeyField = 'IND_CDINDI'
        ListField = 'IND_NMDESC'
        ListSource = dsIndices
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 124
        Top = 106
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COR_MES'
        DataSource = dsCorrIndeces
        TabOrder = 2
      end
      object GridCorrecoes: TDBGrid
        Left = 1
        Top = 237
        Width = 460
        Height = 49
        Align = alBottom
        DataSource = dsCorrIndeces
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GridCorrecoesDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'COR_NRCORR'
            Title.Caption = 'CORRE��O'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COR_NMINDI'
            Title.Caption = 'INDICE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 196
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COR_VLCORR'
            Title.Caption = 'CORRE��O'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COR_MES'
            Title.Caption = 'MES'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 122
            Visible = True
          end>
      end
    end
  end
  object dsCorrIndeces: TDataSource
    DataSet = dmBD.tbCorrecInd
    OnStateChange = dsCorrIndecesStateChange
    OnDataChange = dsCorrIndecesDataChange
    Left = 345
    Top = 50
  end
  object dsIndices: TDataSource
    DataSet = dmBD.tbIndices
    Left = 377
    Top = 50
  end
end
