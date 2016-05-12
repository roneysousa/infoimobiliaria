object frmCadCliente: TfrmCadCliente
  Left = 234
  Top = 165
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 394
  ClientWidth = 570
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
    Left = 546
    Top = 0
    Width = 24
    Height = 394
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
    Width = 546
    Height = 394
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 544
      Height = 44
      Align = alTop
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -35
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 0
      object Image1: TImage
        Left = 5
        Top = 2
        Width = 40
        Height = 40
        Picture.Data = {
          07544269746D617076020000424D760200000000000076000000280000002000
          0000200000000100040000000000000200000000000000000000100000000000
          000000000000000080000080000000808000800000008000800080800000C0C0
          C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF00777777777777777700008888777777777777777777777700BB9908888777
          777777777777777700B9BB999008888777777777777700000BB9BB9990808888
          87777777770077440BB9BB999081088888877777007477440BB9BB9990811088
          88877777077477440BB9BB999081108887777777077477440BB9BB9990811087
          77777777077477440BB9BB999081107777777777077477440BB9BB9990811077
          77777777077477440BB9BBB9908110777777777707747740BBBBBBB990811077
          7777777707747740BBBBBBB9990110777777777707747770BBBBBBB999080077
          7777777077777770BBBBBBB9990810777777777077777770BBBBBBB999081107
          7777777077777770BBBBBBB9990811077777777077777770BBBBBBB999081107
          7777777077777770BBBBB779990811077777777077777770BBB77BBBB9081107
          7777777077777770B77999999B08110777777770777777700B80000900781107
          77777770777777770B0888807777710777777770777444444088888801111707
          7777777707800004008777880001007777777777070888807077778808807777
          7777777770888888007777880888077777777777708777880707788077880777
          7777777770777788077000877788077777777777707777880777707777880777
          7777777777077880777777077880777777777777777000877777777000877777
          7777}
        Stretch = True
      end
      object DBText3: TDBText
        Left = 48
        Top = 4
        Width = 177
        Height = 37
        AutoSize = True
        DataField = 'CLI_NMCLIE'
        DataSource = dsClientes
      end
    end
    object PagControle: TPageControl
      Left = 1
      Top = 45
      Width = 544
      Height = 313
      ActivePage = tsBasico
      Align = alClient
      TabOrder = 1
      object tsBasico: TTabSheet
        Caption = '&Básico'
        object Label1: TLabel
          Left = 32
          Top = 13
          Width = 40
          Height = 13
          Caption = 'Código'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 38
          Top = 38
          Width = 33
          Height = 13
          Caption = 'Nome'
          FocusControl = dbeNMFUNC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 12
          Top = 105
          Width = 61
          Height = 13
          Caption = 'Identidade'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 326
          Top = 104
          Width = 24
          Height = 13
          Caption = 'CPF'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 45
          Top = 127
          Width = 25
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 16
          Top = 149
          Width = 55
          Height = 13
          Caption = 'Endereço'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 37
          Top = 171
          Width = 34
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 10
          Top = 194
          Width = 62
          Height = 13
          Caption = 'Cidade/UF'
          FocusControl = DBEdit8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 75
          Top = 13
          Width = 65
          Height = 17
          DataField = 'CLI_CDCLIE'
          DataSource = dsClientes
          Transparent = True
        end
        object Label9: TLabel
          Left = 19
          Top = 214
          Width = 51
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 33
          Top = 234
          Width = 36
          Height = 13
          Caption = 'Celula'
          FocusControl = DBEdit9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 288
          Top = 83
          Width = 65
          Height = 13
          Caption = 'Data Nasc.'
          FocusControl = DBEdit10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 324
          Top = 36
          Width = 29
          Height = 13
          Caption = 'Sexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label39: TLabel
          Left = 229
          Top = 234
          Width = 38
          Height = 13
          Caption = 'E_mail'
          FocusControl = DBEdit35
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label42: TLabel
          Left = 12
          Top = 83
          Width = 60
          Height = 13
          Caption = 'Natural de'
          FocusControl = DBEdit37
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label43: TLabel
          Left = 244
          Top = 59
          Width = 82
          Height = 13
          Caption = 'Nacionalidade'
          FocusControl = DBEdit38
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label44: TLabel
          Left = 25
          Top = 60
          Width = 47
          Height = 13
          Caption = 'Est.Civil'
          FocusControl = cmbESTCIV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbeNMFUNC: TDBEdit
          Left = 74
          Top = 31
          Width = 244
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_NMCLIE'
          DataSource = dsClientes
          TabOrder = 1
          OnExit = dbeNMFUNCExit
        end
        object DBEdit3: TDBEdit
          Left = 74
          Top = 98
          Width = 100
          Height = 21
          DataField = 'CLI_IDEINS'
          DataSource = dsClientes
          TabOrder = 7
        end
        object DBEdit4: TDBEdit
          Left = 353
          Top = 98
          Width = 100
          Height = 21
          DataField = 'CLI_CPFCGC'
          DataSource = dsClientes
          MaxLength = 14
          TabOrder = 8
          OnExit = DBEdit4Exit
        end
        object DBEdit5: TDBEdit
          Left = 74
          Top = 120
          Width = 100
          Height = 21
          DataField = 'CLI_CEPCLI'
          DataSource = dsClientes
          MaxLength = 9
          TabOrder = 9
        end
        object DBEdit6: TDBEdit
          Left = 74
          Top = 142
          Width = 244
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_ENCLIE'
          DataSource = dsClientes
          TabOrder = 10
        end
        object DBEdit7: TDBEdit
          Left = 74
          Top = 164
          Width = 124
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_BAIRRO'
          DataSource = dsClientes
          TabOrder = 11
        end
        object DBEdit8: TDBEdit
          Left = 74
          Top = 186
          Width = 189
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CIDADE'
          DataSource = dsClientes
          TabOrder = 12
        end
        object cmbUF: TDBComboBox
          Left = 265
          Top = 186
          Width = 52
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'CLI_UFCLIE'
          DataSource = dsClientes
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
          TabOrder = 13
        end
        object DBEdit1: TDBEdit
          Left = 74
          Top = 208
          Width = 100
          Height = 21
          DataField = 'CLI_NRFONE'
          DataSource = dsClientes
          MaxLength = 13
          TabOrder = 14
        end
        object DBEdit9: TDBEdit
          Left = 74
          Top = 230
          Width = 100
          Height = 21
          DataField = 'CLI_FONE01'
          DataSource = dsClientes
          MaxLength = 9
          TabOrder = 15
        end
        object DBEdit10: TDBEdit
          Left = 353
          Top = 76
          Width = 100
          Height = 21
          DataField = 'CLI_DTNASC'
          DataSource = dsClientes
          MaxLength = 10
          TabOrder = 6
        end
        object cmbSexo: TDBComboBox
          Left = 360
          Top = 31
          Width = 93
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'CLI_SEXO'
          DataSource = dsClientes
          ItemHeight = 16
          Items.Strings = (
            'Masculino'
            'Feminino')
          TabOrder = 2
        end
        object dbcPessoaJuridica: TDBCheckBox
          Left = 387
          Top = 8
          Width = 64
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Juridica'
          DataField = 'CLI_TPPESS'
          DataSource = dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnClick = dbcPessoaJuridicaClick
        end
        object DBEdit35: TDBEdit
          Left = 269
          Top = 230
          Width = 184
          Height = 21
          DataField = 'CLI_EMAIL'
          DataSource = dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          TabOrder = 16
        end
        object cmbESTCIV: TDBComboBox
          Left = 74
          Top = 53
          Width = 124
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'CLI_ESTCIV'
          DataSource = dsClientes
          ItemHeight = 16
          Items.Strings = (
            'SOLTEIRO(A)'
            'CASADO(A)'
            'OUTROS')
          TabOrder = 3
        end
        object DBEdit37: TDBEdit
          Left = 329
          Top = 54
          Width = 124
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_NACION'
          DataSource = dsClientes
          TabOrder = 4
        end
        object DBEdit38: TDBEdit
          Left = 74
          Top = 76
          Width = 124
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_NATURA'
          DataSource = dsClientes
          TabOrder = 5
        end
      end
      object tsEmprego: TTabSheet
        Caption = '&Emprego'
        ImageIndex = 2
        object Label12: TLabel
          Left = 16
          Top = 127
          Width = 85
          Height = 13
          Caption = 'Data Admissão'
          FocusControl = DBEdit11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 34
          Top = 148
          Width = 66
          Height = 13
          Caption = 'Data Saída'
          FocusControl = DBEdit12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel
          Left = 58
          Top = 170
          Width = 43
          Height = 13
          Caption = 'Função'
          FocusControl = DBEdit13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 62
          Top = 191
          Width = 38
          Height = 13
          Caption = 'Renda'
          FocusControl = DBEdit15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label17: TLabel
          Left = 8
          Top = 215
          Width = 93
          Height = 13
          Caption = 'Cart.Profissional'
          FocusControl = DBEdit16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label18: TLabel
          Left = 35
          Top = 237
          Width = 69
          Height = 13
          Caption = 'Habilitação:'
          FocusControl = DBEdit17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label15: TLabel
          Left = 52
          Top = 13
          Width = 49
          Height = 13
          Caption = 'Empresa'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 47
          Top = 37
          Width = 55
          Height = 13
          Caption = 'Endereço'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 65
          Top = 59
          Width = 34
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 61
          Top = 103
          Width = 40
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 279
          Top = 102
          Width = 17
          Height = 13
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 25
          Top = 82
          Width = 75
          Height = 13
          Caption = 'Fone de Emp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBEdit12: TDBEdit
          Left = 104
          Top = 142
          Width = 100
          Height = 21
          DataField = 'CLI_DTSAID'
          DataSource = dsClientes
          MaxLength = 10
          TabOrder = 7
        end
        object DBEdit11: TDBEdit
          Left = 104
          Top = 120
          Width = 100
          Height = 21
          DataField = 'CLI_DTADMI'
          DataSource = dsClientes
          MaxLength = 10
          TabOrder = 6
        end
        object DBEdit13: TDBEdit
          Left = 104
          Top = 164
          Width = 184
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_NOMFUN'
          DataSource = dsClientes
          TabOrder = 8
        end
        object DBEdit15: TDBEdit
          Left = 104
          Top = 186
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_VLREND'
          DataSource = dsClientes
          TabOrder = 9
        end
        object DBEdit16: TDBEdit
          Left = 104
          Top = 208
          Width = 124
          Height = 21
          DataSource = dsClientes
          TabOrder = 10
          Visible = False
        end
        object DBEdit17: TDBEdit
          Left = 104
          Top = 230
          Width = 100
          Height = 21
          DataSource = dsClientes
          TabOrder = 11
          Visible = False
        end
        object DBEdit2: TDBEdit
          Left = 104
          Top = 10
          Width = 244
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_NOMEMP'
          DataSource = dsClientes
          TabOrder = 0
        end
        object DBEdit14: TDBEdit
          Left = 104
          Top = 32
          Width = 244
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_ENDEMP'
          DataSource = dsClientes
          TabOrder = 1
        end
        object DBEdit18: TDBEdit
          Left = 104
          Top = 54
          Width = 173
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_BAIEMP'
          DataSource = dsClientes
          TabOrder = 2
        end
        object DBEdit19: TDBEdit
          Left = 104
          Top = 98
          Width = 173
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CIDEMP'
          DataSource = dsClientes
          TabOrder = 4
        end
        object DBComboBox1: TDBComboBox
          Left = 298
          Top = 98
          Width = 52
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'CLI_UFEMPR'
          DataSource = dsClientes
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
          TabOrder = 5
        end
        object DBEdit34: TDBEdit
          Left = 104
          Top = 76
          Width = 82
          Height = 21
          DataField = 'CLI_FONEMP'
          DataSource = dsClientes
          MaxLength = 13
          TabOrder = 3
        end
      end
      object tsJuridico: TTabSheet
        Caption = '&Juridica'
        ImageIndex = 3
        object Label26: TLabel
          Left = 35
          Top = 13
          Width = 40
          Height = 13
          Caption = 'Código'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 78
          Top = 13
          Width = 65
          Height = 17
          DataField = 'CLI_CDCLIE'
          DataSource = dsClientes
          Transparent = True
        end
        object Label27: TLabel
          Left = 0
          Top = 38
          Width = 76
          Height = 13
          Caption = 'Razão Social'
          FocusControl = DBEdit22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 21
          Top = 147
          Width = 55
          Height = 13
          Caption = 'Endereço'
          FocusControl = DBEdit23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 40
          Top = 170
          Width = 34
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 14
          Top = 192
          Width = 62
          Height = 13
          Caption = 'Cidade/UF'
          FocusControl = DBEdit25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 27
          Top = 60
          Width = 49
          Height = 13
          Caption = 'Fantasia'
          FocusControl = DBEdit26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 49
          Top = 82
          Width = 26
          Height = 13
          Caption = 'CGC'
          FocusControl = DBEdit27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 0
          Top = 105
          Width = 78
          Height = 13
          Caption = 'Insc.Estadual'
          FocusControl = DBEdit28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label34: TLabel
          Left = 3
          Top = 126
          Width = 74
          Height = 13
          Caption = 'Dt.Fundação'
          FocusControl = DBEdit29
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 23
          Top = 214
          Width = 51
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 186
          Top = 212
          Width = 36
          Height = 13
          Caption = 'Celula'
          FocusControl = DBEdit31
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label40: TLabel
          Left = 36
          Top = 256
          Width = 38
          Height = 13
          Caption = 'E_mail'
          FocusControl = DBEdit36
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label45: TLabel
          Left = 1
          Top = 236
          Width = 78
          Height = 13
          Caption = 'Ramo Negóc.'
          FocusControl = DBEdit39
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBEdit22: TDBEdit
          Left = 78
          Top = 32
          Width = 244
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_NMCLIE'
          DataSource = dsClientes
          TabOrder = 0
          OnExit = dbeNMFUNCExit
        end
        object DBEdit23: TDBEdit
          Left = 78
          Top = 142
          Width = 244
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_ENCLIE'
          DataSource = dsClientes
          TabOrder = 5
        end
        object DBEdit24: TDBEdit
          Left = 78
          Top = 164
          Width = 124
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_BAIRRO'
          DataSource = dsClientes
          TabOrder = 6
        end
        object DBEdit25: TDBEdit
          Left = 78
          Top = 186
          Width = 184
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_CIDADE'
          DataSource = dsClientes
          TabOrder = 7
        end
        object DBComboBox2: TDBComboBox
          Left = 265
          Top = 185
          Width = 52
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'CLI_UFCLIE'
          DataSource = dsClientes
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
          TabOrder = 8
        end
        object DBEdit26: TDBEdit
          Left = 78
          Top = 54
          Width = 244
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_NOMEMP'
          DataSource = dsClientes
          TabOrder = 1
        end
        object DBEdit27: TDBEdit
          Left = 78
          Top = 76
          Width = 112
          Height = 21
          DataField = 'CLI_NRCGC'
          DataSource = dsClientes
          MaxLength = 18
          TabOrder = 2
          OnExit = DBEdit27Exit
        end
        object DBEdit28: TDBEdit
          Left = 78
          Top = 98
          Width = 112
          Height = 21
          DataField = 'CLI_NRINS'
          DataSource = dsClientes
          MaxLength = 17
          TabOrder = 3
        end
        object DBEdit29: TDBEdit
          Left = 78
          Top = 120
          Width = 112
          Height = 21
          DataField = 'CLI_DTNASC'
          DataSource = dsClientes
          MaxLength = 10
          TabOrder = 4
        end
        object DBEdit30: TDBEdit
          Left = 78
          Top = 208
          Width = 90
          Height = 21
          DataField = 'CLI_NRFONE'
          DataSource = dsClientes
          MaxLength = 13
          TabOrder = 9
        end
        object DBEdit31: TDBEdit
          Left = 227
          Top = 208
          Width = 90
          Height = 21
          DataField = 'CLI_FONE01'
          DataSource = dsClientes
          MaxLength = 9
          TabOrder = 10
        end
        object ckbJuridica2: TDBCheckBox
          Left = 387
          Top = 8
          Width = 64
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Juridica'
          DataField = 'CLI_TPPESS'
          DataSource = dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          Visible = False
          OnClick = ckbJuridica2Click
        end
        object DBEdit36: TDBEdit
          Left = 78
          Top = 252
          Width = 184
          Height = 21
          DataField = 'CLI_EMAIL'
          DataSource = dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit39: TDBEdit
          Left = 78
          Top = 230
          Width = 184
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_NOMFUN'
          DataSource = dsClientes
          TabOrder = 11
        end
      end
      object bsConjuge: TTabSheet
        Caption = '&Conjugue'
        ImageIndex = 3
        object Label24: TLabel
          Left = 23
          Top = 38
          Width = 51
          Height = 13
          Caption = 'Cônjuge:'
          FocusControl = DBEdit20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label25: TLabel
          Left = 50
          Top = 62
          Width = 23
          Height = 13
          Caption = 'RG:'
          FocusControl = DBEdit21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label37: TLabel
          Left = 45
          Top = 88
          Width = 28
          Height = 13
          Caption = 'CPF:'
          FocusControl = DBEdit32
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 3
          Top = 110
          Width = 72
          Height = 13
          Caption = 'Órg.Emissor:'
          FocusControl = DBEdit33
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBEdit20: TDBEdit
          Left = 74
          Top = 32
          Width = 244
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_NMCONJUGUE'
          DataSource = dsClientes
          TabOrder = 0
        end
        object DBEdit21: TDBEdit
          Left = 74
          Top = 56
          Width = 112
          Height = 21
          DataField = 'CLI_RGCONJ'
          DataSource = dsClientes
          TabOrder = 1
          OnKeyPress = DBEdit21KeyPress
        end
        object DBEdit32: TDBEdit
          Left = 74
          Top = 80
          Width = 112
          Height = 21
          DataField = 'CLI_CPFCON'
          DataSource = dsClientes
          TabOrder = 2
          OnKeyPress = DBEdit21KeyPress
        end
        object DBEdit33: TDBEdit
          Left = 74
          Top = 104
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CLI_OECONJ'
          DataSource = dsClientes
          TabOrder = 3
        end
      end
    end
    object GridFunc: TDBGrid
      Left = 1
      Top = 358
      Width = 544
      Height = 35
      Align = alBottom
      DataSource = dsClientes
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = GridFuncCellClick
      OnDblClick = GridFuncDblClick
      OnKeyDown = GridFuncKeyDown
      OnKeyPress = GridFuncKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CLI_CDCLIE'
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
          FieldName = 'CLI_NMCLIE'
          Title.Caption = 'FUNCIONÁRIO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_NRFONE'
          Title.Caption = 'TELEFONE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_NOMFUN'
          Title.Caption = 'FUNÇÃO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object dsClientes: TDataSource
    DataSet = dmBD.tbClientes
    OnStateChange = dsClientesStateChange
    OnDataChange = dsClientesDataChange
    Left = 477
    Top = 18
  end
end
