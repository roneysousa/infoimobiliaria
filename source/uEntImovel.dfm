object frmEntImovel: TfrmEntImovel
  Left = 282
  Top = 202
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Entrega de Imovel'
  ClientHeight = 211
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 401
    Height = 170
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 75
      Height = 13
      Caption = 'Prev.Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 24
      Top = 63
      Width = 94
      Height = 13
      Caption = 'Data da Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 24
      Top = 103
      Width = 166
      Height = 13
      Caption = 'Data da Mundan�a de Indice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 39
      Width = 100
      Height = 21
      TabStop = False
      DataField = 'CTC_DTPREE'
      DataSource = dsContrato
      ReadOnly = True
      TabOrder = 0
    end
    object dbeDTENTREGA: TDBEdit
      Left = 24
      Top = 79
      Width = 100
      Height = 21
      DataField = 'CTC_DTENTG'
      DataSource = dsContrato
      TabOrder = 1
    end
    object dbeDTMUND: TDBEdit
      Left = 24
      Top = 120
      Width = 100
      Height = 21
      DataField = 'CTC_DTMUIN'
      DataSource = dsContrato
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 170
    Width = 401
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object dsContrato: TDataSource
    DataSet = dmBD.tbContratos
    Left = 360
    Top = 24
  end
end
