object frmConfRelatorio: TfrmConfRelatorio
  Left = 291
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configurar'
  ClientHeight = 173
  ClientWidth = 300
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
    Width = 300
    Height = 132
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 58
      Top = 31
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Índice:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 30
      Top = 53
      Width = 67
      Height = 13
      Alignment = taRightJustify
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
      Left = 34
      Top = 76
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtDTINIC: TMaskEdit
      Left = 98
      Top = 48
      Width = 100
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = edtDTINICExit
      OnKeyPress = edtDTINICKeyPress
    end
    object edtDTFINA: TMaskEdit
      Left = 98
      Top = 72
      Width = 100
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
      OnExit = edtDTFINAExit
      OnKeyPress = edtDTINICKeyPress
    end
    object cmbINDICES: TComboBox
      Left = 98
      Top = 24
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      Items.Strings = (
        'TODOS')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 132
    Width = 300
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
    object Button1: TButton
      Left = 137
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gerar...'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 219
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
end
