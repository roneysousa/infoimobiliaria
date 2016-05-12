object frmConfRel2: TfrmConfRel2
  Left = 270
  Top = 186
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configurar Relatório'
  ClientHeight = 197
  ClientWidth = 330
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
    Width = 330
    Height = 156
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 40
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
    object Label2: TLabel
      Left = 59
      Top = 63
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
    object Label3: TLabel
      Left = 46
      Top = 85
      Width = 67
      Height = 13
      Caption = 'Data Inicio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 50
      Top = 108
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
    object dbcmbNMEMPR: TDBLookupComboBox
      Left = 114
      Top = 32
      Width = 145
      Height = 21
      DataField = 'PRE_CDEMPR'
      DataSource = dsReceber
      KeyField = 'EMP_CDEMPR'
      ListField = 'EMP_NMEMPR'
      ListSource = dsEmpreend
      TabOrder = 0
    end
    object edtDTINIC: TMaskEdit
      Left = 114
      Top = 80
      Width = 121
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
      OnExit = edtDTINICExit
      OnKeyPress = edtDTINICKeyPress
    end
    object edtDTFINA: TMaskEdit
      Left = 114
      Top = 104
      Width = 121
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /    '
      OnExit = edtDTFINAExit
      OnKeyPress = edtDTINICKeyPress
    end
    object cmbSituacao: TDBComboBox
      Left = 114
      Top = 56
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      Items.Strings = (
        'ABERTAS'
        'PAGAS'
        'TODAS')
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 156
    Width = 330
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cmbSaida: TComboBox
      Left = 10
      Top = 9
      Width = 105
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      Items.Strings = (
        'Video'
        'Impressora')
    end
    object btGerar: TButton
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gerar...'
      TabOrder = 1
      OnClick = btGerarClick
    end
    object Button2: TButton
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object dsReceber: TDataSource
    DataSet = dmBD.tbPrestacoes
    Left = 288
    Top = 8
  end
  object dsEmpreend: TDataSource
    DataSet = dmBD.tbEmpredim
    Left = 288
    Top = 40
  end
end
