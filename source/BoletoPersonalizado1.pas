unit BoletoPersonalizado1;

interface

uses Classes, Controls, ExtCtrls, QuickRpt, Qrctrls, Graphics;

type
  TrepBoletoPersonalizado = class(TQuickRep)
    PageFooterBand1: TQRBand;
    imgFichaCompensacao: TQRImage;
    QRImage3: TQRImage;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    txtCodigoBarras: TQRLabel;
    txtNossoNumero1: TQRLabel;
    QRLabel13: TQRLabel;
    txtAgCdCedente: TQRLabel;
    QRLabel14: TQRLabel;
    txtCdBaixa: TQRLabel;
    txtCPF: TQRLabel;
    QRLabel15: TQRLabel;
    txtMoeda: TQRLabel;
    txtInstrucoes2: TQRMemo;
    txtCarteira2: TQRLabel;
    txtValor2: TQRLabel;
    QRDBText22: TQRDBText;
    qrlVencimento: TQRLabel;
    qrlAgenCodCen: TQRLabel;
    qrlNossoNum: TQRLabel;
    qrlValor: TQRLabel;
    qrlDescoAbat: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape3: TQRShape;
    imgCodeBarras: TQRImage;
    QRLabel36: TQRLabel;
    QRImage5: TQRImage;
    QRImage6: TQRImage;
    QRImage8: TQRImage;
    QRImage7: TQRImage;
    QRImage9: TQRImage;
    QRImage10: TQRImage;
    QRImage11: TQRImage;
    QRImage4: TQRImage;
    QRImage12: TQRImage;
    QRImage13: TQRImage;
    QRImage14: TQRImage;
    QRImage15: TQRImage;
    QRImage16: TQRImage;
    QRImage17: TQRImage;
    QRImage18: TQRImage;
    QRImage19: TQRImage;
    QRImage20: TQRImage;
    TitleBand1: TQRBand;
    txtCedenteEndereco: TQRMemo;
    lblSacado: TQRLabel;
    txtSacado: TQRMemo;
    QRLabel1: TQRLabel;
    QRMemo1: TQRMemo;
    txtMovimentacao1: TQRMemo;
    txtVenc: TQRMemo;
    QRMemo4: TQRMemo;
    lblDataVencimento: TQRLabel;
    lblValor: TQRLabel;
    txtValor: TQRLabel;
    QRMemo3: TQRMemo;
    QRLabel2: TQRLabel;
    txtNossoNumero: TQRLabel;
    QRLabel3: TQRLabel;
    txtNumeroDoc: TQRLabel;
    QRMemo5: TQRMemo;
    QRImage1: TQRImage;
    txtSuperior: TQRMemo;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRMemo6: TQRMemo;
    QRDBText16: TQRDBText;
    QRSysData2: TQRSysData;
    QRDBText17: TQRDBText;
    QRMemo9: TQRMemo;
    QRLabel6: TQRLabel;
    QRMemo10: TQRMemo;
    QRLabel7: TQRLabel;
    QRMemo11: TQRMemo;
    QRLabel9: TQRLabel;
    QRMemo12: TQRMemo;
    QRLabel10: TQRLabel;
    txtInstrucoes: TQRMemo;
    txtAgeCedente: TQRLabel;
    txtMovimentacao: TQRMemo;
    txtDebitoPer: TQRLabel;
    txtPagamentoM: TQRLabel;
    txtSaldoAnt: TQRLabel;
    txtCreditoPg: TQRLabel;
    txtSaldoRest: TQRLabel;
    txtCarteira: TQRLabel;
    QRShape1: TQRShape;
    QRImage2: TQRImage;
    QRShape2: TQRShape;
    txtDebito: TQRMemo;
    txtCretido: TQRMemo;
    qrlRecortar: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  repBoletoPersonalizado: TrepBoletoPersonalizado;

implementation

uses uBD;

{$R *.DFM}

procedure TrepBoletoPersonalizado.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  //  repBoletoPersonalizado.Page.PaperSize := ListaBoletos.frmTitulosLista.cPaperSize;
end;

end.
