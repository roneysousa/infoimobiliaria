 unit uRecebimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TfrmRecebimentos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    dsReceber: TDataSource;
    btConfirmar: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    dsHistorico: TDataSource;
    dsPrestacoes: TDataSource;
    pnlCalc: TPanel;
    lbl_SubTotal: TLabel;
    lbl_TOTAL: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_Dias: TLabel;
    lbl_correcao: TLabel;
    lbl_vljuros: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    DBText2: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure EncartaButton1Click(Sender: TObject);
    procedure enbConfimarClick(Sender: TObject);
    procedure EncartaButton4Click(Sender: TObject);
    procedure ebtCalcularClick(Sender: TObject);
    procedure AOLButton1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebimentos: TfrmRecebimentos;

implementation

Uses uBD, uDescJuros, uFormReceber, uSelCliente, Funcoes;

{$R *.DFM}

procedure TfrmRecebimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    // dmBD.tbContReceber.Filtered := False;
     dmBD.tbPrestacoes.Filtered := False;
     dmBD.tbPrestacoes.cLOSE;
     dmBD.tbIndices.Close;
     dmBD.tbContratos.Close;     
     //dmBD.tbContReceber.Close;
     dmBD.tbHistorico.Close;
     Limpar_Status;
     //
     Action := caFree;
end;

procedure TfrmRecebimentos.FormActivate(Sender: TObject);
begin
     {If (dmBD.tbContReceber.Active=False) Then
         dmBD.tbContReceber.Open;}
     If (dmBD.tbHistorico.Active=False) Then
         dmBD.tbHistorico.open;
     If (dmBD.tbPrestacoes.Active=False) Then
          dmBD.tbPrestacoes.Open;
     If (dmBD.tbIndices.Active=False) Then
         dmBD.tbIndices.Open;
     If (dmBD.tbContratos.Active = False) Then
         dmBD.tbContratos.Open;
     //
     dmBD.tbPrestacoes.Filter   := 'PRE_FLSITU='+QuotedStr('A');
     dmBD.tbPrestacoes.Filtered := True;
end;

procedure TfrmRecebimentos.DBGrid1DblClick(Sender: TObject);
begin
      enbConfimarClick(Sender);
{     Application.CreateForm(TfrmDescJuros, frmDescJuros);
     uDescJuros.M_JANELA := 'RECEBER';
     //
     frmDescJuros.Height := 188;
     frmDescJuros.Width  := 296;
     //
     frmDescJuros.pnlReceber.Visible := True;
     frmDescJuros.pnlPagar.Visible   := False;
     frmDescJuros.pnlReceber.Align   := alClient;
     //
     frmDescJuros.ShowModal;
     frmDescJuros.Free;}
end;

procedure TfrmRecebimentos.btConfirmarClick(Sender: TObject);
begin
     Application.CreateForm(TfrmFormReceb, frmFormReceb);
     frmFormReceb.ShowModal;
     frmFormReceb.Free;
end;

procedure TfrmRecebimentos.EncartaButton1Click(Sender: TObject);
begin
     pnlCalc.Visible := False;
     //
     Application.CreateForm(TfrmSeleCliente, frmSeleCliente);
     uSelCliente.M_NMFORM := 'RECEBER';     
     frmSeleCliente.ShowModal;
     frmSeleCliente.Free;
end;

procedure TfrmRecebimentos.enbConfimarClick(Sender: TObject);
begin
     pnlCalc.Visible := False;
     //
    If (dmBD.tbPrestacoesPRE_DIASAT.Value > 0) Then
    begin
              ShowMessage('ATENÇÃO: Prestação atrasada!!!');
    End;

     Application.CreateForm(TfrmFormReceb, frmFormReceb);
     frmFormReceb.ShowModal;
     frmFormReceb.Free;
end;

procedure TfrmRecebimentos.EncartaButton4Click(Sender: TObject);
begin
     Close;
end;

procedure TfrmRecebimentos.ebtCalcularClick(Sender: TObject);
Var
     M_VLBASE, M_VLMULT, M_VLJURO : Double;
     M_QTDIAS, M_VLINDI, M_VLSUBT, M_VLTOTA : Double;
     M_QTPRES : Integer;
     M_DTVENC, M_DATA: TDateTime;
     M_VENCIM, W_CDCONT, M_TPPRES: String;
     M_QTMESES : Integer;
begin
     pnlCalc.Visible := True;
     dmBD.tbPrestacoes.Edit;
     //
     M_VLBASE := dmBD.tbPrestacoesPRE_VLANTE.Value;
     M_VLINDI := dmBD.tbPrestacoesPRE_PECORR.Value;
     //
     M_TPPRES := dmBD.tbPrestacoesPRE_TPPRES.Value;
     //
     If (dmBD.tbPrestacoesPRE_DTVENC.Value >= Date()) Then
     begin
          // Se for prestacao
          If (dmBD.tbPrestacoesPRE_TPPRES.Value = 'P') Then
          begin
               M_VENCIM := Copy(DatetoStr(M_DTVENC),1,2)+Copy(DatetoStr(Date()),3,8);
               M_DTVENC := StrtoDate(M_VENCIM);
               //
               M_QTDIAS := Abs(Date()-M_DTVENC+30);
               //
               M_VLJURO := dmBD.tbPrestacoesPRE_PEJURO.Value;
               //Primeira formula
               if ((Date()-dmBD.tbPrestacoesPRE_DTVENC.Value +30) > 0) then
                     M_VLSUBT := M_VLBASE +Funcoes.Gerapercentual(M_VLBASE,(M_VLINDI/30*M_QTDIAS));
               //
               M_VLTOTA := M_VLSUBT+(M_VLJURO/30*M_QTDIAS);
          End;
          //
          If (dmBD.tbPrestacoesPRE_TPPRES.Value <> 'P') Then
          begin
           //M_QTDIAS := Abs(Date()-dmBD.tbPrestacoesPRE_DTCADA.Value);
           M_QTDIAS := Abs(Date()-dmBD.tbPrestacoesPRE_DTBASE.Value);
           //
           M_VLJURO := dmBD.tbPrestacoesPRE_PEJURO.Value;
           //Primeira formula
           if ( M_QTDIAS > 0) then
                M_VLSUBT := M_VLBASE +Funcoes.Gerapercentual(M_VLBASE,(M_VLINDI/30*M_QTDIAS));
           {else
                M_VLSUBT := M_VLBASE -Funcoes.Gerapercentual(M_VLBASE,(M_VLINDI/30*M_QTDIAS));}

           M_VLTOTA := M_VLSUBT+(M_VLJURO/30*M_QTDIAS);
          End;
           //
           lbl_Dias.Caption := FloattoStr(M_QTDIAS);
     End;
     // se atrasa
     If (Date() - dmBD.tbPrestacoesPRE_DTVENC.Value > 0)
        and (Date() - dmBD.tbPrestacoesPRE_DTVENC.Value < 60)  Then
     begin
           ShowMessage('Prestação atrasada!!!');
           //
           If (dmBD.tbPrestacoesPRE_FLATRA.Value = 'N') Then
           begin
                If (dmBD.tbPrestacoesPRE_FLJUAC.Value = True) Then
                    M_VLBASE := dmBD.tbPrestacoesPRE_TOTAL.Value
                Else
                    M_VLBASE := dmBD.tbPrestacoesPRE_VLSUBT.Value;
           End;
           //
           M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
           M_VLJURO := dmBD.tbPrestacoesPRE_JURVCT.Value;
           M_VLMULT := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_TOTAL.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
           // Segunda formula
           M_VLSUBT := dmBD.tbPrestacoesPRE_TOTAL.Value + M_VLMULT;
           M_VLTOTA := M_VLSUBT+(M_VLJURO/30*M_QTDIAS);
           //
           If (dmBD.tbPrestacoesPRE_FLATRA.Value = 'N') Then
           begin
                //
                dmBD.tbPrestacoes.Edit;
                dmBD.tbPrestacoesPRE_FLATRA.Value := 'S';
                dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTA;
                dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_TOTAL.Value-dmBD.tbPrestacoesPRE_VLSUBT.Value;
                //
                //
                W_CDCONT := dmBD.tbPrestacoesPRE_CDCONT.Value;
                //
                dmBD.tbPrestacoes.Post;
                //
                If (M_TPPRES = 'B') Then
                Begin
                     dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(W_CDCONT)+' AND PRE_FLSITU='+QuotedStr('A')+' AND PRE_TPPRES='+QuotedStr('B');
                     dmBD.tbPrestacoes.Filtered := True;
                     dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
                     dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
                     While not (dmBD.tbPrestacoes.Eof) Do
                     begin
                          dmBD.tbPrestacoes.Edit;
                          dmBD.tbPrestacoesPRE_VLANTE.Value := M_VLBASE;
                          dmBD.tbPrestacoes.FieldByName('PRE_DTBASE').Value :=
                                 dmBD.tbPrestacoes.FieldByName('PRE_DTVENC').Value;
                          dmBD.tbPrestacoes.Next;
                     End;
                     //
                     dmBD.tbPrestacoes.Filtered := False;
                End;
                // se for uma prestação normal
                If (M_TPPRES = 'P') Then
                Begin
                     dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(W_CDCONT)+' AND PRE_FLSITU='+QuotedStr('A')+' AND PRE_TPPRES='+QuotedStr('P');
                     dmBD.tbPrestacoes.Filtered := True;
                     dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
                     While not (dmBD.tbPrestacoes.Eof) Do
                     begin
                          dmBD.tbPrestacoes.Edit;
                          dmBD.tbPrestacoesPRE_VLANTE.Value := M_VLBASE;
                          dmBD.tbPrestacoes.FieldByName('PRE_DTBASE').Value :=
                                 dmBD.tbPrestacoes.FieldByName('PRE_DTVENC').Value;
                          dmBD.tbPrestacoes.Next;
                     End;
                     //
                     dmBD.tbPrestacoes.Filtered := False;
                     dmBD.tbPrestacoes.EnableConstraints;
                End;
                //
           End;
     End;
     // se passar 60 dias
     If (Date() - dmBD.tbPrestacoesPRE_DTVENC.Value >= 60)  Then
     begin
           ShowMessage('Prestação atrasada!!!');
           M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
           M_VLJURO := dmBD.tbPrestacoesPRE_PEJURO.Value;
           //Primeira formula
           {M_VLSUBT := M_VLBASE +(M_VLINDI/30*M_QTDIAS);
           M_VLTOTA := M_VLSUBT+(M_VLJURO/30*M_QTDIAS);}
           // Terceira formula
           M_VLSUBT := dmBD.tbPrestacoesPRE_TOTAL.Value + (M_VLINDI/30*M_QTDIAS);
           M_VLTOTA := M_VLSUBT+(M_VLJURO/30*M_QTDIAS);
     End;
     //
     dmBD.tbContratos.FindKey([dmBD.tbPrestacoesPRE_CDCONT.Value]);
     //
     If (M_TPPRES = 'P') then
     begin
          dmBD.tbContratos.Edit;
          M_QTPRES := dmBD.tbContratosCTC_QTPRES.Value - dmBD.tbContratosCTC_QTPAGA.Value;
          dmBD.tbContratos.Cancel;
     End;
     //
     If (M_TPPRES = 'B') then
     begin
          dmBD.tbContratos.Edit;
          M_QTPRES := dmBD.tbContratosCTC_QTBALO.Value - dmBD.tbContratosCTC_QTBAPG.Value;
          dmBD.tbContratos.Cancel;
     End;
     // Sub-Total
     lbl_SubTotal.Caption := floattostrf(M_VLSUBT,ffFixed,15,2);
     //Total
     lbl_TOTAL.Caption    := floattostrf(M_VLTOTA,ffFixed,15,2);
     // Saldo devedor
     //lbl_Saldo.Caption    := floattostrf(M_VLTOTA*M_QTPRES,ffFixed,15,2);
     //
     lbl_vljuros.Caption    := floattostrf(dmBD.tbPrestacoesPRE_VLSUBT.Value*(dmBD.tbPrestacoesPRE_PEJURO.Value/100),ffFixed,15,2);
     lbl_correcao.Caption   := floattostrf(M_VLSUBT-M_VLBASE,ffFixed,15,2);
     //
     dmBD.tbPrestacoes.Cancel;
end;

procedure TfrmRecebimentos.AOLButton1Click(Sender: TObject);
begin
     If Application.MessageBox('Confimar dados.',
            'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
     begin
           dmBD.tbPrestacoes.Edit;
           dmBD.tbPrestacoesPRE_VLSUBT.Value := StrtoFloat(lbl_SubTotal.caption);
           dmBD.tbPrestacoesPRE_TOTAL.Value := StrtoFloat(lbl_Total.caption);
           dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
           dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value*(dmBD.tbPrestacoesPRE_PEJURO.Value/100);
           dmBD.tbPrestacoes.Post;
     End;
end;

procedure TfrmRecebimentos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (Shift = [ssCtrl]) and (Key = 46) Then
         KEY := 0;
end;

procedure TfrmRecebimentos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
       If (key = #13) Then
       begin
            key := #0;
            enbConfimarClick(Sender);
       End;
end;

end.
