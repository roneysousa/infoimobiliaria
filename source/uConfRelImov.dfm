object frmConfRelImovel: TfrmConfRelImovel
  Left = 336
  Top = 209
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relatório de Imóvel'
  ClientHeight = 138
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 333
    Height = 97
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 35
      Top = 48
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
    object cmbFLSITU: TComboBox
      Left = 90
      Top = 42
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      Items.Strings = (
        'VENDIDOS'
        'DISPONIVEIS'
        'TODOS')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 97
    Width = 333
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
    object btFechar: TButton
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btFecharClick
    end
  end
end
