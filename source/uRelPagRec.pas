unit uRelPagRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, DBTables;

type
  TfrmRelPagRec = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    txtEmpresa: TQRLabel;
    txtUsuario: TQRLabel;
    QRLabel8: TQRLabel;
    txtNMRELA: TQRLabel;
    legNMRELA: TQRLabel;
    QRShape1: TQRShape;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    qryPagar: TQuery;
    qryReceber: TQuery;
    qryPagarPAG_CDCOMP: TStringField;
    qryPagarPAG_NRCOMP: TStringField;
    qryPagarPAG_DTCOMP: TDateField;
    qryPagarPAG_DTVENC: TDateField;
    qryPagarPAG_DTPAGA: TDateField;
    qryPagarPAG_VLCOMP: TCurrencyField;
    qryPagarPAG_VLPARC: TCurrencyField;
    qryReceberREC_NRRECE: TStringField;
    qryReceberREC_DTCADA: TDateField;
    qryReceberREC_DTVENC: TDateField;
    qryReceberREC_DTRECE: TDateField;
    qryReceberREC_VLTOTA: TCurrencyField;
    qryReceberREC_VLPARC: TCurrencyField;
    DetailBand1: TQRBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPagRec: TfrmRelPagRec;

implementation

{$R *.DFM}

procedure TfrmRelPagRec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Action := caFree;
end;

end.
