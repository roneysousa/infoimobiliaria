unit uRelRecEmp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TfrmRelRecEmp = class(TForm)
    qrContPagar: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
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
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    txtEmpresa: TQRLabel;
    QRLabel8: TQRLabel;
    txtUsuario: TQRLabel;
    legNMRELA: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    txtNMRELA: TQRLabel;
    QRLabel10: TQRLabel;
    qryRecEmp: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRecEmp: TfrmRelRecEmp;

implementation

{$R *.DFM}

end.
