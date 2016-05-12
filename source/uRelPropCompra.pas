unit uRelPropCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelPropCompra = class(TForm)
    qrPropCompra: TQuickRep;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    qryContrato: TQuery;
    txtEmpresa: TQRLabel;
    txtUsuario: TQRLabel;
    txtNMRELA: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
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
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRDBText21: TQRDBText;
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
    QRLabel26: TQRLabel;
    QRMemo1: TQRMemo;
    QRDBImage1: TQRDBImage;
    QRBand2: TQRBand;
    QRDBText3: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText30: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel52: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel20: TQRLabel;
    QRBand3: TQRBand;
    txtData: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape5: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPropCompra: TfrmRelPropCompra;

implementation

{$R *.DFM}

procedure TfrmRelPropCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

end.
