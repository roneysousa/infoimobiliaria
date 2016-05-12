unit uFormReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, Db;

type
  TfrmFormReceb = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    lbl_Forma: TLabel;
    btDinheiro: TBitBtn;
    btCheque: TBitBtn;
    dsReceber: TDataSource;
    dsBancos: TDataSource;
    pnlCheque: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dbeAgencia: TDBEdit;
    dbeNRCONT: TDBEdit;
    dbeNRCHEQ: TDBEdit;
    chbPRED: TDBCheckBox;
    dbeDTPRED: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    dbeVLCHEQ: TDBEdit;
    btConfirmar: TBitBtn;
    btFechar: TBitBtn;
    DBText2: TDBText;
    Label10: TLabel;
    pnlDinheiro: TPanel;
    Label8: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    dbeVLPAGO: TDBEdit;
    edtVLPAGO: TEdit;
    edtVLPAGO2: TEdit;
    dsPrestacoes: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btDinheiroClick(Sender: TObject);
    procedure btChequeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure chbPREDClick(Sender: TObject);
    procedure dbeVLPAGOKeyPress(Sender: TObject; var Key: Char);
    procedure dbeVLPAGOExit(Sender: TObject);
    procedure dbeVLCHEQExit(Sender: TObject);
    procedure dbeAgenciaExit(Sender: TObject);
    procedure dbeNRCHEQExit(Sender: TObject);
    procedure edtVLPAGOKeyPress(Sender: TObject; var Key: Char);
    procedure edtVLPAGOExit(Sender: TObject);
    procedure edtVLPAGO2Exit(Sender: TObject);
    procedure edtVLPAGO2KeyPress(Sender: TObject; var Key: Char);
    procedure dbeNRCONTKeyPress(Sender: TObject; var Key: Char);
  private
    procedure RECEBER_PARCIAL;
    procedure DINHEIRO;
    procedure CHEQUE;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormReceb: TfrmFormReceb;
  M_FLCHEQ, M_FLPARC : String;
  M_SALDEV : Double;

implementation

uses uBD,uNetImo, funcoes;

{$R *.DFM}

procedure TfrmFormReceb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbBancos.Close;
     dmBD.tbClientes.Close;
     dmBD.tbCheques.Close;
     dmBD.tbCheqCli.Close;
     dmBD.tbParametros.Close;
     //
     Action := caFree;
end;

procedure TfrmFormReceb.btDinheiroClick(Sender: TObject);
begin
     // Em Dinheiro
     dmBD.tbPrestacoesPRE_CDMODA.Value := '01';
     lbl_Forma.Caption  := 'Escolha o Tipo do Pagamento: - DINHEIRO';
     pnlDinheiro.Align  := alClient; 
     pnlDinheiro.Visible:= True;
     pnlCheque.Visible  := False;
     dbeVLPAGO.Enabled  := True;
     //dbeVLPAGO.SetFocus;
     edtVLPAGO.SetFocus;
     btConfirmar.Enabled := True;
end;

procedure TfrmFormReceb.btChequeClick(Sender: TObject);
begin
     // Em Cheque
     dmBD.tbPrestacoesPRE_CDMODA.Value := '02';
     lbl_Forma.Caption := 'Escolha o Tipo do Pagamento: - CHEQUE';
     pnlDinheiro.Visible := False;
     pnlCheque.Visible   := True;
     dbeVLPAGO.Enabled   := False;
     pnlCheque.Align     := alClient;
     DBLookupComboBox1.SetFocus;
     btConfirmar.Enabled := True;
     M_FLCHEQ := 'S';
end;

procedure TfrmFormReceb.FormActivate(Sender: TObject);
begin
      If (dmBD.tbBancos.Active = False) Then
          dmBD.tbBancos.open;
      If (dmBD.tbClientes.Active = False) Then
          dmBD.tbClientes.Open;
      If (dmBD.tbCheques.Active = False) Then
          dmBD.tbCheques.Open;
      If (dmBD.tbCheqCli.Active = False) Then
          dmBD.tbCheqCli.Open;
      If (dmBD.tbParametros.Active = False) Then
          dmBD.tbParametros.Open;
      //
      btConfirmar.Enabled := False;
      If not(dsPrestacoes.State in [dsEdit]) Then
          dmBD.tbPrestacoes.Edit;
      //
      M_FLPARC := 'N';
      //
      dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value;
      dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_TOTAL_CALC.Value;
end;

procedure TfrmFormReceb.btFecharClick(Sender: TObject);
begin
     If (dsPrestacoes.State in [dsEdit]) Then
       dmBD.tbPrestacoes.Cancel;
end;

procedure TfrmFormReceb.btConfirmarClick(Sender: TObject);
begin
     Try
         //  Gravar recebimento.
         If not (dsPrestacoes.State in [dsEdit]) then
            dmBD.tbPrestacoes.Edit;
         //
         If (dmBD.tbPrestacoesPRE_CDMODA.Value = '01') then
         Begin
               dmBD.tbPrestacoesPRE_VLPAGO.Value := StrtoFloat(edtVLPAGO.text);
               //
               If (dmBD.tbPrestacoesPRE_VLPAGO.Value>=dmBD.tbPrestacoesPRE_TOTAL.Value) Then
                      DINHEIRO
               Else
                   If pnlDinheiro.Visible = tRUE tHEN
                   begin
                        edtVLPAGO.SetFocus;
                        Exit;
                   End;
         End;
         //
         If (dmBD.tbPrestacoesPRE_CDMODA.Value = '02') then
         begin
             If funcoes.Empty(dbeVLCHEQ.Text) Then
             begin
                  ShowMessage('Digite a valor pago!!!');
                  dbeVLCHEQ.SetFocus;
                 Exit;
             End
             Else
             begin
                  If (dmBD.tbPrestacoesPRE_VLPAGO.Value>=dmBD.tbPrestacoesPRE_TOTAL.Value) Then
                       CHEQUE
                  Else
                      If pnlCheque.Visible = tRUE tHEN
                      begin
                           dbeVLCHEQ.SetFocus;
                           eXIT;
                      End;
             End;
         End;
         //
     Except
         Application.MessageBox('Error no Recebimento de Conta.',
                                'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
     End;
end;

procedure TfrmFormReceb.chbPREDClick(Sender: TObject);
begin
      If (chbPRED.Checked = True) Then
          dbeDTPRED.Enabled := True
      Else
          dbeDTPRED.Enabled := False;
end;

procedure TfrmFormReceb.dbeVLPAGOKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 then
     begin
          Key := #0;
          {If (dmBD.tbContReceberREC_VLPAGO.Value<dmBD.tbContReceberREC_VLPARC.Value) Then
          begin
              Application.MessageBox('O valor pago deve ser maior ou igual.'+#13
                                    +'valor da prestação.',
                                'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
              dbeVLPAGO.SetFocus;
              Exit;
         End
         Else}
             btConfirmar.SetFocus;
     end;
end;

procedure TfrmFormReceb.dbeVLPAGOExit(Sender: TObject);
begin
     btConfirmar.SetFocus; 
end;

procedure TfrmFormReceb.dbeVLCHEQExit(Sender: TObject);
begin
     btConfirmar.SetFocus;
end;

procedure TfrmFormReceb.dbeAgenciaExit(Sender: TObject);
begin
     dbeAgencia.Text := Funcoes.StrZero(dbeAgencia.Text,5);
end;

procedure TfrmFormReceb.dbeNRCHEQExit(Sender: TObject);
begin
     dbeNRCHEQ.Text := Funcoes.StrZero(dbeNRCHEQ.Text,7);
end;

procedure TfrmFormReceb.RECEBER_PARCIAL;
Var
   M_VLDEBI, M_VLPAGO ,W_VLANTE : Double;
   W_CDCONT, M_CDPRES :String;
begin
      // Pagamento em dinheiro
         //  Gravar recebimento.
         If not (dsReceber.State in [dsEdit]) then
            dmBD.tbContReceber.Edit;
         //
         dmBD.tbContReceberREC_QTDIAS.Value := StrtoInt(FloattoStr(dmBD.tbContReceberREC_DTRECE.Value-dmBD.tbContReceberREC_DTVENC.Value));
         dmBD.tbContReceberREC_VLMODA.Value := dmBD.tbContReceberREC_VLPAGO.Value;
         dmBD.tbContReceberREC_CDUSUA.Value := uNetImo.M_CDUSUA;
         //
         M_VLPAGO := dmBD.tbContReceberREC_VLPAGO.Value;
         M_VLDEBI := dmBD.tbContReceberREC_VLDEBI.Value;
         dmBD.tbContReceber.Post;
         //
        If (dmBD.tbHistorico.Active = False) Then
             dmBD.tbHistorico.Open;
        //
        dmBD.tbHistorico.Append;
        dmBD.tbHistoricoHIS_CDCLIE.Value := dmBD.tbContReceberREC_CDCLIE.Value;
        dmBD.tbHistoricoHIS_CDCONT.Value := dmBD.tbContReceberREC_CDCONT.Value;
        dmBD.tbHistoricoHIS_CDRECE.Value := dmBD.tbContReceberREC_NRRECE.Value;
        dmBD.tbHistoricoHIS_TPPRES.Value := dmBD.tbContReceberREC_TPPRES.Value;
        //dmBD.tbHistoricoHIS_NRPRES.Value := dmBD.tbContReceberREC_NRPARC.Value;
        dmBD.tbHistoricoHIS_DTPAGA.Value := Date();
        dmBD.tbHistoricoHIS_HOPAGA.Value := Time;
        dmBD.tbHistoricoHIS_VLPAGO.Value := dmBD.tbContReceberREC_VLPAGO.Value;
        dmBD.tbHistoricoHIS_VLREST.Value := dmBD.tbContReceberREC_VLPARC.Value-dmBD.tbContReceberREC_VLPAGO.Value;
        dmBD.tbHistoricoHIS_CDMODA.Value := '01';
        dmBD.tbHistoricoHIS_CDUSUA.Value := uNetImo.M_CDUSUA;
        dmBD.tbHistorico.Post;
        //
        M_SALDEV := dmBD.tbHistoricoHIS_VLREST.Value;
        //
         M_CDPRES := dmBD.tbContReceberREC_CDPRES.Value;
         // editar a tabela de parametros
         dmBD.tbParametros.edit;
        { dmBD.tbParametrosPAR_NRSEQU.Value :=
                   dmBD.tbParametrosPAR_NRSEQU.Value+1;}
         dmBD.tbParametrosPAR_NRVEND.Value :=
                   dmBD.tbParametrosPAR_NRVEND.Value+1;
         dmBD.tbParametros.Post;
         // Dá baixa na prestação do cliente
         If (dmBD.tbPrestacoes.Active = False) Then
             dmBD.tbPrestacoes.Open;
         //
         If (dmBD.tbPrestacoes.Locate('PRE_CDPRES',M_CDPRES,[])) Then
         begin
              dmBD.tbPrestacoes.Edit;
              dmBD.tbPrestacoesPRE_DTPAGA.Value := Date();
              dmBD.tbPrestacoesPRE_DIASAT.Value := dmBD.tbPrestacoesPRE_DTPAGA.Value-dmBD.tbPrestacoesPRE_DTVENC.Value;
              dmBD.tbPrestacoesPRE_USAREC.Value := uNetImo.M_CDUSUA;
              dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbcontreceberREC_VLANTE.Value;
              //
              If  (dmBD.tbPrestacoesPRE_FLJUAC.Value = True) Then
                  W_VLANTE := dmBD.tbPrestacoesPRE_VLSUBT.Value
              Else
                  W_VLANTE := dmBD.tbPrestacoesPRE_TOTAL.Value;
          //
              dmBD.tbPrestacoes.Post;
         End
         Else
             ShowMessage('Não encontrado...');
         // se a prestação for um balão
         If (dmBD.tbPrestacoesPRE_TPPRES.Value='B') Then
         Begin
               dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(W_CDCONT)+' AND PRE_FLSITU='+QuotedStr('A')+' AND PRE_TPPRES='+QuotedStr('B');
               dmBD.tbPrestacoes.Filtered := True;
               dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
               dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
               While not (dmBD.tbPrestacoes.Eof) Do
               begin
                    dmBD.tbPrestacoes.Edit;
                    dmBD.tbPrestacoesPRE_VLANTE.Value := W_VLANTE;
                    dmBD.tbPrestacoes.Next;
               End;
         End;
         // se for uma prestação normal
         If (dmBD.tbPrestacoesPRE_TPPRES.Value='P') Then
         Begin
               dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(W_CDCONT)+' AND PRE_FLSITU='+QuotedStr('A')+' AND PRE_TPPRES='+QuotedStr('P');
               dmBD.tbPrestacoes.Filtered := True;
               dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
               dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
               While not (dmBD.tbPrestacoes.Eof) Do
               begin
                    dmBD.tbPrestacoes.Edit;
                    dmBD.tbPrestacoesPRE_VLANTE.Value := W_VLANTE;
                    dmBD.tbPrestacoes.Next;
               End;
         End;
         //
         dmBD.tbPrestacoes.Filtered := False;
         dmBD.tbPrestacoes.EnableConstraints;
         // Atualiza contrato
         dmBD.tbContratos.Open;
         dmBD.tbContratos.FindKey([W_CDCONT]);
         dmBD.tbContratos.Edit;
         //
         dmBD.tbContratosCTC_QTPAGA.Value := dmBD.tbContratosCTC_QTPAGA.Value+1;
         dmBD.tbContratosCTC_VLPAGA.Value := dmBD.tbContratosCTC_VLPAGA.Value+M_VLPAGO;
         dmBD.tbContratosCTC_VLSALD.Value := dmBD.tbContratosCTC_VLIMOV.Value-
                (dmBD.tbContratosCTC_VLENTR.Value+dmBD.tbContratosCTC_VLCHAV.Value+dmBD.tbContratosCTC_TOBALO.Value+dmBD.tbContratosCTC_VLPAGA.Value);
         dmBD.tbContratosCTC_QTADPG.Value := dmBD.tbContratosCTC_QTADPG.Value+1;
         //
         dmBD.tbContratos.Post;
         //
         dmBD.tbContratos.Close;
         //dmBD.tbPrestacoes.Close;
         // Mensagem para o usuário
         Application.MessageBox('Recebimento realizado com sucesso.',
                                'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
         Close;
end;

procedure TfrmFormReceb.edtVLPAGOKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#13,'.',',',#8] ) then
          key:=#0;
     //
     If Key = #13 then
     begin
          Key := #0;
          If Funcoes.Empty (edtVLPAGO.text) Then
          begin
               ShowMessage('Digite o valor a pagar.');
               edtVLPAGO.SetFocus;
          End
          Else
              btConfirmar.SetFocus;
     end;
end;

procedure TfrmFormReceb.edtVLPAGOExit(Sender: TObject);
begin
     If Funcoes.Empty (edtVLPAGO.text) Then
     begin
          ShowMessage('Digite o valor a pagar.');
          edtVLPAGO.SetFocus;
     End
     Else
          btConfirmar.SetFocus;
end;

procedure TfrmFormReceb.DINHEIRO;
Var
   M_VLDEBI, M_VLPAGO ,W_VLANTE : Double;
   W_CDCONT, M_CDPRES, M_TPPRES :String;
   M_ULTVCT : TDate;
begin
      // Pagamento em dinheiro
         //  Gravar recebimento.
         If not (dsPrestacoes.State in [dsEdit]) then
            dmBD.tbPrestacoes.Edit;
         //
         dmBD.tbPrestacoesPRE_DTPAGA.Value := Date();
         dmBD.tbPrestacoesPRE_DIASAT.Value := StrtoInt(FloattoStr(dmBD.TbPrestacoesPRE_DTPAGA.Value-dmBD.tbPrestacoesPRE_DTVENC.Value));
         dmBD.tbPrestacoesPRE_USAREC.Value := uNetImo.M_CDUSUA;
         //
         dmBD.tbPrestacoesPRE_FLSITU.Value := 'P';
         dmBD.tbPrestacoesPRE_HORECE.Value := TimetoStr(Time);
         M_VLPAGO := dmBD.tbPrestacoesPRE_VLPAGO.Value;
         //
         If  (dmBD.tbPrestacoesPRE_FLJUAC.Value = True) Then
             W_VLANTE := dmBD.tbPrestacoesPRE_VLSUBT.Value
         Else
             W_VLANTE := dmBD.tbPrestacoesPRE_TOTAL.Value;
         M_TPPRES := dmBD.tbPrestacoesPRE_TPPRES.Value;
         //ShowMessage('Tipo:' + M_TPPRES);}
         M_ULTVCT := dmBD.tbPrestacoesPRE_DTVENC.Value;
         W_CDCONT := dmBD.tbPrestacoesPRE_CDCONT.Value;
         // Grava as alteracoes
         dmBD.tbPrestacoes.Post;
         // se a prestação for um balão
         If (M_TPPRES = 'B') Then
         Begin
               dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(W_CDCONT)+' AND PRE_FLSITU='+QuotedStr('A')+' AND PRE_TPPRES='+QuotedStr('B');
               dmBD.tbPrestacoes.Filtered := True;
               dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
               dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
               While not (dmBD.tbPrestacoes.Eof) Do
               begin
                    dmBD.tbPrestacoes.Edit;
                    dmBD.tbPrestacoesPRE_VLANTE.Value := W_VLANTE;
                    dmBD.tbPrestacoesPRE_DTBASE.Value := M_ULTVCT;
                    dmBD.tbPrestacoes.Next;
               End;
               dmBD.tbPrestacoes.Filtered := False;
         End;
         // se for uma prestação normal
         If (M_TPPRES = 'P') Then
         Begin
               dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(W_CDCONT)+' AND PRE_FLSITU='+QuotedStr('A')+' AND PRE_TPPRES='+QuotedStr('P');
               dmBD.tbPrestacoes.Filtered := True;
               dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
               dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
               While not (dmBD.tbPrestacoes.Eof) Do
               begin
                    dmBD.tbPrestacoes.Edit;
                    dmBD.tbPrestacoesPRE_VLANTE.Value := W_VLANTE;
                    dmBD.tbPrestacoesPRE_DTBASE.Value := M_ULTVCT;
                    dmBD.tbPrestacoes.Next;
               End;
               dmBD.tbPrestacoes.Filtered := False;
         End;
         //
         dmBD.tbPrestacoes.EnableConstraints;
         // Atualiza contrato
         dmBD.tbContratos.Open;
         dmBD.tbContratos.FindKey([W_CDCONT]);
         dmBD.tbContratos.Edit;
         //
         dmBD.tbContratosCTC_QTPAGA.Value := dmBD.tbContratosCTC_QTPAGA.Value+1;
         dmBD.tbContratosCTC_VLPAGA.Value := dmBD.tbContratosCTC_VLPAGA.Value+M_VLPAGO;
         dmBD.tbContratosCTC_VLSALD.Value := dmBD.tbContratosCTC_VLIMOV.Value-
                (dmBD.tbContratosCTC_VLENTR.Value+dmBD.tbContratosCTC_VLCHAV.Value+dmBD.tbContratosCTC_TOBALO.Value+dmBD.tbContratosCTC_VLPAGA.Value);
         dmBD.tbContratosCTC_QTADPG.Value := dmBD.tbContratosCTC_QTADPG.Value+1;
         //
         dmBD.tbContratos.Post;
         dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(dmBD.tbContratosCTC_CDCONT.Value)+' AND PRE_CDCLIE='+QuotedStr(dmBD.tbContratosCTC_CDCLIEN.Value)+' AND PRE_FLSITU='+QuotedStr('A');
         dmBD.tbPrestacoes.Filtered := True;
         //
         dmBD.tbContratos.Close;
         // Mensagem para o usuário
         Application.MessageBox('Recebimento realizado com sucesso.',
                                'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
         Close;
end;

procedure TfrmFormReceb.CHEQUE;
Var
   M_VLDEBI, M_VLPAGO ,W_VLANTE : Double;
   W_CDCONT, M_CDPRES, M_TPPRES :String;
   M_UTDTVE : Tdate;
begin
         //  Gravar recebimento.
         If not (dsReceber.State in [dsEdit]) then
            dmBD.tbPrestacoes.Edit;
         //
         dmBD.tbPrestacoesPRE_DTPAGA.Value := Date();
         //dmBD.tbContReceberREC_QTDIAS.Value := StrtoInt(FloattoStr(dmBD.tbContReceberREC_DTRECE.Value-dmBD.tbContReceberREC_DTVENC.Value));
         dmBD.tbPrestacoesPRE_DIASAT.Value := dmBD.tbPrestacoesPRE_DTPAGA.Value-dmBD.tbPrestacoesPRE_DTVENC.Value;
         //dmBD.tbContReceberREC_VLPAGO.Value := StrtoFloat(edtVLPAGO2.Text);
         //dmBD.tbContReceberREC_VLMODA.Value := dmBD.tbContReceberREC_VLMODA.Value+dmBD.tbContReceberREC_VLPAGO.Value;
         dmBD.tbPrestacoesPRE_CDUSUA.Value := uNetImo.M_CDUSUA;
         //
         dmBD.tbPrestacoesPRE_FLSITU.Value := 'P';
         dmBD.tbPrestacoesPRE_HORECE.Value := TimetoStr(Time);
         //
         If (dmBD.tbPrestacoesPRE_TPPRES.Value='P') Then
               M_TPPRES := 'P';
         If (dmBD.tbPrestacoesPRE_TPPRES.Value='B') Then
               M_TPPRES := 'B';
         //
         If  (dmBD.tbPrestacoesPRE_FLJUAC.Value = True) Then
              W_VLANTE := dmBD.tbPrestacoesPRE_VLSUBT.Value
         Else
              W_VLANTE := dmBD.tbPrestacoesPRE_TOTAL.Value;
         // Gravar as alterações
         dmBD.tbPrestacoes.Post;
         //
         M_VLPAGO := dmBD.tbPrestacoesPRE_VLPAGO.Value;
         M_VLDEBI := dmBD.tBPrestacoesPRE_VLPAGO.Value;
         M_CDPRES := dmBD.tbPrestacoesPRE_CDPRES.Value;
         W_CDCONT := dmBD.tBPrestacoesPRE_CDCONT.Value;
         //
         If (M_FLCHEQ = 'S') Then
         begin
              // editar a tabela de parametros
              dmBD.tbParametros.edit;
              { dmBD.tbParametrosPAR_NRSEQU.Value :=
                   dmBD.tbParametrosPAR_NRSEQU.Value+1;}
              dmBD.tbParametrosPAR_NRVEND.Value :=
                   dmBD.tbParametrosPAR_NRVEND.Value+1;
              dmBD.tbParametros.Post;
              //dmBD.tbClientes.Locate('CLI_CDCLIE',dmBD.tbContReceberREC_CDCLIE.Value,[]);
              //
              dmBD.tbCheques.Append;
              dmBD.tbChequesCHE_NRVEND.Value := FloattoStr(dmBD.tbParametrosPAR_NRVEND.Value);
              dmBD.tbChequesCHE_CDLOJA.Value := '01';
              dmBD.tbChequesCHE_CDCLIE.Value := dmBD.tbPrestacoesPRE_CDCLIE.Value;
              dmBD.tbChequesCHE_CDBANC.Value := dmBD.tbPrestacoesPRE_CDBANC.Value;
              dmBD.tbChequesCHE_NRAGEN.Value := dmBD.tbPrestacoesPRE_NRAGEN.Value;
              dmBD.tbChequesCHE_NRCONT.Value := dmBD.tbPrestacoesPRE_NRCONT.Value;
              dmBD.tbChequesCHE_NRDOCU.Value := dmBD.tbPrestacoesPRE_NRCHEQ.Value;
              dmBD.tbChequesCHE_VLDOCU.Value := dmBD.tbPrestacoesPRE_VLPAGO.Value;
              dmBD.tbChequesCHE_VLDESC.Value := 0;
              dmBD.tbChequesCHE_VLJURO.Value := 0;
              dmBD.tbChequesCHE_NMSACA.Value := dmBD.tbPrestacoesPRE_NMCLIE.Value;
              dmBD.tbChequesCHE_DTRECE.Value := Date();
              If (dmBD.tbPrestacoesPRE_FLPRED.Value = True) Then
                   dmBD.tbChequesCHE_DTVENC.Value := dmBD.tbPrestacoesPRE_DTPRED.Value;
              dmBD.tbChequesCHE_CDUSUA.Value := uNetImo.M_CDUSUA;
              dmBD.tbChequesCHE_FLSITU.Value := 'A';
              dmBD.tbCheques.Post;
              //
              dmBD.tbClientes.FindKey([dmBD.tbPrestacoesPRE_CDCLIE.Value]);
              dmBD.tbClientes.Edit;
              //
              dmBD.tbCheqCli.Append;
              dmBD.tbCheqCliCLC_CDCLIE.Value := dmBD.tbClientesCLI_CDCLIE.Value;
              dmBD.tbCheqCliCLC_NMCLIE.Value := dmBD.tbClientesCLI_NMCLIE.Value;
              dmBD.tbCheqCliCLC_ENCLIE.Value := dmBD.tbClientesCLI_ENCLIE.Value;
              dmBD.tbCheqCliCLC_BAIRRO.Value := dmBD.tbClientesCLI_BAIRRO.Value;
              dmBD.tbCheqCliCLC_NRFONE.Value := dmBD.tbClientesCLI_NRFONE.Value;
              dmBD.tbCheqCliCLC_NRIDEN.Value := dmBD.tbClientesCLI_IDEINS.Value;
              dmBD.tbCheqCliCLC_OREMIS.Value := dmBD.tbClientesCLI_OREMIS.Value;
              dmBD.tbCheqCliCLC_UFEMIS.Value := dmBD.tbClientesCLI_UFEMIS.Value;
              dmBD.tbCheqCliCLC_NRCPF.Value  := dmBD.tbClientesCLI_CPFCGC.Value;
             //dmBD.tbCheqCliCLC_FLSITU.Value := dmBD.tbClientesCLI_FLSITU.Value;
              //
              dmBD.tbCheqCliCLC_CDBANC.value := dmBD.tbChequesCHE_CDBANC.Value;
              dmBD.tbCheqCliCLC_NRAGEN.Value := dmBD.tbChequesCHE_NRAGEN.Value;
              dmBD.tbCheqCliCLC_NRCONT.Value := dmBD.tbChequesCHE_NRCONT.Value;
              dmBD.tbCheqCliCLC_NRCGC.Value  := dmBD.tbClientesCLI_NRCGC.Value;
              //
              dmBD.tbCheqCli.Post;
              dmBD.tbClientes.Cancel;
         End;
         // se a prestação for um balão
         dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(W_CDCONT)+' AND PRE_FLSITU='+QuotedStr('A');
         dmBD.tbPrestacoes.Filtered := True;
         dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
         dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
         While not (dmBD.tbPrestacoes.Eof) Do
         begin
              dmBD.tbPrestacoes.Edit;
              If (M_TPPRES = 'B') Then
              begin
                   dmBD.tbPrestacoesPRE_VLANTE.Value := W_VLANTE;
                   dmBD.tbPrestacoesPRE_DTBASE.Value := M_UTDTVE;
              End;
              //
              If (M_TPPRES = 'P') Then
              begin
                   dmBD.tbPrestacoesPRE_VLANTE.Value := W_VLANTE;
                   dmBD.tbPrestacoesPRE_DTBASE.Value := M_UTDTVE;
              End;
              dmBD.tbPrestacoes.Next;
         End;
         dmBD.tbPrestacoes.Filtered := False;
         //
         dmBD.tbPrestacoes.Filtered := False;
         dmBD.tbPrestacoes.EnableConstraints;
         // Atualiza contrato
         dmBD.tbContratos.Open;
         dmBD.tbContratos.FindKey([W_CDCONT]);
         dmBD.tbContratos.Edit;
         //
         dmBD.tbContratosCTC_QTPAGA.Value := dmBD.tbContratosCTC_QTPAGA.Value+1;
         dmBD.tbContratosCTC_VLPAGA.Value := dmBD.tbContratosCTC_VLPAGA.Value+M_VLPAGO;
         dmBD.tbContratosCTC_VLSALD.Value := dmBD.tbContratosCTC_VLIMOV.Value-
                (dmBD.tbContratosCTC_VLENTR.Value+dmBD.tbContratosCTC_VLCHAV.Value+dmBD.tbContratosCTC_TOBALO.Value+dmBD.tbContratosCTC_VLPAGA.Value);
         dmBD.tbContratosCTC_QTADPG.Value := dmBD.tbContratosCTC_QTADPG.Value+1;
         //
         dmBD.tbContratos.Post;
         //
         dmBD.tbContratos.Close;
         //dmBD.tbPrestacoes.Close;
         // Mensagem para o usuário
         Application.MessageBox('Recebimento realizado com sucesso.',
                                'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
         Close;
end;

procedure TfrmFormReceb.edtVLPAGO2Exit(Sender: TObject);
begin
     If Funcoes.Empty (edtVLPAGO2.text) Then
     begin
          ShowMessage('Digite o valor a pagar.');
          edtVLPAGO2.SetFocus;
     End
     Else
          btConfirmar.SetFocus;
end;

procedure TfrmFormReceb.edtVLPAGO2KeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#13,',',#8] ) then
          key:=#0;
     //
     If Key = #13 then
     begin
          Key := #0;
          If Funcoes.Empty (edtVLPAGO2.text) Then
          begin
               ShowMessage('Digite o valor a pagar.');
               edtVLPAGO2.SetFocus;
          End
          Else
              btConfirmar.SetFocus;
     end;
end;

procedure TfrmFormReceb.dbeNRCONTKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8] ) then
        key:=#0;
end;

End.
