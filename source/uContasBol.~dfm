object frmContBol: TfrmContBol
  Left = 200
  Top = 137
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Boletos Bancário'
  ClientHeight = 453
  ClientWidth = 688
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
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 666
    Top = 0
    Width = 22
    Height = 453
    Align = alRight
    Caption = 'ToolBar1'
    Flat = True
    Images = frmNetImo.lista_imagens
    TabOrder = 0
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
    object btVisualizar: TToolButton
      Left = 0
      Top = 88
      Caption = 'btVisualizar'
      ImageIndex = 35
      Wrap = True
      OnClick = btVisualizarClick
    end
    object btImprimir: TToolButton
      Left = 0
      Top = 110
      Caption = 'btImprimir'
      ImageIndex = 34
      Wrap = True
      OnClick = btImprimirClick
    end
    object btTodos: TToolButton
      Left = 0
      Top = 132
      Hint = 'Todos'
      Caption = 'btTodos'
      ImageIndex = 33
      OnClick = btTodosClick
    end
    object btFechar: TToolButton
      Left = 23
      Top = 132
      Caption = 'btFechar'
      ImageIndex = 2
      Wrap = True
      OnClick = btFecharClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 453
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 664
      Height = 64
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 70
        Height = 13
        Caption = 'Data Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 63
        Height = 13
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edtDTINIC: TMaskEdit
        Left = 80
        Top = 12
        Width = 121
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
      object edtDTFINA: TMaskEdit
        Left = 80
        Top = 38
        Width = 121
        Height = 21
        EditMask = '99/99/9999;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
        OnKeyPress = edtDTFINAKeyPress
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 65
      Width = 664
      Height = 346
      Align = alClient
      TabOrder = 1
      object GridContas: TDBGrid
        Left = 1
        Top = 1
        Width = 662
        Height = 344
        Align = alClient
        DataSource = dsContas
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GridContasDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PRE_NMCLIE'
            Title.Caption = 'N.º RECEBIM.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
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
            FieldName = 'PRE_TOTAL_CALC'
            Title.Caption = 'VL.DOCUM.'
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
            Title.Caption = 'DT.VCTO.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRE_DIASAT'
            Title.Caption = 'ATRASO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 411
      Width = 664
      Height = 41
      Align = alBottom
      TabOrder = 2
    end
  end
  object dsContas: TDataSource
    DataSet = dmBD.tbPrestacoes
    Left = 536
    Top = 18
  end
end
