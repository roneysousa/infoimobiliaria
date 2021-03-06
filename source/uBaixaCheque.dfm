object frmCheques: TfrmCheques
  Left = 195
  Top = 117
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Baixa de Cheques'
  ClientHeight = 446
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
  ShowHint = True
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 664
    Top = 0
    Width = 24
    Height = 446
    Align = alRight
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
      Top = 22
      Hint = 'Registro anterior'
      Caption = 'tbAnterior'
      ImageIndex = 9
      Wrap = True
      OnClick = tbAnteriorClick
    end
    object btProximo: TToolButton
      Left = 0
      Top = 44
      Hint = 'Pr�ximo registro'
      Caption = 'btProximo'
      ImageIndex = 10
      Wrap = True
      OnClick = btProximoClick
    end
    object btUltimo: TToolButton
      Left = 0
      Top = 66
      Hint = 'Ultimo registro'
      Caption = 'btUltimo'
      ImageIndex = 11
      Wrap = True
      OnClick = btUltimoClick
    end
    object btIncluir: TToolButton
      Left = 0
      Top = 88
      Hint = 'Adicionar'
      Caption = 'btIncluir'
      ImageIndex = 12
      Wrap = True
      Visible = False
    end
    object btEditar: TToolButton
      Left = 0
      Top = 110
      Hint = 'Editar'
      Caption = 'btEditar'
      ImageIndex = 13
      Wrap = True
      OnClick = btEditarClick
    end
    object btDelete: TToolButton
      Left = 0
      Top = 132
      Hint = 'Excluir'
      Caption = 'btDelete'
      ImageIndex = 14
      Wrap = True
      Visible = False
    end
    object btGravar: TToolButton
      Left = 0
      Top = 154
      Hint = 'Gravar'
      Caption = 'btGravar'
      ImageIndex = 15
      Wrap = True
      OnClick = btGravarClick
    end
    object btCancela: TToolButton
      Left = 0
      Top = 176
      Hint = 'Cancelar'
      Caption = 'btCancela'
      ImageIndex = 16
      Wrap = True
      OnClick = btCancelaClick
    end
    object btLocalizar: TToolButton
      Left = 0
      Top = 198
      Hint = 'Localizar'
      Caption = 'btLocalizar'
      ImageIndex = 22
      Wrap = True
      OnClick = btLocalizarClick
    end
    object btFechar: TToolButton
      Left = 0
      Top = 220
      Hint = 'Fechar'
      Caption = 'btFechar'
      ImageIndex = 2
      OnClick = btFecharClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 446
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 662
      Height = 41
      Align = alTop
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 1
      Top = 42
      Width = 662
      Height = 362
      Align = alClient
      TabOrder = 1
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 53
        Height = 13
        Caption = 'CODIGO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 24
        Top = 65
        Width = 47
        Height = 13
        Caption = 'BANCO:'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 24
        Top = 41
        Width = 57
        Height = 13
        Caption = 'CLIENTE:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 24
        Top = 89
        Width = 59
        Height = 13
        Caption = 'AG�NCIA:'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 24
        Top = 114
        Width = 47
        Height = 13
        Caption = 'CONTA:'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 24
        Top = 139
        Width = 72
        Height = 13
        Caption = 'N�.DOCUM.:'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 24
        Top = 165
        Width = 73
        Height = 13
        Caption = 'VL.DOCUM.:'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 24
        Top = 191
        Width = 85
        Height = 13
        Caption = 'DT.RECEBIM.:'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 24
        Top = 217
        Width = 63
        Height = 13
        Caption = 'DT.VENC.:'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 24
        Top = 241
        Width = 62
        Height = 13
        Caption = 'DT.BAIXA:'
        FocusControl = dbeDTPAGA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 24
        Top = 264
        Width = 55
        Height = 13
        Caption = 'ATRASO:'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 112
        Top = 14
        Width = 65
        Height = 17
        DataField = 'CHE_NRVEND'
        DataSource = dsCheques
      end
      object DBEdit2: TDBEdit
        Left = 112
        Top = 60
        Width = 100
        Height = 21
        DataField = 'CHE_NMBANC'
        DataSource = dsCheques
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 112
        Top = 36
        Width = 233
        Height = 21
        DataField = 'CHE_NMSACA'
        DataSource = dsCheques
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 112
        Top = 84
        Width = 100
        Height = 21
        DataField = 'CHE_NRAGEN'
        DataSource = dsCheques
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 112
        Top = 109
        Width = 100
        Height = 21
        DataField = 'CHE_NRCONT'
        DataSource = dsCheques
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 112
        Top = 134
        Width = 100
        Height = 21
        DataField = 'CHE_NRDOCU'
        DataSource = dsCheques
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 112
        Top = 159
        Width = 100
        Height = 21
        DataField = 'CHE_VLDOCU'
        DataSource = dsCheques
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit9: TDBEdit
        Left = 112
        Top = 184
        Width = 100
        Height = 21
        DataField = 'CHE_DTRECE'
        DataSource = dsCheques
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit10: TDBEdit
        Left = 112
        Top = 209
        Width = 100
        Height = 21
        DataField = 'CHE_DTVENC'
        DataSource = dsCheques
        ReadOnly = True
        TabOrder = 7
      end
      object dbeDTPAGA: TDBEdit
        Left = 112
        Top = 233
        Width = 100
        Height = 21
        Hint = 'Digite a data da baixa'
        DataField = 'CHE_DTPAGA'
        DataSource = dsCheques
        TabOrder = 8
      end
      object DBEdit12: TDBEdit
        Left = 112
        Top = 258
        Width = 100
        Height = 21
        DataField = 'CHE_QTDIAS'
        DataSource = dsCheques
        ReadOnly = True
        TabOrder = 9
      end
      object GridCheques: TDBGrid
        Left = 1
        Top = 304
        Width = 660
        Height = 57
        Align = alBottom
        DataSource = dsCheques
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 10
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GridChequesDblClick
        OnKeyDown = GridChequesKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CHE_NRVEND'
            Title.Caption = 'CODIGO:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_NMSACA'
            Title.Caption = 'CLIENTE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_NMBANC'
            Title.Caption = 'BANCO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_NRAGEN'
            Title.Caption = 'AG�NCIA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_NRDOCU'
            Title.Caption = 'DOCUMENTO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_VLDOCU'
            Title.Caption = 'VALOR DOC.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_DTRECE'
            Title.Caption = 'DT.RECEB.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_DTVENC'
            Title.Caption = 'DT.VENC.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHE_DTPAGA'
            Title.Caption = 'DT.PAGA.'
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
            FieldName = 'CHE_QTDIAS'
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
      Top = 404
      Width = 662
      Height = 41
      Align = alBottom
      TabOrder = 2
    end
  end
  object dsCheques: TDataSource
    DataSet = dmBD.tbCheques
    OnStateChange = dsChequesStateChange
    Left = 553
    Top = 10
  end
end
