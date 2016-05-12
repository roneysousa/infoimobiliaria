object frmConfImoClie: TfrmConfImoClie
  Left = 335
  Top = 235
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Im�veis por Cliente'
  ClientHeight = 188
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 357
    Height = 147
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 22
      Top = 56
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
    object Label2: TLabel
      Left = 6
      Top = 80
      Width = 59
      Height = 13
      Caption = 'Endere�o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 26
      Top = 104
      Width = 38
      Height = 13
      Caption = 'Bairro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 11
      Top = 126
      Width = 55
      Height = 13
      Caption = 'Telefone:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 20
      Top = 32
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
    object DBText1: TDBText
      Left = 68
      Top = 56
      Width = 58
      Height = 13
      AutoSize = True
      DataField = 'CLI_NMCLIE'
      DataSource = Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 68
      Top = 79
      Width = 110
      Height = 13
      AutoSize = True
      DataField = 'CLI_ENCLIE'
      DataSource = Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 68
      Top = 103
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'CLI_BAIRRO'
      DataSource = Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 68
      Top = 127
      Width = 83
      Height = 13
      AutoSize = True
      DataField = 'CLI_NRFONE'
      DataSource = Clientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 66
      Top = 27
      Width = 272
      Height = 21
      DataField = 'IMO_CDCLIE'
      DataSource = dsImovel
      KeyField = 'CLI_CDCLIE'
      ListField = 'CLI_NMCLIE'
      ListSource = Clientes
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 147
    Width = 357
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cmbSaida: TComboBox
      Left = 8
      Top = 8
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      Items.Strings = (
        'Video'
        'Impressora')
    end
    object btGerar: TButton
      Left = 196
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gerar...'
      TabOrder = 1
      OnClick = btGerarClick
    end
    object btFechar: TButton
      Left = 274
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btFecharClick
    end
  end
  object Clientes: TDataSource
    DataSet = dmBD.tbClientes
    Left = 296
    Top = 8
  end
  object dsImovel: TDataSource
    DataSet = dmBD.tbImoveis
    Left = 264
    Top = 8
  end
end
