unit uRelForn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelForn = class(TForm)
    qrForn: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
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
    QRShape1: TQRShape;
    txtEmpresa: TQRLabel;
    QRLabel8: TQRLabel;
    txtUsuario: TQRLabel;
    txtNMRELA: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    qryFornec: TQuery;
    qryFornecFOR_CDFORN: TStringField;
    qryFornecFOR_NMFORN: TStringField;
    qryFornecFOR_RAFORN: TStringField;
    qryFornecFOR_CGCFOR: TStringField;
    qryFornecFOR_ENDERE: TStringField;
    qryFornecFOR_BAIRRO: TStringField;
    qryFornecFOR_NRFONE: TStringField;
    qryFornecFOR_FAXFOR: TStringField;
    qryFornecFOR_NRRAMA: TStringField;
    qryFornecFOR_NRTELE: TStringField;
    qryFornecFOR_CIDADE: TStringField;
    qryFornecFOR_UFFORN: TStringField;
    qryFornecFOR_CEPFOR: TStringField;
    qryFornecFOR_INESTA: TStringField;
    txtNMRELA1: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRSysData3: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelForn: TfrmRelForn;

implementation

{$R *.DFM}

end.
