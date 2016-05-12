unit uDescJuros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, Mask, DBCtrls;

type
  TfrmDescJuros = class(TForm)
    pnlPagar: TPanel;
    Panel2: TPanel;
    btOK: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    dbeVLJURO: TDBEdit;
    dsContaPagar: TDataSource;
    Label2: TLabel;
    dbeVLDESC: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    txtNRCONT: TDBText;
    txtNMDESC: TDBText;
    txtDTCONT: TDBText;
    txtDTVENC: TDBText;
    txtVLPARC: TDBText;
    dsReceber: TDataSource;
    pnlReceber: TPanel;
    Label8: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText2: TDBText;
    Label10: TLabel;
    DBText3: TDBText;
    Label11: TLabel;
    DBText4: TDBText;
    Label12: TLabel;
    DBText5: TDBText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDescJuros: TfrmDescJuros;
  M_JANELA : String;

implementation

uses uBD, Funcoes;

{$R *.DFM}

procedure TfrmDescJuros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmDescJuros.btOKClick(Sender: TObject);
var
    M_VLDESC,M_VLJURO,M_VLPARC, M_VALOR :Double;
begin
     Try
       If (M_JANELA = 'PAGAR') Then
       begin
            dmBD.tbContPagar.Edit;
            M_VLDESC := dmBD.tbContPagarPAG_VLDESC.Value;
            M_VLJURO := dmBD.tbContPagarPAG_VLJURO.Value;
            M_VLPARC := dmBD.tbContPagarPAG_VLPARC.Value;
            M_VALOR  := (M_VLPARC-Funcoes.Gerapercentual(M_VLPARC,M_VLDESC))
                     +Funcoes.Gerapercentual(M_VLPARC,M_VLJURO);
            dmBD.tbContPagarPAG_VLPARC.Value := M_VALOR;
           dmBD.tbContPagar.Post;
       End;
       //
       If (M_JANELA = 'RECEBER') Then
       begin
            dmBD.tbContReceber.Edit;
            M_VLDESC := dmBD.tbContReceberREC_VLDESC.Value;
            M_VLJURO := dmBD.tbContReceberREC_VLJURO.Value;
            M_VLPARC := dmBD.tbContReceberREC_VLPARC.Value;
            M_VALOR  := (M_VLPARC-Funcoes.Gerapercentual(M_VLPARC,M_VLDESC))
                     +Funcoes.Gerapercentual(M_VLPARC,M_VLJURO);
            dmBD.tbContReceberREC_VLPARC.Value := M_VALOR;
           dmBD.tbContReceber.Post;
       End;
     Except
           Application.MessageBox('Error ao tentar gravar alterações.',
               'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
     End;
end;

end.
