object frmSeleCliente: TfrmSeleCliente
  Left = 276
  Top = 203
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Selecione o Cliente'
  ClientHeight = 321
  ClientWidth = 648
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
    Width = 648
    Height = 41
    Align = alTop
    TabOrder = 0
    object edtPesquisa: TEdit
      Left = 3
      Top = 10
      Width = 640
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 648
    Height = 239
    Align = alClient
    TabOrder = 1
    object GridClientes: TDBGrid
      Left = 1
      Top = 1
      Width = 646
      Height = 237
      Align = alClient
      DataSource = dsClientContrato
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = GridClientesCellClick
      OnDblClick = btOkClick
      OnKeyDown = GridClientesKeyDown
      OnKeyPress = GridClientesKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CTC_CDCONT'
          Title.Caption = 'CÓD.CONTRATO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTC_NMCLIE'
          Title.Caption = 'CLIENTE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTC_NMEMPR'
          Title.Caption = 'EMPREENDIMENTO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 280
    Width = 648
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btOk: TBitBtn
      Left = 566
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = btOkClick
      Kind = bkOK
    end
  end
  object dsClientContrato: TDataSource
    DataSet = dmBD.tbContratos
    Left = 432
    Top = 80
  end
end
