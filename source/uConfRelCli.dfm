object frmConfRelCli: TfrmConfRelCli
  Left = 334
  Top = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerar Relatório'
  ClientHeight = 198
  ClientWidth = 333
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
    Width = 333
    Height = 157
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 50
      Top = 36
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
    object Label2: TLabel
      Left = 59
      Top = 61
      Width = 46
      Height = 13
      Caption = 'Pessoa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 63
      Top = 86
      Width = 41
      Height = 13
      Caption = 'Ordem:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 47
      Top = 111
      Width = 56
      Height = 13
      Caption = 'C/Debito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object cmbFLSITU: TComboBox
      Left = 105
      Top = 30
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      Items.Strings = (
        'Normal'
        'Suspenso'
        'Todas')
    end
    object cmbTPPESS: TComboBox
      Left = 105
      Top = 55
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 1
      Items.Strings = (
        'Fisica'
        'Juridica'
        'Todas')
    end
    object cmbOrdem: TComboBox
      Left = 105
      Top = 80
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 2
      Items.Strings = (
        'Codigo'
        'Nome')
    end
    object cmbDEBIT: TComboBox
      Left = 105
      Top = 104
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 3
      Visible = False
      Items.Strings = (
        'Aberto(s)'
        'Pago(s)'
        'Todos')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 157
    Width = 333
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gerar...'
      TabOrder = 1
      OnClick = Button1Click
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
  end
end
