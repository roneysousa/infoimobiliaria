object frmLogon: TfrmLogon
  Left = 342
  Top = 212
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Acesso ao Sistema'
  ClientHeight = 200
  ClientWidth = 334
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_data: TLabel
    Left = 112
    Top = 8
    Width = 37
    Height = 13
    Caption = 'lbl_data'
  end
  object edt_NMUSUA: TEdit
    Left = 120
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edt_NMUSUA'
  end
  object btConfirma: TBitBtn
    Left = 136
    Top = 152
    Width = 75
    Height = 25
    Caption = 'btConfirma'
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 232
    Top = 152
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    TabOrder = 2
  end
end
