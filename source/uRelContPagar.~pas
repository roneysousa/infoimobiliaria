unit uRelContPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelContPagar = class(TForm)
    qrContPagar: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
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
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    txtEmpresa: TQRLabel;
    QRLabel8: TQRLabel;
    txtUsuario: TQRLabel;
    legNMRELA: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    txtNMRELA: TQRLabel;
    qryPagar: TQuery;
    qryPagarPAG_CDCOMP: TStringField;
    qryPagarPAG_NRCOMP: TStringField;
    qryPagarPAG_CDLOJA: TStringField;
    qryPagarPAG_NRPEDI: TStringField;
    qryPagarPAG_NRPARC: TStringField;
    qryPagarPAG_DTCOMP: TDateField;
    qryPagarPAG_DTVENC: TDateField;
    qryPagarPAG_DTPAGA: TDateField;
    qryPagarPAG_CDFORN: TStringField;
    qryPagarPAG_TMGARA: TStringField;
    qryPagarPAG_NRNOTA: TStringField;
    qryPagarPAG_NRSERI: TStringField;
    qryPagarPAG_CDNATU: TStringField;
    qryPagarPAG_NMDESC: TStringField;
    qryPagarPAG_VLCOMP: TCurrencyField;
    qryPagarPAG_VLPARC: TCurrencyField;
    qryPagarPAG_VLJURO: TCurrencyField;
    qryPagarPAG_VLDESC: TCurrencyField;
    qryPagarPAG_VLDEAN: TCurrencyField;
    qryPagarPAG_FLSITU: TStringField;
    qryPagarPAG_CDUSUA: TStringField;
    qryPagarPAG_CDPAGA: TStringField;
    qryPagarPAG_CDBANC: TStringField;
    qryPagarPAG_NRAGEN: TStringField;
    qryPagarPAG_NRCONT: TStringField;
    qryPagarPAG_NRCHEQ: TStringField;
    qryPagarPAG_ANOTAC: TMemoField;
    qryPagarPAG_FLPRED: TBooleanField;
    qryPagarPAG_DTPRED: TDateField;
    tbForn: TTable;
    tbFornFOR_CDFORN: TStringField;
    tbFornFOR_NMFORN: TStringField;
    qryPagarPAG_NMFORN: TStringField;
    qryPagarPAG_DIASAT: TIntegerField;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel11: TQRLabel;
    QRSysData3: TQRSysData;
    qryPagarPAG_QTDIAS: TFloatField;
    procedure qryPagarCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelContPagar: TfrmRelContPagar;

implementation

{$R *.DFM}

procedure TfrmRelContPagar.qryPagarCalcFields(DataSet: TDataSet);
begin
     qryPagarPAG_DIASAT.Value := StrtoInt((FloattoStr(Date()-qryPagarPAG_DTVENC.Value))); 
end;

procedure TfrmRelContPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Action := caFree;
end;

end.
