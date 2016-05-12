object frmContrato: TfrmContrato
  Left = 211
  Top = 147
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Contrato de Clientes'
  ClientHeight = 453
  ClientWidth = 644
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
  object ToolBar1: TToolBar
    Left = 623
    Top = 0
    Width = 21
    Height = 453
    Align = alRight
    Caption = 'ToolBar1'
    Flat = True
    Images = frmNetImo.lista_imagens
    TabOrder = 0
    object btPrimeiro: TToolButton
      Left = 0
      Top = 0
      Hint = 'Primeiro registro'
      Caption = 'btPrimeiro'
      ImageIndex = 8
      Wrap = True
      OnClick = btPrimeiroClick
    end
    object btAnterior: TToolButton
      Left = 0
      Top = 22
      Hint = 'Registro anterior'
      Caption = 'btAnterior'
      ImageIndex = 9
      Wrap = True
      OnClick = btAnteriorClick
    end
    object btProximo: TToolButton
      Left = 0
      Top = 44
      Hint = 'Próximo registro'
      Caption = 'btProximo'
      ImageIndex = 10
      Wrap = True
      OnClick = btProximoClick
    end
    object btUltimo: TToolButton
      Left = 0
      Top = 66
      Hint = 'Último registro'
      Caption = '&Abertura de Caixa'
      ImageIndex = 11
      Wrap = True
      OnClick = btUltimoClick
    end
    object btAdicionar: TToolButton
      Left = 0
      Top = 88
      Hint = 'Adicionar'
      Caption = 'btAdicionar'
      ImageIndex = 12
      Wrap = True
      OnClick = btAdicionarClick
    end
    object btEditar: TToolButton
      Left = 0
      Top = 110
      Hint = 'Editar registro'
      Caption = 'btEditar'
      ImageIndex = 13
      Wrap = True
      OnClick = btEditarClick
    end
    object btExcluir: TToolButton
      Left = 0
      Top = 132
      Hint = 'Excluir registro'
      Caption = 'btExcluir'
      ImageIndex = 14
      Wrap = True
      OnClick = btExcluirClick
    end
    object btGravar: TToolButton
      Left = 0
      Top = 154
      Hint = 'Gravar registro'
      Caption = 'btGravar'
      ImageIndex = 15
      Wrap = True
      OnClick = btGravarClick
    end
    object btCancelar: TToolButton
      Left = 0
      Top = 176
      Hint = 'Cancelar'
      Caption = 'btCancelar'
      ImageIndex = 16
      Wrap = True
      OnClick = btCancelarClick
    end
    object btVisualizar: TToolButton
      Left = 0
      Top = 198
      Hint = 'Visualizar prospota de compra'
      Caption = 'btVisualizar'
      ImageIndex = 35
      Wrap = True
      OnClick = btVisualizarClick
    end
    object btImprimir: TToolButton
      Left = 0
      Top = 220
      Caption = 'btImprimir'
      ImageIndex = 34
      Wrap = True
      Visible = False
    end
    object btAditivo: TToolButton
      Left = 0
      Top = 242
      Caption = 'btAditivo'
      ImageIndex = 41
      Wrap = True
      OnClick = btAditivoClick
    end
    object btEntrega: TToolButton
      Left = 0
      Top = 264
      Hint = 'Entrega | Entrega de Imovel'
      Caption = 'btEntrega'
      ImageIndex = 50
      Wrap = True
      OnClick = btEntregaClick
    end
    object btLocalizar: TToolButton
      Left = 0
      Top = 286
      Hint = 'Localizar'
      Caption = 'btLocalizar'
      ImageIndex = 22
      Wrap = True
      OnClick = btLocalizarClick
    end
    object btFechar: TToolButton
      Left = 0
      Top = 308
      Hint = 'Fechar | Fecha janela de contrato'
      Caption = 'btFechar'
      ImageIndex = 2
      OnClick = btFecharClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 623
    Height = 453
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 621
      Height = 45
      Align = alTop
      TabOrder = 0
      object DBText2: TDBText
        Left = 52
        Top = 13
        Width = 91
        Height = 24
        AutoSize = True
        DataField = 'CTC_NMCLIE'
        DataSource = dsContrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Image1: TImage
        Left = 5
        Top = 1
        Width = 40
        Height = 40
        Picture.Data = {
          07544269746D617076060000424D760600000000000036040000280000001800
          000018000000010008000000000040020000520B0000520B0000000100000001
          00002D2D2D00373C3E0018556F0058534E005160610052636B0054777B007C70
          7800D47719008A5B520085787C008D787F00AD7B7300AD7B7B0096836700AD84
          7300B5847300A3927B00EFA55200FFB55200E7AD6B00F8B26600F7BD6B000000
          9A000316AC00021EAA0029799A000A62A0000018C6000936C9001029D600106B
          FF00AD738400AD7B8400B57B8400FF00FF00299CEF00428CDE006D8AFD004ABD
          FF009C9C9C00B5848400B9858500BD848400BD848C00BEB1A100C68C8C00CE94
          8C00D69C9400C3A88200DEA58C00DEA59400E7B58400CEADA500EFC68C00F9C0
          8600EFCE9400EFCE9C00FBCA9500DEC6BD00EFCEA500F7D6A500F7D6AD00FBD3
          A900E7CEBD00EFD6BD00F7D6B500F7DEB500F7DEBD00DEDEDE00E7CEC600EFCE
          C600EFDEC600E7D6CE00E7DECE00F7DEC600F7DECE00E7D6D600EFDED600F7E7
          C600F7E7CE00F7E7D600F7E7DE00F7EFDE00F7EFE700F7EFEF00FFF7EF00FFF7
          F700FFFFF700FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002323230D292929292929292929292929292929292929232323232320484F
          4443423E3D3939383838383838383829232323232320484F4B44423E3E3C3939
          38383838383838292323232323204C504B4B44423E3E3C393938383838383829
          2323232323205051504B4444423E3E3C39393838383838292323232323205145
          2828282800031131282828282828382923232323232152535150504B03010405
          0E313939383838292323232323225454535150502D062502090E313939383829
          23232323232954452828282828061A0B08090E312828382923232323232B5556
          54545351505007371508090E3139382923232323232C57585654545351500A3A
          371508090E31392923232323232E5745282828282828280C3F371508090E3129
          23232323232E575959575654545351500C3F371508090E2923232323232E5759
          5959575654545351500C3F371508092923232323232F57452828282828282828
          28280C3A2A24271B23232323232F575959595959575654545351500C24272419
          172323232330575959595959595756545353534A27241D1E181C232323305745
          2828282828282828284E100F0C1C261F1C232323233357595959595959595857
          5646103414121C1C232323232333575959595959595959595846103616132923
          2323232323335759595959595959595959491036162923232323232323335959
          5959595959595959594D10362923232323232323233240414147404040403B3B
          3B35102923232323232323232323232323232323232323232323232323232323
          2323}
        Stretch = True
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 46
      Width = 621
      Height = 406
      Align = alClient
      TabOrder = 1
      object Label1: TLabel
        Left = 33
        Top = 7
        Width = 75
        Height = 13
        Caption = 'N.º Contrato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 13
        Top = 41
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
      object Label3: TLabel
        Left = 32
        Top = 65
        Width = 77
        Height = 13
        Caption = 'Imóvel/Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 67
        Top = 134
        Width = 44
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 112
        Top = 7
        Width = 65
        Height = 17
        DataField = 'CTC_CDCONT'
        DataSource = dsContrato
        Transparent = True
      end
      object Label5: TLabel
        Left = 36
        Top = 158
        Width = 75
        Height = 13
        Alignment = taRightJustify
        Caption = 'Índice/Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 11
        Top = 183
        Width = 100
        Height = 13
        Caption = 'Valor da Entrada:'
        FocusControl = dbeVLENTRADA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 270
        Top = 182
        Width = 98
        Height = 13
        Caption = 'Data da Entrada:'
        FocusControl = dbeDTENTRADA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 46
        Top = 205
        Width = 64
        Height = 13
        Caption = 'Qt. Balões:'
        FocusControl = dbeQTBALOES
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 24
        Top = 251
        Width = 85
        Height = 13
        Caption = 'Qt.Prestações:'
        FocusControl = dbeQTPRES
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 265
        Top = 250
        Width = 101
        Height = 13
        Caption = 'Valor Prestações:'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 26
        Top = 298
        Width = 84
        Height = 13
        Caption = 'Data Contrato:'
        FocusControl = dbeDTCONT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 264
        Top = 227
        Width = 102
        Height = 13
        Alignment = taRightJustify
        Caption = 'Previsão Entrega:'
        FocusControl = dbeDTENTG
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 7
        Top = 320
        Width = 102
        Height = 13
        Caption = 'Índ.após Entrega:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtNMCLIEN: TDBText
        Left = 300
        Top = 134
        Width = 70
        Height = 13
        AutoSize = True
        DataField = 'CTC_NMCLIE'
        DataSource = dsContrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtVLIMOVEL: TDBText
        Left = 300
        Top = 63
        Width = 76
        Height = 13
        AutoSize = True
        DataField = 'CTC_VLIMOV'
        DataSource = dsContrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtTOBALO: TDBText
        Left = 369
        Top = 203
        Width = 64
        Height = 13
        AutoSize = True
        DataField = 'CTC_TOBALO'
        DataSource = dsContrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 266
        Top = 297
        Width = 102
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vcto. 1ª Prestaç.:'
        FocusControl = dbeDTVENC
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 18
        Top = 227
        Width = 92
        Height = 13
        Caption = 'Valor da Chave:'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 39
        Top = 274
        Width = 69
        Height = 13
        Caption = 'Valor Multa:'
        FocusControl = dbeMulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 301
        Top = 272
        Width = 68
        Height = 13
        Caption = 'Valor Juros:'
        FocusControl = dbeJuros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 269
        Top = 204
        Width = 100
        Height = 13
        Caption = 'Total dos Balões:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 15
        Top = 90
        Width = 94
        Height = 13
        Caption = 'Endereço\Núm.:'
        FocusControl = dbeDTENTRADA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label20: TLabel
        Left = 71
        Top = 110
        Width = 38
        Height = 13
        Caption = 'Bairro:'
        FocusControl = dbeVLENTRADA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object txtEndereco: TDBText
        Left = 112
        Top = 90
        Width = 69
        Height = 13
        AutoSize = True
        DataField = 'CTC_ENDIMO'
        DataSource = dsContrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtNumero: TDBText
        Left = 272
        Top = 90
        Width = 65
        Height = 17
        DataField = 'CTC_NRIMOV'
        DataSource = dsContrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtBairro: TDBText
        Left = 113
        Top = 110
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'CTC_BAIRRO'
        DataSource = dsContrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtVLINDICE: TDBText
        Left = 272
        Top = 156
        Width = 65
        Height = 17
        DataField = 'CTC_VLINDI'
        DataSource = dsContrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtVLIND2: TDBText
        Left = 272
        Top = 320
        Width = 65
        Height = 17
        DataField = 'CTC_VLIND2'
        DataSource = dsContrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 315
        Top = 155
        Width = 10
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 315
        Top = 321
        Width = 10
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbImovel: TSpeedButton
        Left = 257
        Top = 60
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777770077777777777770FF077777777777077FF07777
          7777770777FF077777777770777FFF00777777790777F1111077777790771117
          0B77777770799170B77777777709990B77777777770990B77777777777090B77
          777777777770B777777777777777777777777777777777777777}
        OnClick = sbImovelClick
      end
      object sbCliente: TSpeedButton
        Left = 257
        Top = 128
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777777777777777777770077777777777770FF077777777777077FF07777
          7777770777FF077777777770777FFF00777777790777F1111077777790771117
          0B77777770799170B77777777709990B77777777770990B77777777777090B77
          777777777770B777777777777777777777777777777777777777}
        OnClick = sbClienteClick
      end
      object dbcmbCDEMPR: TDBLookupComboBox
        Left = 113
        Top = 35
        Width = 145
        Height = 21
        DataField = 'CTC_CDEMPR'
        DataSource = dsContrato
        KeyField = 'EMP_CDEMPR'
        ListField = 'EMP_NMEMPR'
        ListSource = dsEmpred
        TabOrder = 0
        OnEnter = dbcmbCDEMPREnter
        OnExit = dbcmbCDEMPRExit
      end
      object cmbINDICE: TDBLookupComboBox
        Left = 112
        Top = 152
        Width = 145
        Height = 21
        DataField = 'CTC_CDINDI'
        DataSource = dsContrato
        KeyField = 'IND_CDINDI'
        ListField = 'IND_NMDESC'
        ListSource = dsIndice
        TabOrder = 3
        OnExit = cmbINDICEExit
      end
      object dbeVLENTRADA: TDBEdit
        Left = 112
        Top = 175
        Width = 145
        Height = 21
        DataField = 'CTC_VLENTR'
        DataSource = dsContrato
        TabOrder = 4
        OnExit = dbeVLENTRADAExit
      end
      object dbeDTENTRADA: TDBEdit
        Left = 368
        Top = 173
        Width = 145
        Height = 21
        DataField = 'CTC_DTENTR'
        DataSource = dsContrato
        TabOrder = 5
        OnExit = dbeDTENTRADAExit
      end
      object dbeQTBALOES: TDBEdit
        Left = 112
        Top = 198
        Width = 145
        Height = 21
        DataField = 'CTC_QTBALO'
        DataSource = dsContrato
        TabOrder = 6
        OnExit = dbeQTBALOESExit
      end
      object dbeQTPRES: TDBEdit
        Left = 112
        Top = 244
        Width = 145
        Height = 21
        DataField = 'CTC_QTPRES'
        DataSource = dsContrato
        TabOrder = 9
        OnExit = dbeQTPRESExit
      end
      object DBEdit7: TDBEdit
        Left = 368
        Top = 244
        Width = 145
        Height = 21
        DataField = 'CTC_VLPRES'
        DataSource = dsContrato
        ReadOnly = True
        TabOrder = 10
      end
      object dbeDTCONT: TDBEdit
        Left = 112
        Top = 290
        Width = 145
        Height = 21
        DataField = 'CTC_DTCONT'
        DataSource = dsContrato
        TabOrder = 13
      end
      object dbeDTENTG: TDBEdit
        Left = 368
        Top = 221
        Width = 145
        Height = 21
        DataField = 'CTC_DTPREE'
        DataSource = dsContrato
        TabOrder = 8
        OnExit = dbeDTENTGExit
      end
      object dbcmbINDICE2: TDBLookupComboBox
        Left = 112
        Top = 313
        Width = 145
        Height = 21
        DataField = 'CTC_INDENT'
        DataSource = dsContrato
        KeyField = 'IND_CDINDI'
        ListField = 'IND_NMDESC'
        ListSource = dsIndice
        TabOrder = 15
        OnExit = dbcmbINDICE2Exit
      end
      object dbeDTVENC: TDBEdit
        Left = 368
        Top = 290
        Width = 145
        Height = 21
        DataField = 'CTC_DTVENC'
        DataSource = dsContrato
        TabOrder = 14
        OnExit = dbeDTVENCExit
      end
      object DBEdit4: TDBEdit
        Left = 112
        Top = 221
        Width = 145
        Height = 21
        DataField = 'CTC_VLCHAV'
        DataSource = dsContrato
        TabOrder = 7
      end
      object dbeMulta: TDBEdit
        Left = 112
        Top = 267
        Width = 145
        Height = 21
        DataField = 'CTC_VLMULT'
        DataSource = dsContrato
        TabOrder = 11
        OnExit = dbeMultaExit
      end
      object dbeJuros: TDBEdit
        Left = 368
        Top = 267
        Width = 145
        Height = 21
        DataField = 'CTC_JUROS'
        DataSource = dsContrato
        TabOrder = 12
        OnExit = dbeJurosExit
      end
      object dbeCDIMOV: TDBEdit
        Left = 112
        Top = 60
        Width = 145
        Height = 21
        DataField = 'CTC_CDIMOV'
        DataSource = dsContrato
        ReadOnly = True
        TabOrder = 1
        OnEnter = dbeCDIMOVEnter
        OnExit = dbeCDIMOVExit
        OnKeyPress = cmbCDIMOVKeyPress
      end
      object dbcmbCLIENTE: TDBEdit
        Left = 112
        Top = 128
        Width = 145
        Height = 21
        DataField = 'CTC_CDCLIEN'
        DataSource = dsContrato
        ReadOnly = True
        TabOrder = 2
        OnExit = dbcmbCLIENTEExit
        OnKeyPress = dbcmbCLIENTEKeyPress
      end
      object GridContratos: TDBGrid
        Left = 1
        Top = 332
        Width = 619
        Height = 73
        Align = alBottom
        DataSource = dsContrato
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 16
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GridContratosDblClick
        OnKeyDown = GridContratosKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CTC_CDCONT'
            Title.Caption = 'CONTRATO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTC_NMCLIE'
            Title.Caption = 'CLIENTE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CTC_NMEMPR'
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
            FieldName = 'CTC_DTCONT'
            Title.Caption = 'DT.CONTRATO'
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
  object dsContrato: TDataSource
    DataSet = dmBD.tbContratos
    OnStateChange = dsContratoStateChange
    OnDataChange = dsContratoDataChange
    Left = 534
    Top = 50
  end
  object dsEmpred: TDataSource
    DataSet = dmBD.tbEmpredim
    Left = 534
    Top = 82
  end
  object dsClientes: TDataSource
    DataSet = dmBD.tbClientes
    Left = 534
    Top = 114
  end
  object dsBaloes: TDataSource
    DataSet = dmBD.tbBaloes
    Left = 534
    Top = 146
  end
  object dsIndice: TDataSource
    DataSet = dmBD.tbIndices
    Left = 534
    Top = 178
  end
  object dsImoveis: TDataSource
    DataSet = dmBD.tbImoveis
    Left = 385
    Top = 58
  end
end
