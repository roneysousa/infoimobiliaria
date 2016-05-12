object frmManuPrestacoes: TfrmManuPrestacoes
  Left = 213
  Top = 189
  Width = 696
  Height = 480
  Caption = 'Manutenção de Prestações'
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
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 666
    Top = 0
    Width = 22
    Height = 446
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
    object btAdicionar: TToolButton
      Left = 0
      Top = 88
      Caption = 'btAdicionar'
      ImageIndex = 12
      Wrap = True
      Visible = False
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
    object btGrid: TToolButton
      Left = 0
      Top = 198
      Caption = 'btGrid'
      ImageIndex = 24
      Wrap = True
      OnClick = btGridClick
    end
    object btAditivo: TToolButton
      Left = 0
      Top = 220
      Hint = 'Aditivo'
      Caption = 'btAditivo'
      ImageIndex = 41
      Wrap = True
      Visible = False
      OnClick = btAditivoClick
    end
    object tbAtualizaReceber: TToolButton
      Left = 0
      Top = 242
      Caption = 'tbAtualizaReceber'
      ImageIndex = 27
      Wrap = True
      OnClick = tbAtualizaReceberClick
    end
    object btSair: TToolButton
      Left = 0
      Top = 264
      Caption = 'btSair'
      ImageIndex = 2
      OnClick = btSairClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 446
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 664
      Height = 41
      Align = alTop
      TabOrder = 0
      object Label18: TLabel
        Left = 57
        Top = 16
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
      object DBText4: TDBText
        Left = 108
        Top = 16
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'PRE_NMCLIE'
        DataSource = dsPrestacoes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 361
      Width = 664
      Height = 84
      Align = alBottom
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 1
      Top = 42
      Width = 664
      Height = 319
      Align = alClient
      TabOrder = 2
      object Label1: TLabel
        Left = 61
        Top = 8
        Width = 44
        Height = 13
        Caption = 'Código:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 108
        Top = 8
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'PRE_CDPRES'
        DataSource = dsPrestacoes
      end
      object Label2: TLabel
        Left = 30
        Top = 32
        Width = 75
        Height = 13
        Caption = 'N.º Contrato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBText2: TDBText
        Left = 108
        Top = 29
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'PRE_CDCONT'
        DataSource = dsPrestacoes
      end
      object Label9: TLabel
        Left = 8
        Top = 56
        Width = 98
        Height = 13
        Caption = 'Empreendimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 65
        Top = 80
        Width = 42
        Height = 13
        Caption = 'Imóvel:'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 62
        Top = 104
        Width = 44
        Height = 13
        Caption = 'Cliente:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 44
        Top = 128
        Width = 62
        Height = 13
        Caption = 'Prestação:'
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
        Left = 28
        Top = 152
        Width = 79
        Height = 13
        Caption = 'Último Índice:'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 38
        Top = 175
        Width = 68
        Height = 13
        Caption = 'Último Juro:'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 40
        Top = 200
        Width = 64
        Height = 13
        Caption = 'Vl.Anterior:'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 44
        Top = 224
        Width = 60
        Height = 13
        Caption = 'Sub-Total:'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 56
        Top = 243
        Width = 48
        Height = 13
        Caption = '% Juros:'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 33
        Top = 267
        Width = 71
        Height = 13
        Caption = 'Vencimento:'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 252
        Top = 200
        Width = 69
        Height = 13
        Caption = '% Correção:'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 252
        Top = 223
        Width = 68
        Height = 13
        Caption = 'Valor Juros:'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 274
        Top = 245
        Width = 45
        Height = 13
        Caption = 'TOTAL:'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 237
        Top = 267
        Width = 81
        Height = 13
        Caption = 'Dt.Pagamento'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 24
        Top = 290
        Width = 79
        Height = 13
        Caption = 'Observações:'
        FocusControl = DBMemo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit1: TDBEdit
        Left = 108
        Top = 48
        Width = 200
        Height = 21
        DataField = 'PRE_NMEMPR'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 108
        Top = 72
        Width = 200
        Height = 21
        DataField = 'PRE_CDIMOV'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 108
        Top = 96
        Width = 200
        Height = 21
        DataField = 'PRE_NMCLIE'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 108
        Top = 120
        Width = 100
        Height = 21
        DataField = 'PRE_NRPRES'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 108
        Top = 144
        Width = 100
        Height = 21
        DataField = 'PRE_NMINDI'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 108
        Top = 168
        Width = 100
        Height = 21
        DataField = 'PRE_VLJURO'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 108
        Top = 192
        Width = 100
        Height = 21
        DataField = 'PRE_VLANTE'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 108
        Top = 215
        Width = 100
        Height = 21
        DataField = 'PRE_VLSUBT_CALC'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit11: TDBEdit
        Left = 108
        Top = 238
        Width = 100
        Height = 21
        DataField = 'PRE_PEJURO'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 10
      end
      object DBEdit13: TDBEdit
        Left = 108
        Top = 261
        Width = 100
        Height = 21
        DataField = 'PRE_DTVENC'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit14: TDBEdit
        Left = 320
        Top = 261
        Width = 100
        Height = 21
        DataField = 'PRE_DTPAGA'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 13
      end
      object DBEdit12: TDBEdit
        Left = 320
        Top = 238
        Width = 100
        Height = 21
        DataField = 'PRE_TOTAL_CALC'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 11
      end
      object DBEdit10: TDBEdit
        Left = 320
        Top = 215
        Width = 100
        Height = 21
        DataField = 'PRE_VLJURO'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit8: TDBEdit
        Left = 320
        Top = 192
        Width = 100
        Height = 21
        DataField = 'PRE_PECORR'
        DataSource = dsPrestacoes
        ReadOnly = True
        TabOrder = 7
      end
      object DBMemo1: TDBMemo
        Left = 108
        Top = 285
        Width = 311
        Height = 66
        DataField = 'PRE_OBSERV'
        DataSource = dsPrestacoes
        TabOrder = 14
      end
      object DBCheckBox1: TDBCheckBox
        Left = 224
        Top = 169
        Width = 109
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Jrs Acumulativo:'
        DataField = 'PRE_FLJUAC'
        DataSource = dsPrestacoes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object GridPrestacoes: TDBGrid
        Left = 1
        Top = 278
        Width = 662
        Height = 40
        Align = alBottom
        DataSource = dsPrestacoes
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 16
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GridPrestacoesDblClick
        Columns = <
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
            FieldName = 'PRE_NMEMPR'
            Title.Caption = 'EMPREDIMENTO'
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
  object dsPrestacoes: TDataSource
    DataSet = dmBD.tbPrestacoes
    OnStateChange = dsPrestacoesStateChange
    OnDataChange = dsPrestacoesDataChange
    Left = 608
    Top = 48
  end
  object dsContrato: TDataSource
    DataSet = dmBD.tbContratos
    Left = 608
    Top = 82
  end
  object dsClientes: TDataSource
    DataSet = dmBD.tbClientes
    Left = 609
    Top = 122
  end
end
