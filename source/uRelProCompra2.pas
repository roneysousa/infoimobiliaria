unit uRelProCompra2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TfrmProCompra2 = class(TForm)
    qrPropCompra: TQuickRep;
    PageFooterBand1: TQRBand;
    TitleBand1: TQRBand;
    dbImagem: TQRDBImage;
    QRMemo1: TQRMemo;
    QRLabel26: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRLabel1: TQRLabel;
    qryContrato: TQuery;
    qryContratoCTC_CDCONT: TStringField;
    qryContratoCTC_CDEMPR: TStringField;
    qryContratoCTC_CDIMOV: TStringField;
    qryContratoCTC_VLIMOV: TCurrencyField;
    qryContratoCTC_CDCLIEN: TStringField;
    qryContratoCTC_CDINDI: TStringField;
    qryContratoCTC_VLENTR: TCurrencyField;
    qryContratoCTC_DTENTR: TDateField;
    qryContratoCTC_QTBALO: TSmallintField;
    qryContratoCTC_TOBALO: TCurrencyField;
    qryContratoCTC_QTPRES: TSmallintField;
    qryContratoCTC_VLPRES: TCurrencyField;
    qryContratoCTC_DTPRES: TDateField;
    qryContratoCTC_DTCONT: TDateField;
    qryContratoCTC_DTENTG: TDateField;
    qryContratoCTC_INDENT: TStringField;
    qryCliente: TQuery;
    qryClienteCLI_CDCLIE: TStringField;
    qryClienteCLI_NMCLIE: TStringField;
    qryClienteCLI_SEXO: TStringField;
    qryClienteCLI_DTNASC: TDateField;
    qryClienteCLI_NACION: TStringField;
    qryClienteCLI_NATURA: TStringField;
    qryClienteCLI_ENCLIE: TStringField;
    qryClienteCLI_BAIRRO: TStringField;
    qryClienteCLI_NRFONE: TStringField;
    qryClienteCLI_CIDADE: TStringField;
    qryClienteCLI_CEPCLI: TStringField;
    qryClienteCLI_ESTCIV: TStringField;
    qryClienteCLI_CPFCGC: TStringField;
    qryClienteCLI_IDEINS: TStringField;
    qryClienteCLI_NRCGC: TStringField;
    qryClienteCLI_OREMIS: TStringField;
    qryClienteCLI_UFCLIE: TStringField;
    qryClienteCLI_NOMFUN: TStringField;
    QRLabel42: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    txtData: TQRLabel;
    QRShape9: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    tbIndice: TTable;
    tbIndiceIND_CDINDI: TStringField;
    tbIndiceIND_NMDESC: TStringField;
    qryContratoCTC_NMIND2: TStringField;
    qryContratoCTC_NMIND1: TStringField;
    QRLabel4: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    qryContratoCTC_VLCHAV: TCurrencyField;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText33: TQRDBText;
    qryContratoCTC_DTVENC: TDateField;
    QRMemo2: TQRMemo;
    qryContratoCTC_DTPREE: TDateField;
    qrl_VLUNBA: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    qryContratoCTC_TPIMOV: TStringField;
    QRDBText34: TQRDBText;
    qrl_Empreed: TQRLabel;
    qrl_Endereco: TQRLabel;
    qrl_Numero: TQRLabel;
    qrl_Bairro: TQRLabel;
    QRShape19: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProCompra2: TfrmProCompra2;

implementation

Uses uBD;

{$R *.DFM}

end.
