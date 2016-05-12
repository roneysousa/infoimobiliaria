object frmCadEmpred: TfrmCadEmpred
  Left = 247
  Top = 158
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Empreendimento'
  ClientHeight = 377
  ClientWidth = 542
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
    Left = 519
    Top = 0
    Width = 23
    Height = 377
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
      OnClick = btIncluirClick
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
      OnClick = btDeleteClick
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
    Width = 519
    Height = 377
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 517
      Height = 48
      Align = alTop
      TabOrder = 0
      object Image1: TImage
        Left = 5
        Top = 4
        Width = 40
        Height = 40
        Picture.Data = {
          07544269746D617076060000424D760600000000000036040000280000001800
          000018000000010008000000000040020000D30E0000D30E0000000100000001
          0000003100000039000000420000004A0000AD4A0000B54A000000520000C652
          0000005A0000085A0000C65A000000630000296300007B630000CE630000D663
          0000C66B0000D66B0000DE6B0000DE730000E77B0000F78C0000084208009C42
          0800004A0800084A0800AD4A08000052080008520800105A0800C65A08000863
          0800BD630800C6630800106B08006B6B0800D68C0800085A1000086310001063
          1000106B1000186B1000216B1000426B1000CE6B1000CE731000DE7B1000E78C
          1000106B1800BD6B180018731800187B1800427B1800CE7B1800297B2100DE7B
          2100AD9C2100C673290018842900298C2900B5AD2900FFAD2900BD733100298C
          3100318C31004AA53100297B3900398C3900DE8C390021943900399C3900429C
          3900529C3900B5A5390031AD39009CAD39004AB53900FFB53900AD6B42004284
          4200CE844200398C420039944200429C4200849C42009C9C4200DE9C420029A5
          420042A542004AB54200FFB5420073BD420084BD4200D6944A0094B54A008CBD
          4A00FFBD4A00429C520042B5520052BD5200FFC652005AA55A00E7AD5A0052BD
          5A00A5BD5A00FFBD5A00FFC65A00CE9C63004AA563005ABD6300FFC66300FFCE
          63006B6B6B004AC66B00F7C66B00FFC66B00FFCE6B007373730052A573004AAD
          7300D6AD73006BB573005ABD7300FFCE73005AAD7B0052B57B006BBD7B00F7C6
          7B00F7CE7B0073D67B00F7D67B00FFD67B00848484008C848400FFCE8400E7D6
          8400FFD68400FFDE840084848C008C848C008C8C8C008CBD8C0073CE8C008CCE
          8C00F7CE8C00FFD68C00FFE78C008C8C9400948C940094949400DEBD94008CC6
          9400E7C69400EFC69400F7CE9400F7D69400848C9C008C949C009C9C9C006BC6
          9C00E7C69C006BCE9C00EFCE9C008CD69C00EFD69C00F7D69C00FFDE9C00FFEF
          9C00A5A5A50073CEA500EFCEA500EFD6A500F7D6A50094DEA500F7DEA500FFDE
          A500A5A5AD00ADADAD00F7D6AD0094DEAD0073E7AD00ADADB500ADB5B500B5B5
          B5007BD6B50094DEB50084E7B500EFE7B500F7E7B500B5B5BD00BDBDBD009CD6
          BD008CDEBD00F7E7BD00FFEFBD00FFFFBD00BDBDC600BDC6C600C6C6C6008CE7
          C600F7EFC6009CDECE0094E7CE008CEFD60094EFD60094E7DE0094EFDE0094EF
          E70094F7E70094FFE70094F7EF009CFFF700FF00FF009CFFFF00A5FFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D49E757570
          7575757575757575757575757575707575959595948C8C8C8C8C8C8C8C8C8C8C
          8C8C8C8C8C8C8C8C8C75958F8F8F8F8D97A3ADADADB3B9B9C0C0C0C0CACABFBF
          8570958F8F8F8F797EA3ADADADB3B9B9C0C0C0C7CACAC9BF85709E4343404051
          51525252526176767C9FB8CBD1CFCDCD85709E1C1C03031B1B1B1B1B1B1C1616
          42767DD6D5D2CFCF85709E1C1C03031B1B1B1B1B181919161C6C9FD6D5D5CFCF
          8570A8031C06020101010100021C2730407A8EBAB4B4A9A98B70A829271F0903
          0101000000273A456281815E3C3C49499370A84F3632281C0101000119305757
          7181815E3C3C49499370B16553534030010203031D345E5E4B38382415152F2F
          9C70B56D6D675833060608090C2310100E12121213142E359C70B56D6D63593B
          28060B2A2B0D10100E0E0F0F13112D359C70B74A59594C484848475455443737
          2C211E1E071E20319D70BE5C5B5B5C68878787A7A78072805639393E04041A17
          9D70BE5C5F5C5C6887878289A789807266395D50040417179D70BE888883836F
          646A6E746A646F7280C3A498786B4E4E9370C6918891915A3D4D6069695A6973
          A6C8C8C8BBBBC8C88470C691919186693D3D6069736E6969AFC1C8C1BCC1C8C8
          8470C6ACACAC9A90907F90B29A9AB2B2A5A2A2ABABABAAA08A75C6AAAAA2A2AA
          AAA2A2A0A0A0A0A0A0A0A0A09999989693A8C6AAAAA2A2AAAAAAA0A0A0A0A0A0
          A0A0A0A09999969693A8C5C5C5C4C4BEBDBDBDB7B7B6B5B5B1B0B0B0A8A89E9E
          9ED4}
        Stretch = True
        Transparent = True
      end
      object DBText3: TDBText
        Left = 48
        Top = 12
        Width = 204
        Height = 24
        AutoSize = True
        DataField = 'EMP_NMEMPR'
        DataSource = dsEmpredimento
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
      Top = 49
      Width = 517
      Height = 327
      Align = alClient
      TabOrder = 1
      object Label1: TLabel
        Left = 74
        Top = 10
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
        Left = 20
        Top = 40
        Width = 98
        Height = 13
        Alignment = taRightJustify
        Caption = 'Empreendimento:'
        FocusControl = dbeNMEMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 52
        Top = 85
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qt.Imóveis:'
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
        Left = 80
        Top = 63
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Local:'
        FocusControl = DBEdit4
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
        Top = 11
        Width = 65
        Height = 17
        DataField = 'EMP_CDEMPR'
        DataSource = dsEmpredimento
        Transparent = True
      end
      object Label5: TLabel
        Left = 22
        Top = 110
        Width = 95
        Height = 13
        Alignment = taRightJustify
        Caption = 'Área Empreend.:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 53
        Top = 134
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Perímetro:'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label22: TLabel
        Left = 196
        Top = 102
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
        Left = 184
        Top = 105
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
      object Label8: TLabel
        Left = 185
        Top = 129
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
      object dbeNMEMP: TDBEdit
        Left = 118
        Top = 33
        Width = 304
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EMP_NMEMPR'
        DataSource = dsEmpredimento
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 118
        Top = 79
        Width = 64
        Height = 21
        DataField = 'EMP_QTIMOV'
        DataSource = dsEmpredimento
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 118
        Top = 56
        Width = 304
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EMP_LOCAL'
        DataSource = dsEmpredimento
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 118
        Top = 102
        Width = 64
        Height = 21
        DataField = 'EMP_AREMPE'
        DataSource = dsEmpredimento
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 118
        Top = 126
        Width = 64
        Height = 21
        DataField = 'EMP_PEEMPR'
        DataSource = dsEmpredimento
        TabOrder = 4
      end
      object GridEmpredimento: TDBGrid
        Left = 1
        Top = 280
        Width = 515
        Height = 46
        Align = alBottom
        DataSource = dsEmpredimento
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GridEmpredimentoDblClick
        OnKeyDown = GridEmpredimentoKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'EMP_CDEMPR'
            Title.Caption = 'CÓDIGO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_NMEMPR'
            Title.Caption = 'EMPREDIMENTO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMP_LOCAL'
            Title.Caption = 'LOCAL'
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
  object dsEmpredimento: TDataSource
    DataSet = dmBD.tbEmpredim
    OnStateChange = dsEmpredimentoStateChange
    OnDataChange = dsEmpredimentoDataChange
    Left = 457
    Top = 58
  end
end
