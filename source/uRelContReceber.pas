unit uRelContReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelContReceber = class(TForm)
    qrContReceber: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
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
    QRLabel9: TQRLabel;
    txtNMRELA: TQRLabel;
    QRLabel10: TQRLabel;
    qryReceber: TQuery;
    tbCliente: TTable;
    tbClienteCLI_CDCLIE: TStringField;
    tbClienteCLI_NMCLIE: TStringField;
    SummaryBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRExpr1: TQRExpr;
    qryReceberPRE_CDPRES: TStringField;
    qryReceberPRE_CDCONT: TStringField;
    qryReceberPRE_CDCLIE: TStringField;
    qryReceberPRE_CDEMPR: TStringField;
    qryReceberPRE_CDIMOV: TStringField;
    qryReceberPRE_NRPRES: TStringField;
    qryReceberPRE_PREST: TSmallintField;
    qryReceberPRE_NMDESC: TStringField;
    qryReceberPRE_CDINDI: TStringField;
    qryReceberPRE_VLANTE: TCurrencyField;
    qryReceberPRE_VLSUBT: TCurrencyField;
    qryReceberPRE_TOTAL: TCurrencyField;
    qryReceberPRE_DTVENC: TDateField;
    qryReceberPRE_DTPAGA: TDateField;
    qryReceberPRE_HORECE: TStringField;
    qryReceberPRE_DIASAT: TFloatField;
    qryReceberPRE_VLPAGO: TCurrencyField;
    qryReceberPRE_NMCLIE: TStringField;
    procedure qryReceberCalcFields(DataSet: TDataSet);
    procedure txtATRASOPrint(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelContReceber: TfrmRelContReceber;

implementation

{$R *.DFM}

procedure TfrmRelContReceber.qryReceberCalcFields(DataSet: TDataSet);
begin
      //qryReceberREC_DIASAT.Value := StrtoInt(FloattoStr(Date()-qryReceberREC_DTVENC.Value));
end;

procedure TfrmRelContReceber.txtATRASOPrint(sender: TObject;
  var Value: String);
begin
  //    If (qryReceberREC_DTRECE.AsString  = ' ') Then
         // txtATRASO.Caption  := FloattoStr(Date()-qryReceberREC_DTVENC.Value);
end;

procedure TfrmRelContReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action:= caFree;
end;

end.
