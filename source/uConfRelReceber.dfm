object frmConfRelReceber: TfrmConfRelReceber
  Left = 356
  Top = 220
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configurar Relat�rio'
  ClientHeight = 182
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 357
    Height = 141
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 62
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
    object Label4: TLabel
      Left = 17
      Top = 86
      Width = 67
      Height = 13
      Caption = 'Data Final.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 17
      Top = 37
      Width = 67
      Height = 13
      Caption = 'Situa��o...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object cmbFLSITU: TComboBox
      Left = 88
      Top = 29
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      Items.Strings = (
        'Abertas'
        'Atrasadas'
        'Recebidas'
        'TODAS')
    end
    object edtDTFINA: TMaskEdit
      Left = 88
      Top = 78
      Width = 100
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
      OnExit = edtDTFINAExit
    end
    object edtDTINIC: TMaskEdit
      Left = 88
      Top = 54
      Width = 100
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = edtDTINICExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 141
    Width = 357
    Height = 41
    Align = alBottom
    TabOrder = 1
    object cmbSaida: TComboBox
      Left = 8
      Top = 9
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
      Left = 276
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btFecharClick
    end
  end
end
