unit uManuPretacoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, Db, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  Buttons;

type
  TfrmManuPrestacoes = class(TForm)
    ToolBar1: TToolBar;
    btPrimeiro: TToolButton;
    btAnterior: TToolButton;
    btProximo: TToolButton;
    btUltimo: TToolButton;
    btAdicionar: TToolButton;
    btEditar: TToolButton;
    btExcluir: TToolButton;
    btGravar: TToolButton;
    btCancelar: TToolButton;
    btGrid: TToolButton;
    btSair: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    dsPrestacoes: TDataSource;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    DBMemo1: TDBMemo;
    Label17: TLabel;
    Label18: TLabel;
    dsContrato: TDataSource;
    DBText4: TDBText;
    dsClientes: TDataSource;
    btAditivo: TToolButton;
    tbAtualizaReceber: TToolButton;
    DBCheckBox1: TDBCheckBox;
    GridPrestacoes: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSairClick(Sender: TObject);
    procedure dsPrestacoesStateChange(Sender: TObject);
    procedure dsPrestacoesDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure GridPrestacoesDblClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure btGridClick(Sender: TObject);
    procedure btAditivoClick(Sender: TObject);
    procedure tbAtualizaReceberClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
  private
    Procedure JANELA_CLIENTES;
    { Private declarations }
  public
     Procedure ATUALIZAR_PRESTACOES;
     Procedure PRES_CLIENTE_ATUAL;
     Procedure PRES_CLIENTE_ATUAL2;
     Procedure ADITIVO_CONTRATO;
     Procedure ATUALIZAR_RECEBER;
    { Public declarations }
  end;

var
  frmManuPrestacoes: TfrmManuPrestacoes;
  M_VLINDI,M_JUROS,M_VLANTE, M_VLATUA,M_VLCORR  : Double;
  M_POCORR,M_SBTOTA,M_VLJURO,M_POJURO : Double;
  M_TOTAL : Double;

implementation

uses uBD, uNetImo, Funcoes, uSelCliente, uAditivo;

{$R *.DFM}

procedure TfrmManuPrestacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbPrestacoes.Filtered := False;
     //
     dmBD.tbPrestacoes.Close;
     dmBD.tbIndices.Close;
     dmBD.tbContratos.Close;
     Funcoes.Limpar_Status;
     //
     Action := caFree;
end;

procedure TfrmManuPrestacoes.btSairClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmManuPrestacoes.dsPrestacoesStateChange(Sender: TObject);
begin
    btPrimeiro.Enabled := dsPrestacoes.State in [dsBrowse];
    btAnterior.Enabled := dsPrestacoes.State in [dsBrowse];
    btProximo.Enabled := dsPrestacoes.State in [dsBrowse];
    btUltimo.Enabled := dsPrestacoes.State in [dsBrowse];
    //
    btAdicionar.Enabled := dsPrestacoes.State in [dsBrowse];
    btEditar.Enabled := dsPrestacoes.State in [dsBrowse];
    btExcluir.Enabled := (dsPrestacoes.State in [dsBrowse])
       and (dmBD.tbPrestacoes.RecordCount > 0);
    //
    btGravar.Enabled := dsPrestacoes.State in [dsInsert,dsEdit];
    btCancelar.Enabled := dsPrestacoes.State in [dsInsert,dsEdit];
    //
    btGrid.Enabled      := dsPrestacoes.State in [dsBrowse];
   //btLocalizar.Enabled := dsPrestacoes.State in [dsBrowse];
    btSair.Enabled      := dsPrestacoes.State in [dsBrowse];
    //
    btAditivo.Enabled := dsPrestacoes.State in [dsBrowse];
    // barra de status
     If dsPrestacoes.State in [dsInsert] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de inserção';
     If dsPrestacoes.State in [dsEdit] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de edição';
     If dsPrestacoes.State in [dsBrowse] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de navegação';
end;

procedure TfrmManuPrestacoes.dsPrestacoesDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmNetImo.barStatus.Panels[2].Text := ' Registro: ' + IntToStr(dsPrestacoes.DataSet.RecNo) +
                          ' de ' + IntToStr(dsPrestacoes.DataSet.RecordCount);
end;

procedure TfrmManuPrestacoes.FormActivate(Sender: TObject);
begin
     If (dmBD.tbPrestacoes.Active = False ) Then
        dmBD.tbPrestacoes.Open;
     If (dmBD.tbContratos.Active = False ) Then
         dmBD.tbContratos.Open;
     //
     //Funcoes.Atualizar_Receber;
     //
     GridPrestacoes.Align := alClient;
     GridPrestacoes.SetFocus;
     //
     dmBD.tbPrestacoes.First;
     While not (dmBD.tbPrestacoes.Eof) Do
     begin
           dmBD.tbPrestacoes.edit;
           // dias de atraso
           IF (dmBD.tbPrestacoesPRE_FLSITU.Value = 'A') Then
              dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
           dmBD.tbPrestacoes.next;
     End;
  //   JANELA_CLIENTES;
end;

procedure TfrmManuPrestacoes.btEditarClick(Sender: TObject);
begin
     GridPrestacoes.Visible := False;
     dmBD.tbPrestacoes.Edit;
end;

procedure TfrmManuPrestacoes.btGravarClick(Sender: TObject);
begin
      dmBD.tbPrestacoes.Post;
      GridPrestacoes.Visible := True;
end;

procedure TfrmManuPrestacoes.btCancelarClick(Sender: TObject);
begin
      dmBD.tbPrestacoes.Cancel;
      GridPrestacoes.Visible := True;
end;

procedure TfrmManuPrestacoes.GridPrestacoesDblClick(Sender: TObject);
begin
      btEditarClick(Sender);
end;

procedure TfrmManuPrestacoes.ATUALIZAR_PRESTACOES;
begin

end;

procedure TfrmManuPrestacoes.btAtualizarClick(Sender: TObject);
begin
     ATUALIZAR_PRESTACOES;
end;

procedure TfrmManuPrestacoes.PRES_CLIENTE_ATUAL;
Var
    M_CDINDI,M_CDCLIE:String;
    M_JUANTE, M_JUATUA, W_PECORR : Double;
    M_FLACUM : Boolean;
begin
     Try
         If (dmBD.tbIndices.Active = False) Then
              dmBD.tbIndices.Open;           // Abre a tabela de Indices.
         // Localizar o registro do indice
         M_CDCLIE := dmBD.tbPrestacoesPRE_CDCLIE.Value;
         dmBD.tbIndices.FindKey([dmBD.tbPrestacoesPRE_CDINDI.Value]);
         dmBD.tbIndices.Edit;
         //
         M_CDINDI := dmBD.tbIndicesIND_CDINDI.Value;
         M_POJURO := dmBD.tbIndicesIND_PEJURO.Value;
         M_POCORR := dmBD.tbIndicesIND_VLCORR.Value;
         M_FLACUM := dmBD.tbIndicesIND_JUACUM.Value;
         // Aplica filtro
         dmBD.tbPrestacoes.Filter   := 'PRE_CDINDI='+QuotedStr(M_CDINDI)+' AND PRE_FLSITU='+QuotedStr('A')+' AND PRE_CDCLIE='+QuotedStr(M_CDCLIE);
         dmBD.tbPrestacoes.Filtered := True;
         dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
         dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
         //
         dmBD.tbPrestacoes.edit;
         // Carrega valor nas variaveis
        // M_VLANTE := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLANTE.Value);
         If (M_FLACUM=True) Then
              M_VLANTE := dmBD.tbPrestacoesPRE_VLSUBT.Value
         Else
              M_VLANTE := dmBD.tbPrestacoesPRE_TOTAL.Value;
         //
         //M_VLANTE := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLSUBT.Value);
         M_JUANTE := dmBD.tbPrestacoesPRE_JUANTE.Value;
         // Calcula o sub-total
         //M_SBTOTA := (M_VLANTE*M_POCORR);       //M_VLATUA+
         M_SBTOTA := M_VLANTE+Funcoes.Gerapercentual(M_VLANTE,M_POCORR);
         M_VLATUA := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLSUBT.Value);
         //
         If (M_FLACUM=True) Then
              M_JUROS  := M_JUANTE+1
         Else
              M_JUROS  := M_JUANTE;
         //   Calcular Total
         M_TOTAL  := Funcoes.ArredontaFloat(M_SBTOTA+M_JUROS);
         M_VLJURO := Funcoes.ArredontaFloat(M_SBTOTA*(Funcoes.ArredontaFloat(M_JUROS/100)));
         //
         dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
         While not (dmBD.tbPrestacoes.Eof) Do
         begin
               dmBD.tbPrestacoes.edit;
                   dmBD.tbPrestacoesPRE_VLSUBT.Value := M_SBTOTA;
                   dmBD.tbPrestacoesPRE_TOTAL.Value  := M_TOTAL;
                   dmBD.tbPrestacoesPRE_PECORR.Value := M_POCORR;
                   dmBD.tbPrestacoesPRE_JUANTE.Value := Funcoes.ArredontaFloat(M_JUANTE);
                   If (M_FLACUM=True) Then
                       dmBD.tbPrestacoesPRE_VLANTE.Value := M_VLATUA
                   Else
                       dmBD.tbPrestacoesPRE_VLANTE.Value := M_TOTAL;
                   dmBD.tbPrestacoesPRE_PEJURO.Value := M_POJURO;
                   dmBD.tbPrestacoesPRE_VLJURO.Value := Funcoes.ArredontaFloat(M_VLJURO);
                   dmBD.tbPrestacoesPRE_VLCORR.Value := Funcoes.ArredontaFloat(M_VLCORR);
                   //
                   dmBD.tbPrestacoes.Post;
                   dmBD.tbPrestacoes.Next;
         End;
         // Libera Filtro
         dmBD.tbPrestacoes.Filtered := False;
         //
         dmBD.tbPrestacoes.EnableConstraints;           //Habilita os controles visuais
         ShowMessage('Juros:'+FloattoStr(M_JUROS)+#13
                    +'TOTAL:'+ FloattoStr(M_TOTAL)+#13
                    +'VL.juros:'+FloattoStr(M_VLJURO)+#13
                    +'Sub_Total:'+FloattoStr(M_SBTOTA)+#13
                    +'%Correção:'+FloattoStr(M_POCORR)+#13
                    +'Juros Ant:'+FloattoStr(M_JUANTE)+#13
                    +'Vl.atual:'+FloattoStr(M_VLATUA)+#13
                    +'% Juros:'+FloattoStr(M_POJURO)+#13
                    +'Vl.correção:'+FloattoStr(M_VLCORR)+#13
                    +'Vl.atua * %corr:'+FloattoStr(Funcoes.Gerapercentual(M_VLANTE,M_POCORR)));
         //
         Application.MessageBox('Atualização concluída!!!', 'ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION);
     Except
           Application.MessageBox('Error ao tentar atualiza prestações!!!', 'ERROR',
                     MB_OK+MB_ICONINFORMATION);
           //
           dmBD.tbPrestacoes.Cancel;
     End;
end;

procedure TfrmManuPrestacoes.JANELA_CLIENTES;
begin
     Application.CreateForm(TfrmSeleCliente, frmSeleCliente);
     frmSeleCliente.ShowModal;
     frmSeleCliente.Free;
end;

procedure TfrmManuPrestacoes.btGridClick(Sender: TObject);
begin
     JANELA_CLIENTES;
end;

procedure TfrmManuPrestacoes.ADITIVO_CONTRATO;
begin
end;

procedure TfrmManuPrestacoes.btAditivoClick(Sender: TObject);
Var
   W_CDCONT: String;
   W_VLPAGO,W_VLSALDO,W_VLIMOV : Double;
   W_QTPRES,W_QTPAGA:Integer;
begin
     Try
        //
        W_CDCONT := dmBD.tbPrestacoesPRE_CDCONT.Value;
        dmBD.tbContratos.Locate('CTC_CDCONT',W_CDCONT,[]);
        dmBD.tbContratos.Edit;
        W_VLPAGO := Funcoes.ArredontaFloat(dmBD.tbContratosCTC_VLPAGA.Value);
        W_VLIMOV := Funcoes.ArredontaFloat(dmBD.tbContratosCTC_VLIMOV.Value);
        W_QTPRES := dmBD.tbContratosCTC_QTPRES.Value;
        W_QTPAGA := dmBD.tbContratosCTC_QTPAGA.Value;
        dmBD.tbContratos.Cancel;
        //
        W_VLSALDO := W_VLIMOV-W_VLPAGO;
        //
        Application.CreateForm(TfrmAditivo, frmAditivo);
        uAditivo.M_SALDO  := W_VLSALDO;
        uAditivo.M_QTPARC := W_QTPRES;
        uAditivo.M_QTPAGA := W_QTPAGA;
        frmAditivo.ShowModal;
        frmAditivo.Free;
     Except
          ShowMessage('Erro ao tentar abrir formulário de Aditivo.');
     End;
end;

procedure TfrmManuPrestacoes.tbAtualizaReceberClick(Sender: TObject);
Var
    M_CDCLIE,M_CDCONT:String;
    M_VLPARC, M_VLJURO : Double;
    M_VLDEBI, M_VLTOTA : Double;
begin
    ATUALIZAR_RECEBER;
{  Try
     //
     dmBD.tbPrestacoes.Edit;
     If (dmBD.tbPrestacoesPRE_FLSITU.Value = 'P') Then
     begin
          ShowMessage('Prestação já paga.');
          dmBD.tbPrestacoes.Cancel;
          Exit;         // Sair do procedure
     End;
     //
     M_CDCLIE := dmBD.tbPrestacoesPRE_CDCLIE.Value;
     M_CDCONT := dmBD.tbPrestacoesPRE_CDCONT.Value;
     M_VLPARC := dmBD.tbPrestacoesPRE_TOTAL.Value;
     M_VLJURO := dmBD.tbPrestacoesPRE_VLJURO.Value;
     M_VLDEBI := dmBD.tbPrestacoesPRE_TOTAL.Value;
     M_VLTOTA := dmBD.tbPrestacoesPRE_TOTAL.Value;
     dmBD.tbPrestacoes.Cancel;
     //
     dmBD.tbContReceber.Open;
     //
     dmBD.tbContReceber.Filter :=  'REC_CDCONT='+M_CDCONT+'AND REC_FLRECE='+QuotedStr('A');
     dmBD.tbContReceber.Filtered := True;
     //
     //dmBD.tbContReceber.FindKey([dmBD.tbPrestacoesPRE_CDPRES.Value]);
     //dmBD.tbContReceber.Edit;
     dmBD.tbContReceber.First;
     While not (dmBD.tbContReceber.Eof) do
     begin
          //
         dmBD.tbContReceber.Edit;
         If (dmBD.tbPrestacoesPRE_FLJUAC.Value = True) Then
         begin
              dmBD.tbContReceberREC_VLPARC.Value := M_VLTOTA;
              dmBD.tbContReceberREC_VLJURO.Value := 0;
              //dmBD.tbContReceberREC_VLJURO.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLJURO.Value);
              dmBD.tbContReceberREC_VLDEBI.Value := M_VLTOTA;
              dmBD.tbContReceberREC_VLTOTA.Value := dmBD.tbPrestacoesPRE_VLIMOV.Value;
         End
         Else
         Begin
              dmBD.tbContReceberREC_VLPARC.Value := M_VLTOTA;
              dmBD.tbContReceberREC_VLJURO.Value := 0;
              //dmBD.tbContReceberREC_VLJURO.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLJURO.Value);
              dmBD.tbContReceberREC_VLDEBI.Value := M_VLTOTA;
              dmBD.tbContReceberREC_VLTOTA.Value := dmBD.tbPrestacoesPRE_VLIMOV.Value;
         End;
           //
           dmBD.tbContReceberREC_VLDESC.Value := 0;
           //
           dmBD.tbContReceber.Next;
     End;               //fim-do-enquanto
     dmBD.tbContReceber.Filtered := fALSE;;
     dmBD.tbContReceber.Close;
     //
     ShowMessage('Contas a receber deste cliente atualizada.');
  Except
     ShowMessage('Erro ao atualizar conta a receber.');
     dmBD.tbContReceber.Cancel;
  End;}
end;

procedure TfrmManuPrestacoes.btPrimeiroClick(Sender: TObject);
begin
     If not (dmBD.tbPrestacoes.Bof) Then
           dmBD.tbPrestacoes.First;
end;

procedure TfrmManuPrestacoes.btAnteriorClick(Sender: TObject);
begin
     If not (dmBD.tbPrestacoes.Bof) Then
           dmBD.tbPrestacoes.Prior;
end;

procedure TfrmManuPrestacoes.btProximoClick(Sender: TObject);
begin
     If not (dmBD.tbPrestacoes.Eof) Then
           dmBD.tbPrestacoes.Next;
end;

procedure TfrmManuPrestacoes.btUltimoClick(Sender: TObject);
begin
     If not (dmBD.tbPrestacoes.Eof) Then
           dmBD.tbPrestacoes.Last;
end;

procedure TfrmManuPrestacoes.PRES_CLIENTE_ATUAL2;
begin

end;

procedure TfrmManuPrestacoes.ATUALIZAR_RECEBER;
Var
    M_CDCLIE,M_CDCONT:String;
    M_VLPARC, M_VLJURO : Double;
    M_VLDEBI, M_VLTOTA : Double;
begin
  Try
     //
     If (dmBD.tbContReceber.Active = False) Then
         dmBD.tbContReceber.Open;
     M_CDCONT := dmBD.tbPrestacoesPRE_CDCONT.Value; 
     dmBD.tbPrestacoes.Filter    :=  'PRE_CDCONT='+M_CDCONT+' AND PRE_FLSITU='+QuotedStr('A');
     dmBD.tbPrestacoes.Filtered  := True;
     dmBD.tbPrestacoes.First;
     While not (dmBD.tbPrestacoes.Eof) do
     begin
          dmBD.tbPrestacoes.Edit;
          M_CDCLIE := dmBD.tbPrestacoesPRE_CDCLIE.Value;
          M_CDCONT := dmBD.tbPrestacoesPRE_CDCONT.Value;
          M_VLPARC := dmBD.tbPrestacoesPRE_TOTAL.Value;
          M_VLJURO := dmBD.tbPrestacoesPRE_VLJURO.Value;
          M_VLDEBI := dmBD.tbPrestacoesPRE_TOTAL.Value;
          M_VLTOTA := dmBD.tbPrestacoesPRE_TOTAL.Value;
          //
          If (dmBD.tbContReceber.FindKey([dmBD.tbPrestacoesPRE_CDPRES.Value])) Then
          begin
              dmBD.tbContReceber.Edit;
             If (dmBD.tbPrestacoesPRE_FLJUAC.Value = True) Then
             begin
                  dmBD.tbContReceberREC_VLANTE.Value := dmBD.tbPrestacoesPRE_VLANTE.Value;
                  dmBD.tbContReceberREC_VLPARC.Value := Funcoes.ArredontaFloat(M_VLTOTA);
                  dmBD.tbContReceberREC_VLJURO.Value := 0;
                  dmBD.tbContReceberREC_VLDEBI.Value := Funcoes.ArredontaFloat(M_VLTOTA);
                  dmBD.tbContReceberREC_VLTOTA.Value := dmBD.tbPrestacoesPRE_VLIMOV.Value;
             End
             Else
             Begin
                  dmBD.tbContReceberREC_VLANTE.Value := dmBD.tbPrestacoesPRE_VLANTE.Value;;
                  dmBD.tbContReceberREC_VLPARC.Value := Funcoes.ArredontaFloat(M_VLTOTA);
                  dmBD.tbContReceberREC_VLJURO.Value := 0;
                  dmBD.tbContReceberREC_VLDEBI.Value := Funcoes.ArredontaFloat(M_VLTOTA);
                  dmBD.tbContReceberREC_VLTOTA.Value := dmBD.tbPrestacoesPRE_VLIMOV.Value;
             End;
             //
             dmBD.tbContReceberREC_VLDESC.Value := 0;
             dmBD.tbContReceber.Post;
          End;
          // Proximo registro
          dmBD.tbPrestacoes.next;
     End;
     //
     dmBD.tbPrestacoes.Filtered  := False;
     //
     ShowMessage('Contas a receber deste cliente atualizada.');
     dmBD.tbContReceber.Close;
  Except
     ShowMessage('Erro ao atualizar conta a receber.');
     dmBD.tbContReceber.Cancel;
  End;
end;

end.
