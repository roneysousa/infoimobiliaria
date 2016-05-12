unit uRelCorrInd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelCorrecaoIndices = class(TForm)
    qrImovel: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    txtEmpresa: TQRLabel;
    QRLabel8: TQRLabel;
    txtUsuario: TQRLabel;
    txtNMRELA: TQRLabel;
    txtNMRELA1: TQRLabel;
    QRLabel11: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    qryCorrIndices: TQuery;
    qryCorrIndicesCOR_NRCORR: TStringField;
    qryCorrIndicesCOR_CDINDI: TStringField;
    qryCorrIndicesCOR_VLPERC: TCurrencyField;
    qryCorrIndicesCOR_VLCORR: TCurrencyField;
    qryCorrIndicesCOR_VLJURO: TCurrencyField;
    qryCorrIndicesCOR_PEJURO: TCurrencyField;
    qryCorrIndicesCOR_PEINIC: TDateField;
    qryCorrIndicesCOR_PEFINA: TDateField;
    tbIndices: TTable;
    tbIndicesIND_CDINDI: TStringField;
    tbIndicesIND_NMDESC: TStringField;
    qryCorrIndicesCOR_NMDESC: TStringField;
    qryCorrIndicesCOR_DTCORR: TDateField;
    qryCorrIndicesCOR_MES: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCorrecaoIndices: TfrmRelCorrecaoIndices;

implementation

{$R *.DFM}

procedure TfrmRelCorrecaoIndices.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

end.
