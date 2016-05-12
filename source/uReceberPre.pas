unit uReceberPre;

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
    dbeVLPAGO: TDBEdit;
    Label8: TLabel;
    pnlCheque: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    chbPRED: TDBCheckBox;
    dbeDTPRED: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    dbeVLCHEQ: TDBEdit;
    btConfirmar: TBitBtn;
    btFechar: TBitBtn;
    DBText1: TDBText;
    Label9: TLabel;
    DBText2: TDBText;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btDinheiroClick(Sender: TObject);
    procedure btChequeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure chbPREDClick(Sender: TObject);
    procedure dbeVLPAGOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormReceb: TfrmFormReceb;
  M_FLCHEQ : String;

implementation

uses uBD, uNetimo, Funcoes;

{$R *.DFM}

procedure TfrmFormReceb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmEleicoes.tbBancos.Close;
    // dmEleicoes.tbCheques.Close;
     //dmEleicoes.tbCheqCli.Close;
     dmEleicoes.tbParam.Close;
     //
     Action := caFree;
end;

procedure TfrmFormReceb.btDinheiroClick(Sender: TObject);
begin
     // Em Dinheiro
     dmEleicoes.tbContReceberREC_CDMODA.Value := '01';
     lbl_Forma.Caption  := 'Escolha o Tipo do Pagamento: - DINHEIRO';
     pnlCheque.Visible  := False;
     dbeVLPAGO.Enabled  := True;
     dbeVLPAGO.SetFocus;
     btConfirmar.Enabled := True;
end;

procedure TfrmFormReceb.btChequeClick(Sender: TObject);
begin
     // Em Cheque
     dmEleicoes.tbContReceberREC_CDMODA.Value := '02';
     lbl_Forma.Caption := 'Escolha o Tipo do Pagamento: - CHEQUE';
     pnlCheque.Visible   := True;
     dbeVLPAGO.Enabled   := False;
     pnlCheque.Align     := alClient;
     DBLookupComboBox1.SetFocus;
     btConfirmar.Enabled := True;
     M_FLCHEQ := 'S';
end;

procedure TfrmFormReceb.FormActivate(Sender: TObject);
begin
      If (dmEleicoes.tbBancos.Active = False) Then
          dmEleicoes.tbBancos.open;
{      If (dmEleicoes.tbClientes.Active = False) Then
          dmEleicoes.tbClientes.Open;
      If (dmEleicoes.tbCheques.Active = False) Then
          dmEleicoes.tbCheques.Open;
      If (dmEleicoes.tbCheqCli.Active = False) Then
          dmEleicoes.tbCheqCli.Open;}
      If (dmEleicoes.tbParam.Active = False) Then
          dmEleicoes.tbParam.Open;
      //
      btConfirmar.Enabled := False;
      If not(dsReceber.State in [dsEdit]) Then
          dmEleicoes.tbContReceber.Edit;
end;

procedure TfrmFormReceb.btFecharClick(Sender: TObject);
begin
     If (dsReceber.State in [dsEdit]) Then
       dmEleicoes.tbContReceber.Cancel;
end;

procedure TfrmFormReceb.btConfirmarClick(Sender: TObject);
Var
   M_VLDEBI, M_VLPAGO ,W_VLANTE : Double;
   W_CDCONT, M_CDPRES :String;
begin
     Try
         //  Gravar recebimento.
         If not (dsReceber.State in [dsEdit]) then
            dmEleicoes.tbContReceber.Edit;
         If (dmEleicoes.tbContReceberREC_CDMODA.Value = '01')
             and (dmEleicoes.tbContReceberREC_VLPAGO.Value<dmEleicoes.tbContReceberREC_VLPARC.Value) Then
         begin
              Application.MessageBox('O valor pago deve ser maior ou igual.'+#13
                                    +'valor da prestação.',
                                'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
              dbeVLPAGO.SetFocus;
              Exit;
         End;
         //
         dmEleicoes.tbContReceberREC_DTRECE.Value := Date();
         dmEleicoes.tbContReceberREC_QTDIAS.Value := StrtoInt(FloattoStr(dmEleicoes.tbContReceberREC_DTRECE.Value-dmEleicoes.tbContReceberREC_DTVENC.Value));
         //dmEleicoes.tbContReceberREC_VLPAGO.Value := funcoes.ArredontaFloat(dmEleicoes.tbContReceberREC_VLPARC.Value);
         dmEleicoes.tbContReceberREC_VLMODA.Value := funcoes2.ArredontaFloat(dmEleicoes.tbContReceberREC_VLPAGO.Value);
         dmEleicoes.tbContReceberREC_CDUSUA.Value := uEleicoes.M_CDUSUA;
         dmEleicoes.tbcontreceberREC_FLRECE.Value := 'R';
         dmEleicoes.tbContReceberREC_HORECE.Value := TimetoStr(Time);
         M_VLPAGO := dmEleicoes.tbContReceberREC_VLPAGO.Value;
         M_VLDEBI := dmEleicoes.tbContReceberREC_VLDEBI.Value;
         dmEleicoes.tbContReceber.Post;
         // editar a tabela de parametros
         //dmEleicoes.tbParam.edit;
        { dmEleicoes.tbParametrosPAR_NRSEQU.Value :=
                   dmEleicoes.tbParametrosPAR_NRSEQU.Value+1;}
         {dmEleicoes.tbParametrosPAR_NRVEND.Value :=
                   dmEleicoes.tbParametrosPAR_NRVEND.Value+1;
         dmEleicoes.tbParametros.Post;                       }
         //
         If (M_FLCHEQ = 'S') Then
         begin
              {dmEleicoes.tbClientes.Locate('CLI_CDCLIE',dmEleicoes.tbContReceberREC_CDCLIE.Value,[]);
              //
              dmEleicoes.tbCheques.Append;
              dmEleicoes.tbChequesCHE_NRVEND.Value := FloattoStr(dmEleicoes.tbParametrosPAR_NRVEND.Value);
              dmEleicoes.tbChequesCHE_CDLOJA.Value := dmEleicoes.tbContReceberREC_CDLOJA.Value;
              dmEleicoes.tbChequesCHE_CDCLIE.Value := dmEleicoes.tbContReceberREC_CDCLIE.Value;
              dmEleicoes.tbChequesCHE_CDBANC.Value := dmEleicoes.tbContReceberREC_CDBANC.Value;
              dmEleicoes.tbChequesCHE_NRAGEN.Value := dmEleicoes.tbContReceberREC_NRAGEN.Value;
              dmEleicoes.tbChequesCHE_NRCONT.Value := dmEleicoes.tbContReceberREC_NRCONT.Value;
              dmEleicoes.tbChequesCHE_NRDOCU.Value := dmEleicoes.tbContReceberREC_NRCHEQ.Value;
              dmEleicoes.tbChequesCHE_VLDOCU.Value := dmEleicoes.tbContReceberREC_VLPARC.Value;
              dmEleicoes.tbChequesCHE_VLDESC.Value := dmEleicoes.tbContReceberREC_VLDESC.Value;
              dmEleicoes.tbChequesCHE_VLJURO.Value := dmEleicoes.tbContReceberREC_VLJURO.Value;
              dmEleicoes.tbChequesCHE_NMSACA.Value := dmEleicoes.tbContReceberREC_NMCLIE.Value;
              dmEleicoes.tbChequesCHE_DTRECE.Value := Date();
              dmEleicoes.tbChequesCHE_DTVENC.Value := dmEleicoes.tbContReceberREC_DTVENC.Value;
              dmEleicoes.tbChequesCHE_CDUSUA.Value := uNetImo.M_CDUSUA;
              dmEleicoes.tbChequesCHE_FLSITU.Value := 'A';
              dmEleicoes.tbCheques.Post;
              //
              dmEleicoes.tbCheqCli.Append;
              dmEleicoes.tbCheqCliCLC_CDCLIE.Value := dmEleicoes.tbClientesCLI_CDCLIE.Value;
              dmEleicoes.tbCheqCliCLC_NMCLIE.Value := dmEleicoes.tbClientesCLI_NMCLIE.Value;
              dmEleicoes.tbCheqCliCLC_ENCLIE.Value := dmEleicoes.tbClientesCLI_ENCLIE.Value;
              dmEleicoes.tbCheqCliCLC_BAIRRO.Value := dmEleicoes.tbClientesCLI_BAIRRO.Value;
              dmEleicoes.tbCheqCliCLC_NRFONE.Value := dmEleicoes.tbClientesCLI_NRFONE.Value;
              dmEleicoes.tbCheqCliCLC_NRIDEN.Value := dmEleicoes.tbClientesCLI_IDEINS.Value;
              dmEleicoes.tbCheqCliCLC_OREMIS.Value := dmEleicoes.tbClientesCLI_OREMIS.Value;
              dmEleicoes.tbCheqCliCLC_UFEMIS.Value := dmEleicoes.tbClientesCLI_UFEMIS.Value;
              dmEleicoes.tbCheqCliCLC_NRCPF.Value  := dmEleicoes.tbClientesCLI_CPFCGC.Value;
             //dmEleicoes.tbCheqCliCLC_FLSITU.Value := dmEleicoes.tbClientesCLI_FLSITU.Value;
              //
              dmEleicoes.tbCheqCliCLC_CDBANC.value := dmEleicoes.tbChequesCHE_CDBANC.Value;
              dmEleicoes.tbCheqCliCLC_NRAGEN.Value := dmEleicoes.tbChequesCHE_NRAGEN.Value;
              dmEleicoes.tbCheqCliCLC_NRCONT.Value := dmEleicoes.tbChequesCHE_NRCONT.Value;
              dmEleicoes.tbCheqCliCLC_NRCGC.Value  := dmEleicoes.tbClientesCLI_NRCGC.Value;
              //
              dmEleicoes.tbCheqCli.Post;}
         End;
         // Mensagem para o usuário
         Application.MessageBox('Recebimento realizado com sucesso.',
                                'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
         //
         Close;
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
          If (dmEleicoes.tbContReceberREC_VLPAGO.Value<dmEleicoes.tbContReceberREC_VLPARC.Value) Then
          begin
              Application.MessageBox('O valor pago deve ser maior ou igual.'+#13
                                    +'valor da prestação.',
                                'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
              dbeVLPAGO.SetFocus;
              Exit;
         End
         Else
             btConfirmar.SetFocus; 
     end;
end;

end.
