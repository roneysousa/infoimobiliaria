unit uSelCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Grids, DBGrids,DB;

type
  TfrmSeleCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btOk: TBitBtn;
    GridClientes: TDBGrid;
    edtPesquisa: TEdit;
    dsClientContrato: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure GridClientesKeyPress(Sender: TObject; var Key: Char);
    procedure GridClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridClientesCellClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function Datafinal(dataini:tdatetime; dias_uteis:integer):tdatetime;
    { Public declarations }
  end;

var
  frmSeleCliente: TfrmSeleCliente;
  M_LETRAS, M_CAMPO_PESQ, M_NMFORM : String;
  M_CDCLIE,W_CDCONT : String;
  M_DTATUA: TDate;

implementation

Uses uBD, uManuPretacoes,Funcoes, uRelImoCli, uNetImo;

{$R *.DFM}

procedure TfrmSeleCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:=caFree;
end;

procedure TfrmSeleCliente.btOkClick(Sender: TObject);
Var
    M_VLBASE, M_QTDIAS: Double;
    M_DTBASE: Tdatetime;
    M_STDATA: String;
begin
    dmBD.tbContratos.Edit;
    M_CDCLIE := dmBD.tbContratosCTC_CDCLIEN.Value;
    W_CDCONT := dmBD.tbContratosCTC_CDCONT.Value;
    M_DTATUA := dmBD.tbContratosCTC_DTATUA.Value;
    //
    dmBD.tbContratosCTC_DTATUA.Value := date();
    dmBD.tbContratos.Post;
    //
    If (M_NMFORM = 'PRESTACOES') Then
    begin
         dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(W_CDCONT)+' AND PRE_CDCLIE='+QuotedStr(M_CDCLIE)+' AND PRE_FLSITU<>'+QuotedStr('C');
         dmBD.tbPrestacoes.Filtered := True;
         // Atualizar as prestacoes do cliente corrente.
         //Funcoes.ATUALIZAR_CLIENTE_ATUAL;
    End;
    //
    If (M_NMFORM = 'CONTAS') Then
    begin
         dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(W_CDCONT)+' AND PRE_CDCLIE='+QuotedStr(M_CDCLIE)+' AND PRE_FLSITU<>'+QuotedStr('C');
         dmBD.tbPrestacoes.Filtered := True;
         { dmBD.tbContReceber.Filter   := 'REC_CDCONT='+QuotedStr(W_CDCONT)+' AND REC_CDCLIE='+QuotedStr(M_CDCLIE)+' AND REC_FLRECE<>'+QuotedStr('C');
         dmBD.tbContReceber.Filtered := True;}
    End;
    //
    If (M_NMFORM = 'RECEBER') Then
    begin
         dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(W_CDCONT)+' AND PRE_CDCLIE='+QuotedStr(M_CDCLIE)+' AND PRE_FLSITU='+QuotedStr('A');
         dmBD.tbPrestacoes.Filtered := True;
         //
         If ( M_DTATUA <> Date() ) Then
         begin
               dmBD.tbPrestacoes.DisableConstraints;
               dmBD.tbPrestacoes.First;
               //
               While not (dmBD.tbPrestacoes.Eof) do
               begin
                    dmBD.tbPrestacoes.Edit;
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    //
                    M_DTBASE := Date();
                    M_STDATA := FloattoStr(dmBD.tbPrestacoesPRE_DIVENC.Value)+Copy(DatetoStr(M_DTBASE),3,8);
                    M_DTBASE := StrtoDate(M_STDATA);
                     //
                  If (dmBD.tbPrestacoesPRE_DTCADA.Value < Date()) Then
                  begin
                    // prestação em dias
                    If (dmBD.tbPrestacoesPRE_DTVENC.Value >= Date()) Then
                    begin
                          //If (dmBD.tbPrestacoesPRE_DTLIMI.Value > Date()) Then
                          If (dmBD.tbPrestacoesPRE_DTBASE.Value < Date()) And (dmBD.tbPrestacoesPRE_DTLIMI.Value < Date()) Then
                          begin
                            If (dmBD.tbPrestacoesPRE_QTDIAS.Value <= 30) Then
                            Begin
                                dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,(dmBD.tbPrestacoesPRE_PECORR.Value/30*(dmBD.tbPrestacoesPRE_DTLIMI.Value-dmBD.tbPrestacoesPRE_DTBASE.Value)));
                                dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                                //
                                dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,(dmBD.tbPrestacoesPRE_PEJURO.Value/30*(dmBD.tbPrestacoesPRE_DTLIMI.Value-dmBD.tbPrestacoesPRE_DTBASE.Value)));
                                dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_TOTAL.Value-dmBD.tbPrestacoesPRE_VLSUBT.Value;
                                //
                                dmBD.tbPrestacoesPRE_DTBASE.Value := StrtoDate(FloattoStr(dmBD.tbPrestacoesPRE_DIVENC.Value)+Copy(DatetoStr(dmBD.tbPrestacoesPRE_DTBASE.Value),3,8));
                                dmBD.tbPrestacoesPRE_DTLIMI.Value := IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1);
                            End
                            Else
                            Begin
                                dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
                                dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                                //
                                dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_PEJURO.Value);
                                dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_TOTAL.Value-dmBD.tbPrestacoesPRE_VLSUBT.Value;
                                //
                                dmBD.tbPrestacoesPRE_DTBASE.Value := IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1);
                                dmBD.tbPrestacoesPRE_DTLIMI.Value := IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1);
                            End;
                            //
                            If (dmBD.tbPrestacoesPRE_FLJUAC.Value = False) Then
                                 dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_TOTAL.Value
                            Else
                                dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value;
                            //
                          End;
                    End
                    Else        // Se atrasa
                    Begin
                      // 1º Se
                      If  (dmBD.tbPrestacoesPRE_DTLIMI.Value < Date()) Then
                      begin
                        If ((dmBD.tbPrestacoesPRE_DIASAT.Value >0)
                         And (dmBD.tbPrestacoesPRE_DIASAT.Value <=30)) Then
                        begin
                            //
                            If (dmBD.tbPrestacoesPRE_QTDIAS.Value <= 30) Then
                            Begin
                                dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,(dmBD.tbPrestacoesPRE_PECORR.Value/30*(dmBD.tbPrestacoesPRE_DTLIMI.Value-dmBD.tbPrestacoesPRE_DTBASE.Value)));
                                dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                                //
                                dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,(dmBD.tbPrestacoesPRE_PEJURO.Value/30*(dmBD.tbPrestacoesPRE_DTLIMI.Value-dmBD.tbPrestacoesPRE_DTBASE.Value)));
                                dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_TOTAL.Value-dmBD.tbPrestacoesPRE_VLSUBT.Value;
                                //
                                dmBD.tbPrestacoesPRE_DTBASE.Value := StrtoDate(FloattoStr(dmBD.tbPrestacoesPRE_DIVENC.Value)+Copy(DatetoStr(dmBD.tbPrestacoesPRE_DTBASE.Value),3,8));
                                dmBD.tbPrestacoesPRE_DTLIMI.Value := Datafinal(IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1),-1);
                            End
                            Else
                            Begin
                                dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
                                dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                                //
                                dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_PEJURO.Value);
                                dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_TOTAL.Value-dmBD.tbPrestacoesPRE_VLSUBT.Value;
                                //
                                dmBD.tbPrestacoesPRE_DTBASE.Value := dmBD.tbPrestacoesPRE_DTVENC.Value;
                                dmBD.tbPrestacoesPRE_DTLIMI.Value := Datafinal(IncMonth(dmBD.tbPrestacoesPRE_DTVENC.Value,1),-1);
                            End;
                            //
                            If (dmBD.tbPrestacoesPRE_FLJUAC.Value = False) Then
                                 dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_TOTAL.Value
                            Else
                                dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value;
                             //
                             dmBD.tbPrestacoesPRE_FLATRA.Value := 'S';
                             //
                        End;
                        // Se passar de 30 dias atrasada
                        If ((dmBD.tbPrestacoesPRE_DIASAT.Value >30)
                         And (dmBD.tbPrestacoesPRE_DIASAT.Value <=60))
                         And (dmBD.tbPrestacoesPRE_DIASAT.Value > 30) Then
                        begin
                            //
                            dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                            dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                            //
                            dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_JURVCT.Value);
                            dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_TOTAL.Value-dmBD.tbPrestacoesPRE_VLSUBT.Value;
                            //
                            If (dmBD.tbPrestacoesPRE_FLJUAC.Value = False) Then
                                 dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_TOTAL.Value
                            Else
                                dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value;
                             //
                             dmBD.tbPrestacoesPRE_FL30DIA.Value := 'S';
                             dmBD.tbPrestacoesPRE_DTBASE.Value := Datafinal(IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1),-1);
                             dmBD.tbPrestacoesPRE_DTLIMI.Value := Datafinal(IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1),1);
                             //
                        End;
                      End;
                        // Se passar de 60 dias
                        If ((dmBD.tbPrestacoesPRE_DIASAT.Value >60) and (dmBD.tbPrestacoesPRE_DIASAT.Value <90))//then
                         And (dmBD.tbPrestacoesPRE_QTDIAS.Value > 30) Then
                        begin
                            //
                            dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
                            dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                            //
                            dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_PEJURO.Value);
                            dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_TOTAL.Value-dmBD.tbPrestacoesPRE_VLSUBT.Value;
                            //
                            dmBD.tbPrestacoesPRE_DTBASE.Value := IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1);
                            dmBD.tbPrestacoesPRE_DTLIMI.Value := Datafinal(IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1),-1);
                            //
                            If (dmBD.tbPrestacoesPRE_FLJUAC.Value = False) Then
                                 dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_TOTAL.Value
                            Else
                                dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value;
                             //
                             dmBD.tbPrestacoesPRE_FL60DIA.Value := True;
                             dmBD.tbPrestacoesPRE_FL60DIA2.Value := 'S';
                             //
                        End;
                        // Se passar de 90 dias
                        If (dmBD.tbPrestacoesPRE_DIASAT.Value >90)
                         And (dmBD.tbPrestacoesPRE_QTDIAS.Value > 30) Then
                        begin
                            //
                            dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
                            dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                            //
                            dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_PEJURO.Value);
                            dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_TOTAL.Value-dmBD.tbPrestacoesPRE_VLSUBT.Value;
                            //
                            If (dmBD.tbPrestacoesPRE_DIASAT.Value > 120) Then
                            begin
                                 dmBD.tbPrestacoesPRE_DTBASE.Value := IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1);
                                 dmBD.tbPrestacoesPRE_DTLIMI.Value := Datafinal(IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1),-1);
                            End
                            Else
                            begin
                                 dmBD.tbPrestacoesPRE_DTBASE.Value := Datafinal(IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1),-1);
                                 dmBD.tbPrestacoesPRE_DTLIMI.Value := IncMonth(dmBD.tbPrestacoesPRE_DTBASE.Value,1);
                            End;
                            //
                            If (dmBD.tbPrestacoesPRE_FLJUAC.Value = False) Then
                                 dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_TOTAL.Value
                            Else
                                dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value;
                             //
                        End;
                      //End;      // Fim-1º-se
                    End;
                  End  // Data do cadastros
                  Else
                  begin
                       dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
                       dmBD.tbPrestacoesPRE_DTBASE.Value := dmBD.tbPrestacoesPRE_DTCADA.Value;
                       dmBD.tbPrestacoesPRE_FLATRA.Value := 'N';
                       dmBD.tbPrestacoesPRE_FL30DIA.Value := 'N';
                       dmBD.tbPrestacoesPRE_FL60DIA.Value := False;
                       dmBD.tbPrestacoesPRE_FL60DIA2.Value := 'N';
                       dmBD.tbPrestacoesPRE_FLATRA.Value := 'N';
                       dmBD.tbPrestacoesPRE_DTLIMI.Value := M_DTBASE
                  End;
                  //
                  dmBD.tbPrestacoes.Next;
               End;                     //fim-do-enquanto.
               //
               dmBD.tbPrestacoes.EnableConstraints;
         End;
    End;
    //
    If (M_NMFORM = 'PRINT_CLIENTE') Then
    begin
         dmBD.tbContratos.Edit;
         M_CDCLIE := dmBD.tbContratosCTC_CDCLIEN.Value;
         dmBD.tbContratos.Cancel;
          //
          Application.CreateForm(TfrmRelImoClie,frmRelImoClie);{Carrega form na memória}
          Try
              //
              With frmRelImoClie Do
              begin
                   txtEmpresa.Caption := frmNetImo.NMEMPRE();
                   txtUsuario.Caption := uNetImo.M_NMUSUA;
              End;
              //
              With frmRelImoClie.qryImoCli do
              begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACIMO Where IMO_CDCLIE='+QuotedStr(M_CDCLIE));
                   Prepare;
                   Open;
              End;
              //
              frmRelImoClie.qrImoCli.Preview
          Finally
              frmRelImoClie.Free;     {Libera Memória}
         End;
    End;
    Close;
end;

procedure TfrmSeleCliente.GridClientesKeyPress(Sender: TObject;
  var Key: Char);
begin
      M_LETRAS := M_LETRAS+uppercase(key); // acumula as letras digitadas
{      If M_CAMPO_PESQ = 'CODIGO' Then
          dmBD.tbContratos.LOCATE('CTC_CDCONT',M_LETRAS,[loPartialKey]); // Efetua a procura}
        //   dmBD.tbClientes.LOCATE('CLI_CDCLIE',M_LETRAS,[loPartialKey]); // Efetua a procura
      //If M_CAMPO_PESQ = 'NOME' Then
          dmBD.tbContratos.LOCATE('CTC_NMCLIE',M_LETRAS,[loPartialKey]); // Efetua a procura
      //
      edtPesquisa.Text := edtPesquisa.Text+M_LETRAS;
end;

procedure TfrmSeleCliente.GridClientesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF (KEY=38) or (key=40) then // avalio se é seta para cima ou para baixo;
          M_LETRAS :='';
     edtPesquisa.Text := '';
end;

procedure TfrmSeleCliente.GridClientesCellClick(Column: TColumn);
begin
       M_LETRAS := '';
       edtPesquisa.Text := '';
end;

procedure TfrmSeleCliente.FormActivate(Sender: TObject);
begin
       If (dmBD.tbContratos.Active = False) Then
           dmBD.tbContratos.Open;
       dmBD.tbContratos.IndexFieldNames := 'CTC_NMCLIE';
       //
       //RadioGroup1.SetFocus;
       GridClientes.SetFocus;
end;

procedure TfrmSeleCliente.RadioGroup1Click(Sender: TObject);
begin
{     If RadioGroup1.ItemIndex = 0 Then
     BEGIN
         M_CAMPO_PESQ := 'CODIGO';
         M_LETRAS := '';
         edtPesquisa.MaxLength := 10;
         edtPesquisa.Text := '';
         GridClientes.SetFocus;
     End;
     If RadioGroup1.ItemIndex = 1 Then
     Begin
         M_CAMPO_PESQ := 'NOME';
         M_LETRAS := '';
         edtPesquisa.MaxLength := 40;
         edtPesquisa.Text := '';
         GridClientes.SetFocus;
     End;}
end;

function TfrmSeleCliente.Datafinal(dataini: tdatetime;
  dias_uteis: integer): tdatetime;
//
// Retorna uma data acresçida de mais um certo número de dias
// uteis descontando os fins de semana
//
var dw:integer;
begin
  dw := DayOfWeek(dataini)-1;
  result := dataini+dias_uteis+((dias_uteis-1+dw) div 7)*2;
end;


end.
