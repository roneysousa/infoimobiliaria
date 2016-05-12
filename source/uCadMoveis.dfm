object frmCadImovel: TfrmCadImovel
  Left = 199
  Top = 172
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Imoveis'
  ClientHeight = 470
  ClientWidth = 690
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 667
    Height = 470
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 44
      Width = 665
      Height = 425
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 65
        Top = 16
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
      object Label2: TLabel
        Left = 21
        Top = 71
        Width = 89
        Height = 13
        Caption = 'Tipo de Imóvel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 18
        Top = 95
        Width = 90
        Height = 13
        Caption = 'Endereço\Núm.'
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
        Left = 45
        Top = 140
        Width = 66
        Height = 13
        Caption = 'Cidade/UF:'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 82
        Top = 161
        Width = 29
        Height = 13
        Caption = 'CEP:'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 23
        Top = 230
        Width = 89
        Height = 13
        Caption = 'N.º de Quartos:'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 218
        Top = 230
        Width = 83
        Height = 13
        Caption = 'N.º Banheiros:'
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
        Left = 19
        Top = 278
        Width = 93
        Height = 13
        Caption = 'Valor do Imóvel:'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 22
        Top = 300
        Width = 90
        Height = 13
        Caption = 'Área do Imóvel:'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 32
        Top = 340
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
      end
      object DBText1: TDBText
        Left = 110
        Top = 16
        Width = 60
        Height = 13
        AutoSize = True
        DataField = 'IMO_CDIMOV'
        DataSource = dsImoveis
      end
      object Label5: TLabel
        Left = 70
        Top = 116
        Width = 38
        Height = 13
        Caption = 'Bairro:'
        FocusControl = DBEdit1
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
        Top = 321
        Width = 55
        Height = 13
        Caption = 'Situação:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 10
        Top = 48
        Width = 98
        Height = 13
        Caption = 'Empreendimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 243
        Top = 252
        Width = 57
        Height = 13
        Caption = 'Qt.Vagas:'
        FocusControl = dbeQTVAGAS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 37
        Top = 184
        Width = 73
        Height = 13
        Caption = 'Qt.Cômodos:'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 32
        Top = 208
        Width = 76
        Height = 13
        Caption = 'Comp.Frente:'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 226
        Top = 208
        Width = 75
        Height = 13
        Caption = 'Comp.Fundo:'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 177
        Top = 206
        Width = 13
        Height = 16
        Caption = 'm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 368
        Top = 205
        Width = 13
        Height = 16
        Caption = 'm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 226
        Top = 293
        Width = 8
        Height = 13
        Caption = '2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -4
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 214
        Top = 296
        Width = 13
        Height = 16
        Caption = 'm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dblcmbTpImovel: TDBLookupComboBox
        Left = 110
        Top = 64
        Width = 145
        Height = 21
        DataField = 'IMO_TPIMOV'
        DataSource = dsImoveis
        KeyField = 'TPI_CDTIPO'
        ListField = 'TPI_NMDESC'
        ListSource = dsTipoImovel
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 110
        Top = 87
        Width = 244
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IMO_ENDIMO'
        DataSource = dsImoveis
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 110
        Top = 133
        Width = 184
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IMO_CIDADE'
        DataSource = dsImoveis
        TabOrder = 5
      end
      object cmbUF: TDBComboBox
        Left = 298
        Top = 132
        Width = 55
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'IMO_UFIMOV'
        DataSource = dsImoveis
        ItemHeight = 16
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PE'
          'PR'
          'PI'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
        TabOrder = 6
      end
      object DBEdit4: TDBEdit
        Left = 110
        Top = 156
        Width = 100
        Height = 21
        DataField = 'IMO_CEDPIMO'
        DataSource = dsImoveis
        MaxLength = 9
        TabOrder = 7
      end
      object DBEdit5: TDBEdit
        Left = 110
        Top = 225
        Width = 64
        Height = 21
        DataField = 'IMO_NRQUAR'
        DataSource = dsImoveis
        TabOrder = 11
      end
      object DBEdit6: TDBEdit
        Left = 301
        Top = 224
        Width = 64
        Height = 21
        DataField = 'IMO_NRBANH'
        DataSource = dsImoveis
        TabOrder = 12
      end
      object ckbFLGARA: TDBCheckBox
        Left = 52
        Top = 251
        Width = 74
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Garagem:'
        DataField = 'IMO_FLGARA'
        DataSource = dsImoveis
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = ckbFLGARAClick
      end
      object DBEdit8: TDBEdit
        Left = 112
        Top = 271
        Width = 100
        Height = 21
        DataField = 'IMO_VLIMOV'
        DataSource = dsImoveis
        TabOrder = 15
      end
      object DBEdit9: TDBEdit
        Left = 112
        Top = 294
        Width = 100
        Height = 21
        DataField = 'IMO_AREA'
        DataSource = dsImoveis
        ReadOnly = True
        TabOrder = 16
      end
      object DBMemo1: TDBMemo
        Left = 112
        Top = 341
        Width = 321
        Height = 51
        DataField = 'IMO_OBSERV'
        DataSource = dsImoveis
        ScrollBars = ssVertical
        TabOrder = 18
      end
      object DBEdit1: TDBEdit
        Left = 110
        Top = 110
        Width = 184
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IMO_BAIRRO'
        DataSource = dsImoveis
        TabOrder = 4
      end
      object dbcmbFLSITU: TDBComboBox
        Left = 112
        Top = 317
        Width = 100
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'IMO_FLIMOV'
        DataSource = dsImoveis
        ItemHeight = 16
        Items.Strings = (
          'DISPONIVEL'
          'VENDIDO')
        TabOrder = 17
      end
      object cmbCDEMPRE: TDBLookupComboBox
        Left = 111
        Top = 41
        Width = 145
        Height = 21
        DataField = 'IMO_CDEMPR'
        DataSource = dsImoveis
        KeyField = 'EMP_CDEMPR'
        ListField = 'EMP_NMEMPR'
        ListSource = dsEmpred
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 356
        Top = 87
        Width = 85
        Height = 21
        DataField = 'IMO_NRIMOV'
        DataSource = dsImoveis
        TabOrder = 3
      end
      object dbeQTVAGAS: TDBEdit
        Left = 301
        Top = 248
        Width = 64
        Height = 21
        DataField = 'IMO_QTVAGA'
        DataSource = dsImoveis
        Enabled = False
        TabOrder = 14
      end
      object DBEdit11: TDBEdit
        Left = 110
        Top = 179
        Width = 64
        Height = 21
        DataField = 'IMO_QTCOMO'
        DataSource = dsImoveis
        TabOrder = 8
      end
      object DBEdit12: TDBEdit
        Left = 110
        Top = 202
        Width = 64
        Height = 21
        DataField = 'IMO_MEFRET'
        DataSource = dsImoveis
        TabOrder = 9
      end
      object DBEdit13: TDBEdit
        Left = 301
        Top = 200
        Width = 64
        Height = 21
        DataField = 'IMO_MEFUND'
        DataSource = dsImoveis
        TabOrder = 10
        OnExit = DBEdit13Exit
      end
      object GridImovel: TDBGrid
        Left = 1
        Top = 387
        Width = 663
        Height = 37
        Align = alBottom
        DataSource = dsImoveis
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 19
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GridImovelDblClick
        OnKeyDown = GridImovelKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'IMO_CDIMOV'
            Title.Caption = 'CÓDIGO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMO_NMTIPO'
            Title.Caption = 'TIPO IMÓVEL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMO_NMEMPR'
            Title.Caption = 'EMPREENDIMENTO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMO_ENDIMO'
            Title.Caption = 'LOCALIZAÇÃO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 291
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMO_FLIMOV'
            Title.Caption = 'SITUAÇÃO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 665
      Height = 43
      Align = alTop
      TabOrder = 1
      object Image1: TImage
        Left = 8
        Top = 1
        Width = 40
        Height = 40
        Picture.Data = {
          07544269746D617076060000424D760600000000000036040000280000001800
          000018000000010008000000000040020000220B0000220B0000000100000001
          000094635A0094636300946B63009C6B63009C6B6B009C736B00AD847B00B58C
          7B00B58C8400BD8C8400B5948400BD948400C6948400B5948C00BD948C00C694
          8C00C69C8C00CEA58C00C69C9400CE9C9400C6A59400CEA59400D6AD9400DEAD
          9400EFBD9400F7BD9400EFC69400F7C69400BD949C00CEA59C00D6AD9C00D6B5
          9C00DEB59C00DEBD9C00E7BD9C00E7C69C00F7CE9C00AD94A500DEB5A500DEBD
          A500E7C6A500EFC6A500EFCEA500F7D6A500FFD6A500FFDEA5002121AD009494
          AD009C94AD00D6BDAD00DEBDAD00E7C6AD00EFCEAD00F7CEAD00EFD6AD00F7D6
          AD00F7DEAD00FFDEAD00FFE7AD00848CB500F7D6B500F7DEB500FFE7B5007384
          BD00CEBDBD00F7D6BD00F7DEBD00FFDEBD007B73C6005A84C600B5B5C600BDC6
          C600D6DEC600EFDEC600F7DEC600394ACE007373CE00739CCE00F7E7CE00FFE7
          CE00739CD60094ADD6009CBDD600EFDED600F7E7D600F7EFD600FFEFD6005284
          DE00638CDE009CCEDE00FFEFDE00FFF7DE0063A5E700FFEFE700FFF7E7003973
          EF0073ADEF00D6E7EF00FFF7EF00FFFFEF006384F7006B84F700318CF7003194
          F700399CF7007BCEF700F7F7F700FFF7F700FFFFF700FF00FF002994FF00299C
          FF00319CFF00399CFF0039A5FF0042A5FF0042ADFF004AADFF004AB5FF0052B5
          FF005AB5FF0063B5FF0073B5FF0052BDFF005ABDFF0063BDFF0073BDFF0084BD
          FF0052C6FF005AC6FF0063C6FF0084C6FF008CC6FF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF006D6D6D6D6D6D6D15161514146D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D
          1D17293320161412126D6D6D6D6D6D6D6D6D6D6D6D6D6D1E20182A42342A230B
          0810100E6D6D6D6D6D6D6D6D6D6D1E22241834493C342A07010506111009096D
          6D6D6D6D6D1E282B2418344E493C340701020321231F110B6D6D6D6D1F2A2B2A
          24183C554E493C07010204212A2A29106D6D6D2637382B2A2418415D544E4908
          01020421292828106D6D6D283E382B2A241841625A544E0A0102042129282810
          6D6D6D283E382B2A2418416C5E5A540D01020421292828106D6D6D283E382B24
          2418416C625E5A0D00010221292828106D6D6D283E392C475C4D496C6B625E53
          311408282A2828106D6D6D283A3859767367606A6362625E5A544A3C34282310
          6D6D6D2948697B7B7673707A6A6362625D544E493C3429106D6D6D527D7C827C
          777573707A6A6262625D544E493C31251C6D7978787D7D827C777573707F6262
          62625A544E4030256D6D6D7878787D7D827C777573707F626262625A463B2F6D
          6D6D6D6D7878797D7D827C7775736E7F626C6A513F3B6D6D6D6D6D6D6D78787D
          7D82817B7673716E83615045456D6D6D6D6D6D6D6D6D78787D7D828177757371
          706857576D6D6D6D6D6D6D6D6D6D6D78787D7D827C777573665F646D6D6D6D6D
          6D6D6D6D6D6D6D6D78787D7D827C77582E4B656D6D6D6D6D6D6D6D6D6D6D6D6D
          6D78797D826D6D442E4B656D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D44
          2E4B656D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D2E4B656D6D6D6D6D
          6D6D}
        Stretch = True
      end
      object DBText2: TDBText
        Left = 49
        Top = 11
        Width = 204
        Height = 24
        AutoSize = True
        DataField = 'IMO_NMEMPR'
        DataSource = dsImoveis
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 667
    Top = 0
    Width = 23
    Height = 470
    Align = alRight
    ButtonHeight = 23
    Caption = 'ToolBar1'
    Flat = True
    Images = frmNetImo.lista_imagens
    TabOrder = 1
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
      Hint = 'Próximo registro'
      Caption = 'btProximo'
      ImageIndex = 10
      Wrap = True
      OnClick = btProximoClick
    end
    object btUltimo: TToolButton
      Left = 0
      Top = 69
      Hint = 'Último registro'
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
  object dsImoveis: TDataSource
    DataSet = dmBD.tbImoveis
    OnStateChange = dsImoveisStateChange
    OnDataChange = dsImoveisDataChange
    Left = 504
    Top = 8
  end
  object dsTipoImovel: TDataSource
    DataSet = dmBD.tbTiposImovel
    Left = 504
    Top = 72
  end
  object dsEmpred: TDataSource
    DataSet = dmBD.tbEmpredim
    Left = 504
    Top = 40
  end
end
