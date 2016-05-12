object frmDescJuros: TfrmDescJuros
  Left = 328
  Top = 186
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Definição do Juros e Descontos da conta'
  ClientHeight = 178
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPagar: TPanel
    Left = 0
    Top = 0
    Width = 289
    Height = 141
    TabOrder = 0
    object Label1: TLabel
      Left = 179
      Top = 94
      Width = 35
      Height = 13
      Caption = 'Juros:'
      FocusControl = dbeVLJURO
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
      Top = 94
      Width = 65
      Height = 13
      Caption = 'Descontos:'
      FocusControl = dbeVLDESC
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 9
      Top = 14
      Width = 60
      Height = 13
      Caption = 'N.º Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 9
      Top = 33
      Width = 62
      Height = 13
      Caption = 'Descrição:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 3
      Top = 53
      Width = 69
      Height = 13
      Caption = 'Data Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 151
      Top = 53
      Width = 62
      Height = 13
      Caption = 'Data Vcto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 37
      Top = 72
      Width = 34
      Height = 13
      Caption = 'Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object txtNRCONT: TDBText
      Left = 75
      Top = 14
      Width = 57
      Height = 13
      AutoSize = True
      DataField = 'PAG_NRCOMP'
      DataSource = dsContaPagar
      Transparent = True
    end
    object txtNMDESC: TDBText
      Left = 75
      Top = 33
      Width = 57
      Height = 13
      AutoSize = True
      DataField = 'PAG_NMDESC'
      DataSource = dsContaPagar
      Transparent = True
    end
    object txtDTCONT: TDBText
      Left = 75
      Top = 53
      Width = 56
      Height = 13
      AutoSize = True
      DataField = 'PAG_DTCOMP'
      DataSource = dsContaPagar
      Transparent = True
    end
    object txtDTVENC: TDBText
      Left = 219
      Top = 53
      Width = 55
      Height = 13
      AutoSize = True
      DataField = 'PAG_DTVENC'
      DataSource = dsContaPagar
      Transparent = True
    end
    object txtVLPARC: TDBText
      Left = 75
      Top = 72
      Width = 65
      Height = 17
      DataField = 'PAG_VLPARC'
      DataSource = dsContaPagar
    end
    object dbeVLJURO: TDBEdit
      Left = 215
      Top = 90
      Width = 64
      Height = 21
      DataField = 'PAG_VLJURO'
      DataSource = dsContaPagar
      TabOrder = 1
    end
    object dbeVLDESC: TDBEdit
      Left = 72
      Top = 90
      Width = 64
      Height = 21
      DataField = 'PAG_VLDESC'
      DataSource = dsContaPagar
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 143
    Width = 594
    Height = 35
    Align = alBottom
    TabOrder = 1
    object btOK: TBitBtn
      Left = 126
      Top = 6
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = btOKClick
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 206
      Top = 6
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object pnlReceber: TPanel
    Left = 291
    Top = 0
    Width = 303
    Height = 143
    Align = alRight
    TabOrder = 2
    object Label8: TLabel
      Left = 5
      Top = 14
      Width = 75
      Height = 13
      Caption = 'N.º Receber:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 82
      Top = 14
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'PRE_CDPRES'
      DataSource = dsReceber
      Transparent = True
    end
    object Label9: TLabel
      Left = 15
      Top = 33
      Width = 62
      Height = 13
      Caption = 'Descrição:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 82
      Top = 33
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'PRE_NMDESC'
      DataSource = dsReceber
      Transparent = True
    end
    object Label10: TLabel
      Left = 9
      Top = 53
      Width = 69
      Height = 13
      Caption = 'Data Conta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 82
      Top = 53
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'PRE_DTCADA'
      DataSource = dsReceber
      Transparent = True
    end
    object Label11: TLabel
      Left = 43
      Top = 72
      Width = 34
      Height = 13
      Caption = 'Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText4: TDBText
      Left = 82
      Top = 72
      Width = 65
      Height = 17
      DataField = 'PRE_TOTAL'
      DataSource = dsReceber
    end
    object Label12: TLabel
      Left = 151
      Top = 53
      Width = 62
      Height = 13
      Caption = 'Data Vcto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText5: TDBText
      Left = 219
      Top = 53
      Width = 42
      Height = 13
      AutoSize = True
      DataField = 'PRE_DTVENC'
      DataSource = dsReceber
      Transparent = True
    end
    object Label13: TLabel
      Left = 12
      Top = 94
      Width = 65
      Height = 13
      Caption = 'Descontos:'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 179
      Top = 94
      Width = 35
      Height = 13
      Caption = 'Juros:'
      FocusControl = dbeVLJURO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 219
      Top = 90
      Width = 64
      Height = 21
      DataSource = dsReceber
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 79
      Top = 90
      Width = 64
      Height = 21
      DataSource = dsReceber
      TabOrder = 0
    end
  end
  object dsContaPagar: TDataSource
    DataSet = dmBD.tbContPagar
    Left = 184
    Top = 8
  end
  object dsReceber: TDataSource
    DataSet = dmBD.tbPrestacoes
    Left = 224
    Top = 8
  end
end
