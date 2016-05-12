object frmNetSobre: TfrmNetSobre
  Left = 226
  Top = 146
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sobre...'
  ClientHeight = 258
  ClientWidth = 462
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 23
    Top = 8
    Width = 417
    Height = 151
    Caption = ' Sobre o Programa: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Memo1: TMemo
      Left = 3
      Top = 14
      Width = 411
      Height = 128
      Alignment = taCenter
      BorderStyle = bsNone
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        'NetImoveis  vers'#227'o 1.0'
        ''
        'Desenvolvido por NetSoft Tecnologia Ltda.'
        'Av. Jo'#227'o XXIII, 250 Terreo'
        'Jockey Club * Teresina - PI.'
        ''
        
          '(Copyright NetImoveis por NetSoft Tecnologia em Sistemas, 2004 '#169 +
          ')'
        'Todos os direitos reservados.')
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 86
    Top = 171
    Width = 321
    Height = 68
    Caption = ' Contato: '
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 89
      Top = 15
      Width = 31
      Height = 13
      Caption = 'E-mail:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 61
      Top = 31
      Width = 59
      Height = 13
      Caption = 'Home-Page:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 72
      Top = 47
      Width = 51
      Height = 13
      Caption = ' Telefone: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 130
      Top = 15
      Width = 106
      Height = 13
      Cursor = crHandPoint
      Hint = 'sac@netsoft-pi.com.br'
      Caption = 'sac@netsoft-pi.com.br'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      OnClick = Label4Click
    end
    object Label5: TLabel
      Left = 130
      Top = 31
      Width = 105
      Height = 13
      Cursor = crHandPoint
      Hint = 'www.netsoft-pi.com.br'
      Caption = 'www.netsoft-pi.com.br'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      OnClick = Label5Click
    end
    object Label6: TLabel
      Left = 130
      Top = 47
      Width = 69
      Height = 13
      Caption = ' (86)233-4343 '
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object Timer1: TTimer
    Interval = 150
    OnTimer = Timer1Timer
    Left = 16
    Top = 168
  end
end
