object frmCadUsuarios: TfrmCadUsuarios
  Left = 269
  Top = 183
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Usuários'
  ClientHeight = 298
  ClientWidth = 516
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 494
    Height = 298
    Align = alClient
    TabOrder = 0
    object Panel4: TPanel
      Left = 1
      Top = 47
      Width = 492
      Height = 250
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 16
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
      end
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 37
        Height = 13
        Caption = 'Nome:'
        FocusControl = dbeNMUSUA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 80
        Width = 38
        Height = 13
        Caption = 'Cargo:'
        FocusControl = dbeCargo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 16
        Top = 24
        Width = 65
        Height = 17
        DataField = 'SEN_CDUSUA'
        DataSource = dsUsuarios
      end
      object Label5: TLabel
        Left = 16
        Top = 119
        Width = 41
        Height = 13
        Caption = 'Senha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 156
        Width = 54
        Height = 13
        Caption = 'Confirma:'
        FocusControl = dbeSenha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeNMUSUA: TDBEdit
        Left = 16
        Top = 56
        Width = 244
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SEN_NMUSUA'
        DataSource = dsUsuarios
        TabOrder = 0
        OnExit = dbeNMUSUAExit
      end
      object dbeCargo: TDBEdit
        Left = 16
        Top = 96
        Width = 244
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SEN_NMCARG'
        DataSource = dsUsuarios
        TabOrder = 1
      end
      object edtSenha: TEdit
        Left = 16
        Top = 133
        Width = 121
        Height = 21
        MaxLength = 6
        PasswordChar = '*'
        TabOrder = 2
        OnExit = edtSenhaExit
      end
      object dbeSenha: TDBEdit
        Left = 176
        Top = 133
        Width = 121
        Height = 21
        DataField = 'SEN_SNATUA'
        DataSource = dsUsuarios
        PasswordChar = '*'
        TabOrder = 3
        Visible = False
      end
      object edt_Confirma: TEdit
        Left = 16
        Top = 171
        Width = 121
        Height = 21
        MaxLength = 6
        PasswordChar = '*'
        TabOrder = 4
        OnExit = edt_ConfirmaExit
      end
      object dbGridUsuarios: TDBGrid
        Left = 1
        Top = 204
        Width = 490
        Height = 45
        Align = alBottom
        DataSource = dsUsuarios
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = dbGridUsuariosCellClick
        OnDblClick = dbGridUsuariosDblClick
        OnKeyDown = dbGridUsuariosKeyDown
        OnKeyPress = dbGridUsuariosKeyPress
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SEN_CDUSUA'
            Title.Alignment = taCenter
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
            FieldName = 'SEN_NMUSUA'
            Title.Alignment = taCenter
            Title.Caption = 'NOME'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 189
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEN_NMCARG'
            Title.Caption = 'CARGO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object pnlSuperior: TPanel
      Left = 1
      Top = 1
      Width = 492
      Height = 46
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 1
      object Image1: TImage
        Left = 8
        Top = 9
        Width = 30
        Height = 30
        Picture.Data = {
          07544269746D617076060000424D760600000000000036040000280000001800
          000018000000010008000000000040020000E30E0000E30E0000000100000001
          00000808080008101800181818008C311800C642180021212100C6422100CE4A
          2100946321005A7B210021842100292929008C4A2900C64A2900CE4A2900D64A
          29001021310031313100C65A3100C6633100B56B3100319C3100001039003939
          3900E75A3900318439007B8C39001829420031314200424242008C524200EF5A
          4200A5634200D66B4200DE6B420042AD420042CE420008214A004A4A4A00A552
          4A00EF634A00F7634A00D66B4A00DE7B4A004AA54A0052525200B5735200527B
          5200E77B52005A9C520052B5520010215A0042215A0063525A005A5A5A005A73
          5A0063735A00EF7B5A00DE8C5A00E78C5A005AA55A005AAD5A0063AD5A005AB5
          5A005AD65A0063636300FF7B6300D68463007BAD630063BD63006B6B6B008473
          6B00FF8C6B00423173005A73730084BD730073D673008CDE7300426B7B00187B
          7B007B7B7B007BA57B004A5A84005A638400DE9C8400EFB5840010318C00526B
          8C00737B8C00DEA58C00FFBD8C009CDE8C002929940010319400103994007384
          94008CBD9400EFC6940010399C00106B9C0010739C009C9C9C00FFD69C00184A
          A5002173A5002973A5006394A500A5A5A500A5CEA500FFD6A500B5E7A5001842
          AD00104AAD00FFDEAD00187BB500318CB500428CB5004A8CB50094ADB500C6DE
          B5001852BD00185ABD002184BD002984BD00318CBD001863C600216BC6003994
          C600529CC600D6E7C6002163CE00216BCE00298CCE003194CE00429CCE004A9C
          CE00529CCE002184D60052A5D6005AA5D60073B5D60084B5D6008CBDD600297B
          DE00218CDE003194DE00429CDE0042A5DE0052ADDE006BB5DE0094C6DE009CC6
          DE00F7EFDE00297BE7002984E700298CE70042A5E7004AA5E7007BBDE7008CC6
          E70094C6E700EFF7E700FFF7E700428CEF002994EF00ADD6EF00298CF7003194
          F7004AADF7004AB5F700FF00FF00399CFF00429CFF0039A5FF0042A5FF0052A5
          FF0042ADFF004AADFF005AADFF0052B5FF006BBDFF006BC6FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          AAAAAAAAAAAAAAAAAAAAAA2E0D0406070E0D0D0D1E47AAAAAAAAAAAAAAAAAAAA
          AAAAAA0D0F292942422813181F0D0C382F0A0A151515444437AAAA0729294242
          4821612148290F09230A155B5B4040243CAAAA07294242482255712B4848181A
          324B3E6E5B4D40403CAAAA43284248303A666D3A484818403277812C6E5B4D40
          3CAAAAAA2A39392154595A3B3948144C3DA1B66C3F6E5B5B3CAAAAAAAA200334
          5C5C492712084C4C3CA2A298445B5B3CAAAAAAAA261100165D5D5D5C35512C45
          317675746A193CAAAAAAAA501100255E6F6F6F625CAAAA604F89909089644AAA
          AAAAAA2602016778797979785658AAAA9BA7A7A7A7A468AAAAAAAA1105107983
          838383827053AA88ABAFAFADABABA44EAAAAAA0B11057E8F999A998F7D52AA92
          AEB0B0B0AEAEAD69AAAAAA11170B79A6B2B2ACA68357AA9CB1B4B4B4B4B1AE80
          AAAAAA111D261B798FA3ACA77E5FAA9DB4B5B5B5B5B3B191AAAAAA262626362D
          1C335C5C26AAAA94B49393A9B4B4A87AAAAAAAAA173646656B65261126AAAA80
          727F878685847B63AAAAAAAA501D505065653617AAAAAAAA7C8B95A0A58C7380
          AAAAAAAAAAAA41261D2650AAAAAAAAAA8E8B9FA09E8A80AAAAAAAAAAAAAAAAAA
          AAAAAAAAAAAAAAAAAA978E968D8EAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
          AAAA}
        Stretch = True
      end
      object DBText2: TDBText
        Left = 43
        Top = 11
        Width = 115
        Height = 29
        AutoSize = True
        DataField = 'SEN_NMUSUA'
        DataSource = dsUsuarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 494
    Top = 0
    Width = 22
    Height = 298
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
    object btIncluir: TToolButton
      Left = 0
      Top = 88
      Caption = 'btIncluir'
      ImageIndex = 12
      Wrap = True
      OnClick = btIncluirClick
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
    object btLocalizar: TToolButton
      Left = 0
      Top = 198
      Caption = 'btLocalizar'
      ImageIndex = 22
      Wrap = True
      OnClick = btLocalizarClick
    end
    object btSair: TToolButton
      Left = 0
      Top = 220
      Caption = 'btSair'
      ImageIndex = 2
      OnClick = btSairClick
    end
  end
  object dsUsuarios: TDataSource
    DataSet = dmBD.tbUsuarios
    OnStateChange = dsUsuariosStateChange
    OnDataChange = dsUsuariosDataChange
    Left = 280
    Top = 49
  end
  object dsTpAcesso: TDataSource
    Left = 313
    Top = 49
  end
end
