unit uAditivo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, Buttons, DBCtrls;

type
  TfrmAditivo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtQTPRES: TEdit;
    edtDTVENC: TMaskEdit;
    Label4: TLabel;
    Label7: TLabel;
    edt_VLPRES: TEdit;
    btCalcular: TBitBtn;
    btCriarAditivo: TBitBtn;
    BitBtn2: TBitBtn;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    Label8: TLabel;
    DBText5: TDBText;
    Label9: TLabel;
    DBText6: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtQTPRESKeyPress(Sender: TObject; var Key: Char);
    procedure btCriarAditivoClick(Sender: TObject);
    procedure edtQTPRESExit(Sender: TObject);
    procedure edtDTVENCExit(Sender: TObject);
    procedure btCalcularClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
     procedure Cancela_Prestacoes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAditivo: TfrmAditivo;
  M_SALDO,M_VLPRES : Double;
  M_QTPARC,M_QTPAGA,M_QTPRES:INTEGER;

implementation

uses uBD, uNetImo, Funcoes, uContrato;

{$R *.DFM}

procedure TfrmAditivo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmAditivo.edtQTPRESKeyPress(Sender: TObject; var Key: Char);
begin
  If not( key in['0'..'9',#8] ) then
      key:=#0;
end;

procedure TfrmAditivo.btCriarAditivoClick(Sender: TObject);
Var
    M_CONTA, W_QTATUA : Integer;
    M_CDCONT, M_CDINDI, M_CDPRES: String;
    M_VLCORR,M_PECORR, M_PEJURO: Double;
    M_VLSUBT,M_TOTAL,M_VLJURO : Double;
    M_FLACUM : boolean;
begin
      M_CONTA  := 1;
      M_QTPRES := StrtoInt(edtQTPRES.Text);
      W_QTATUA := M_QTPRES-M_QTPAGA;
      //
      Try
          // Altualizar o contrato do cliente
          dmBD.tbContratos.Locate('CTC_CDCONT',M_CDCONT,[]);
          dmBD.tbContratos.Edit;
          dmBD.tbContratosCTC_FLADIT.Value := True;
          dmBD.tbContratosCTC_QTPRAD.Value := M_QTPRES;
          dmBD.tbContratosCTC_QTADPG.Value := 0;
          dmBD.tbContratosCTC_DTADIT.Value := Date();
          dmBD.tbContratosCTC_VLPRAD.Value := M_VLPRES;
          M_CDCONT := dmBD.tbContratosCTC_CDCONT.Value;
          // Salva as alterações
          dmBD.tbContratos.Post;
          //
          If (dmBD.tbPrestacoes.Active = False) Then
             dmBD.tbPrestacoes.Open;
          dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(M_CDCONT)+' AND PRE_FLSITU='+QuotedStr('A');
          dmBD.tbPrestacoes.Filtered := True;
          dmBD.tbPrestacoes.First;
          dmBD.tbPrestacoes.DisableConstraints;
          //
          dmBD.tbPrestacoes.Edit;
          M_CDINDI := dmBD.tbPrestacoesPRE_CDINDI.Value;
          M_PECORR := dmBD.tbPrestacoesPRE_PECORR.Value;
          M_PEJURO := dmBD.tbPrestacoesPRE_PEJURO.Value;
          M_VLSUBT := dmBD.tbPrestacoesPRE_VLSUBT.Value;
          M_VLJURO := dmBD.tbPrestacoesPRE_VLJURO.Value;
          M_VLCORR := dmBD.tbPrestacoesPRE_VLCORR.Value;
          M_TOTAL  := dmBD.tbPrestacoesPRE_TOTAL.Value;
          M_FLACUM := dmBD.tbPrestacoesPRE_FLJUAC.Value;
          dmBD.tbPrestacoes.cancel;
          // Altualiza prestações abertas       .W_QTATUA
          While not (dmBD.tbPrestacoes.Eof) Do
          begin
               dmBD.tbPrestacoes.Edit;
               dmBD.tbPrestacoesPRE_NRPRES.Value := funcoes.StrZero(InttoStr(M_CONTA),2)+'/'+InttoStr(M_QTPRES);
               dmBD.tbprestacoespre_PREST.Value  := M_CONTA;
               dmBD.tbPrestacoesPRE_VLPRES.Value := M_VLPRES;
               dmBD.tbPrestacoesPRE_VLANTE.Value := M_VLPRES;
               dmBD.tbPrestacoesPRE_VLSUBT.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,dmBD.tbPrestacoesPRE_PECORR.Value));
               dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLJURO;
               dmBD.tbPrestacoesPRE_TOTAL.Value  := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value);
               dmBD.tbPrestacoesPRE_DTCADA.Value := Date();
               dmBD.tbPrestacoesPRE_DTVENC.Value := IncMonth(StrtoDate(edtDTVENC.Text),M_CONTA);
               dmBD.tbPrestacoesPRE_FLSITU.Value := 'A';
               dmBD.tbPrestacoesPRE_CDUSUA.Value := uNetImo.M_CDUSUA;
               dmBD.tbPrestacoesPRE_FLADIT.Value := True;
               dmBD.tbPrestacoesPRE_VLPRAD.Value := M_VLPRES;
               dmBD.tbPrestacoesPRE_PRADIT.Value := M_QTPRES;
               dmBD.tbPrestacoesPRE_DTADIT.Value := Date();
               dmBD.tbPrestacoesPRE_DTVCAD.Value := StrtoDate(edtDTVENC.text);
               M_CDPRES := dmBD.tbPrestacoesPRE_CDPRES.Value;
               // Atualiza conta a receber
               If (dmBD.tbContReceber.Active=False) Then
                   dmBD.tbContReceber.Open;
               //
               If (dmBD.tbContReceber.Locate('REC_CDPRES',M_CDPRES,[])) Then
               begin
                   dmBD.tbContReceber.Edit;
                    If (dmBD.tbPrestacoesPRE_FLJUAC.Value = True) Then
                    begin
                         dmBD.tbContReceberREC_VLPARC.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLSUBT.Value);
                         dmBD.tbContReceberREC_VLJURO.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLJURO.Value);
                         dmBD.tbContReceberREC_VLDEBI.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLSUBT.Value);
                         dmBD.tbContReceberREC_VLTOTA.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLSUBT.Value);
                    End
                    Else
                    Begin
                         dmBD.tbContReceberREC_VLPARC.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_TOTAL.Value);
                         dmBD.tbContReceberREC_VLJURO.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLJURO.Value);
                         dmBD.tbContReceberREC_VLDEBI.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_TOTAL.Value);
                         dmBD.tbContReceberREC_VLTOTA.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_TOTAL.Value);
                    End;
                    //
                     dmBD.tbContReceberREC_VLDESC.Value := 0;
                    //
                    dmBD.tbContReceber.Post;
               End;
               //
               dmBD.tbPrestacoes.Next;          // Proximo registro
               M_CONTA := M_CONTA + 1;
          End;         // Fim-do-Enquato
          // Incluir novas prestações
          While M_CONTA <= M_QTPRES Do
          begin
               //
               dmBD.tbParametros.Edit;
               dmBD.tbParametrosPAR_CDPRES.Value := dmBD.tbParametrosPAR_CDPRES.Value+1;
               dmBD.tbParametros.Post;
               //
               dmBD.tbPrestacoes.Append;
               dmBD.tbPrestacoesPRE_CDPRES.Value := Funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDPRES.Value),13);
               dmBD.tbPrestacoesPRE_CDCONT.Value := dmBD.tbContratosCTC_CDCONT.Value;
               dmBD.tbPrestacoesPRE_CDEMPR.Value := dmBD.tbContratosCTC_CDEMPR.Value;
               dmBD.tbPrestacoesPRE_CDCLIE.Value := dmBD.tbContratosCTC_CDCLIEN.Value;
               dmBD.tbPrestacoesPRE_CDIMOV.Value := dmBD.tbContratosCTC_CDIMOV.Value;
               dmBD.tbPrestacoesPRE_NRPRES.Value := funcoes.StrZero(InttoStr(M_CONTA),2)+'/'+InttoStr(M_QTPRES);
               dmBD.tbprestacoespre_PREST.Value  := M_CONTA;
               dmBD.tbPrestacoesPRE_VLIMOV.Value := dmBD.tbContratosCTC_VLIMOV.Value;
               dmBD.tbPrestacoesPRE_VLPRES.Value := M_VLPRES;
               dmBD.tbPrestacoesPRE_VLANTE.Value := M_VLPRES;
               dmBD.tbPrestacoesPRE_CDINDI.Value := M_CDINDI;
               dmBD.tbPrestacoesPRE_PECORR.Value := M_PECORR;
               dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
               dmBD.tbPrestacoesPRE_PEJURO.Value := M_PEJURO;
               dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLJURO;
               dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
               dmBD.tbPrestacoesPRE_TOTAL.Value  := M_TOTAL;
               dmBD.tbPrestacoesPRE_DTCADA.Value := Date();
               dmBD.tbPrestacoesPRE_DTVENC.Value := IncMonth(StrtoDate(edtDTVENC.Text),M_CONTA);
               dmBD.tbPrestacoesPRE_CDINDI.Value := dmBD.tbContratosCTC_INDENT.Value;
               dmBD.tbPrestacoesPRE_FLJUAC.Value := M_FLACUM;
               dmBD.tbPrestacoesPRE_FLSITU.Value := 'A';
               dmBD.tbPrestacoesPRE_FLADIT.Value := True;
               dmBD.tbPrestacoesPRE_VLPRAD.Value := M_VLPRES;
               dmBD.tbPrestacoesPRE_PRADIT.Value := M_QTPRES;
               dmBD.tbPrestacoesPRE_DTADIT.Value := Date();
               dmBD.tbPrestacoesPRE_DTVCAD.Value := StrtoDate(edtDTVENC.text);
               dmBD.tbPrestacoesPRE_CDUSUA.Value := uNetImo.M_CDUSUA;
               dmBD.tbPrestacoes.Post;
               //
               // incluir nova conta a receber
               dmBD.tbParametros.edit;
               dmBD.tbParametrosPAR_NRSEQU.Value := dmBD.tbParametrosPAR_NRSEQU.Value+1;
               dmBD.tbParametrosPAR_NRRECE.Value := dmBD.tbParametrosPAR_NRRECE.Value+1;
               dmBD.tbParametros.Post;
               //
               dmBD.tbContReceber.Append;
               dmBD.tbContReceberREC_NRRECE.Value := funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_NRRECE.Value),13);
               dmBD.tbContReceberREC_NRSEQU.Value := funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_NRSEQU.Value),10);
               dmBD.tbContReceberREC_CDCONT.Value := dmBD.tbPrestacoesPRE_CDCONT.Value;
               dmBD.tbContReceberREC_CDPRES.Value := dmBD.tbPrestacoesPRE_CDPRES.Value;
               dmBD.tbContReceberREC_CDEMPR.Value := dmBD.tbContratosCTC_CDEMPR.Value;
               dmBD.tbContReceberREC_CDLOJA.Value := '001';
               dmBD.tbContReceberREC_CDCLIE.Value := dmBD.tbContratosCTC_CDCLIEN.Value;
               dmBD.tbContReceberREC_NRPARC.Value := Funcoes.StrZero(InttoStr(M_CONTA),2);
               dmBD.tbContReceberREC_NMDESC.Value := 'PRESTAÇÃO '+Funcoes.StrZero(InttoStr(M_CONTA),2)+' DE '+InttoStr(dmBD.tbContratosCTC_QTPRES.Value);
               dmBD.tbContReceberREC_VLPARC.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLPRES.Value);
               dmBD.tbContReceberREC_VLDEBI.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLPRES.Value);
               dmBD.tbContReceberREC_VLTOTA.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLIMOV.Value);
               dmBD.tbContReceberREC_VLDESC.Value := 0;
               dmBD.tbContReceberREC_VLJURO.Value := 0;
               dmBD.tbContReceberREC_FLRECE.Value := 'A';
               dmBD.tbContReceberREC_DTCADA.Value := Date();
               dmBD.tbContReceberREC_DTVENC.Value := dmBD.tbPrestacoesPRE_DTVENC.Value;
               dmBD.tbContReceberREC_CDUSUA.Value := uNetImo.M_CDUSUA;
               dmBD.tbContReceber.Post;
               //
               M_CONTA := M_CONTA + 1;
          End;         // Fim-do-Enquato
          //  Libera o filtro
          dmBD.tbPrestacoes.Filtered := False;
          dmBD.tbPrestacoes.EnableConstraints;
          dmBD.tbPrestacoes.Close;
          //
          Application.MessageBox('Prestações de aditivo criadas com sucesso.', 'CONCLUÍDO',
                     MB_OK+MB_ICONINFORMATION);
      Except
            Application.MessageBox('Error ao tentar criar prestações do cliente.', 'ERROR',
                      MB_OK+MB_ICONINFORMATION);
            dmBD.tbPrestacoes.Cancel;
      End;
end;

procedure TfrmAditivo.edtQTPRESExit(Sender: TObject);
begin
     If funcoes.Empty(edtQTPRES.Text) Then
     begin
          ShowMessage('Digite a quantidade de prestações.');
          edtQTPRES.SetFocus;
          Exit;
     End;
end;

procedure TfrmAditivo.edtDTVENCExit(Sender: TObject);
begin
    Try
        StrToDate(edtDTVENC.Text);
    Except
        on EConvertError do
        begin
             ShowMessage('Data Inválida!');
             edtDTVENC.SetFocus;
        End;
   end;
end;

procedure TfrmAditivo.btCalcularClick(Sender: TObject);
begin
     M_QTPRES := StrtoInt(edtQTPRES.Text);
     M_VLPRES := M_SALDO/M_QTPRES;
     //
     edt_VLPRES.Text :=  FloatToStrF(M_VLPRES,ffFixed,15,2);
end;

procedure TfrmAditivo.FormActivate(Sender: TObject);
begin
//    lbl_SALDO.Caption := FloattoStr(M_SALDO);
end;

procedure TfrmAditivo.Cancela_Prestacoes;
Var
    M_CDCLIE,W_CDCONT : String;
begin
    //
{    W_CDCONT := dmBD.tbPrestacoesPRE_CDCONT.Value;
    M_CDCLIE := dmBD.tbPrestacoesPRE_CDCLIE.Value;
    //
    dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(W_CDCONT)+' AND PRE_CDCLIE='+QuotedStr(M_CDCLIE)+' AND PRE_FLSITU='+QuotedStr('A');
    dmBD.tbPrestacoes.Filter   := 'PRE_FLSITU='+QuotedStr('A');
    dmBD.tbPrestacoes.Filtered :=  True;}
    dmBD.tbPrestacoes.DisableConstraints;
    dmBD.tbPrestacoes.First;
    While not (dmBD.tbPrestacoes.Eof) Do
    begin
         If (dmBD.tbPrestacoesPRE_FLSITU.Value = 'A') Then
         begin
               dmBD.tbPrestacoes.Edit;
               dmBD.tbPrestacoesPRE_FLSITU.Value := 'C';
               dmBD.tbPrestacoes.Post;
          End;
         dmBD.tbPrestacoes.Next;
    End;         // Fim-do-Enquato
    //
    dmBD.tbPrestacoes.EnableConstraints;
//    dmBD.tbPrestacoes.Filtered :=  False;
end;

end.
