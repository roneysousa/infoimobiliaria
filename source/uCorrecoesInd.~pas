unit uCorrecoesInd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls,
  Db, ToolWin;

type
  TfrmCorrecoes = class(TForm)
    ToolBar1: TToolBar;
    tbPrimeiro: TToolButton;
    tbAnterior: TToolButton;
    btProximo: TToolButton;
    btUltimo: TToolButton;
    btIncluir: TToolButton;
    btEditar: TToolButton;
    btDelete: TToolButton;
    btGravar: TToolButton;
    btCancela: TToolButton;
    btLocalizar: TToolButton;
    btFechar: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    dbeVLCORR: TDBEdit;
    Label5: TLabel;
    dsCorrIndeces: TDataSource;
    dsIndices: TDataSource;
    Label3: TLabel;
    DBText3: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    GridCorrecoes: TDBGrid;
    DBText2: TDBText;
    Image1: TImage;
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure dsCorrIndecesStateChange(Sender: TObject);
    procedure dsCorrIndecesDataChange(Sender: TObject; Field: TField);
    procedure btDeleteClick(Sender: TObject);
    procedure tbPrimeiroClick(Sender: TObject);
    procedure tbAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure dbeVLPERCExit(Sender: TObject);
    procedure GridCorrecoesDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    procedure ATUALIZAR_PRESTACOES;
    procedure ATUALIZAR_INDICES(W_CDINDI:String;W_PECORR:Double);
    { Public declarations }
  end;

var
  frmCorrecoes: TfrmCorrecoes;

implementation

uses uBD, uNetImo, Funcoes;

{$R *.DFM}

procedure TfrmCorrecoes.btFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmCorrecoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbParametros.Close;
     dmBD.tbIndices.Close;
     dmBD.tbCorrecInd.Close;
     dmBD.tbPrestacoes.Close;
     //
     Action := caFree;
end;

procedure TfrmCorrecoes.FormActivate(Sender: TObject);
begin
     If (dmBD.tbParametros.Active = False) Then
        dmBD.tbParametros.Open;
     If (dmBD.tbIndices.Active = False) Then
        dmBD.tbIndices.Open;
     If (dmBD.tbCorrecInd.Active = False) Then
        dmBD.tbCorrecInd.Open;
     If (dmBD.tbPrestacoes.Active = False) Then
        dmBD.tbPrestacoes.Open;
     //
     GridCorrecoes.Align := alClient;
     GridCorrecoes.SetFocus; 
end;

procedure TfrmCorrecoes.btIncluirClick(Sender: TObject);
begin
     Try
        GridCorrecoes.Visible := False;
        dmBD.tbCorrecInd.Append;
        dmBD.tbCorrecIndCOR_DTCORR.Value := Date();
        dmBD.tbCorrecIndCOR_CDUSUA.Value := uNetImo.M_NMUSUA;
        DBLookupComboBox1.Setfocus;
     Except
        ShowMessage('Error ao tentar incluir registro.');
        dmBD.tbCorrecInd.Cancel;
        GridCorrecoes.Visible := True;
     End;
end;

procedure TfrmCorrecoes.btEditarClick(Sender: TObject);
begin
     Try
        GridCorrecoes.Visible := False;
        dmBD.tbCorrecInd.Edit;
     Except
        ShowMessage('Error ao tentar editar registro.');
        dmBD.tbCorrecInd.Cancel;
        GridCorrecoes.Visible := True;
     End;
end;

procedure TfrmCorrecoes.btGravarClick(Sender: TObject);
begin
     Try
        //
        If (dsCorrIndeces.State in [dsInsert]) Then
        begin
             dmBD.tbParametros.Edit;
             dmBD.tbParametrosPAR_CDCORR.Value := dmBD.tbParametrosPAR_CDCORR.Value+1;
             dmBD.tbParametros.Post;
             //
             dmBD.tbCorrecIndCOR_NRCORR.Value := Funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDCORR.Value),10);
        End;
        //
       GridCorrecoes.Visible := True;
       dmBD.tbCorrecInd.Post;
       // Atualizar os valores na tabela de Indices
       dmBD.tbIndices.FindKey([dmBD.tbCorrecIndCOR_CDINDI.Value]);
       dmBD.tbIndices.Edit;
       dmBD.tbIndicesIND_VLCORR.Value := dmBD.tbCorrecIndCOR_VLCORR.Value;
       dmBD.tbIndices.post;
       //
       ATUALIZAR_INDICES(dmBD.tbIndicesIND_CDINDI.Value,dmBD.tbCorrecIndCOR_VLCORR.Value);
       //ATUALIZAR_PRESTACOES;
     Except
        ShowMessage('Error ao tentar gravar registro.');
        dmBD.tbCorrecInd.Cancel;
        GridCorrecoes.Visible := True;
     End;
end;

procedure TfrmCorrecoes.btCancelaClick(Sender: TObject);
begin
     Try
        GridCorrecoes.Visible := True;
        dmBD.tbCorrecInd.Cancel;
     Except
        ShowMessage('Error ao tentar cancelar alteração registro.');
     End;
end;

procedure TfrmCorrecoes.dsCorrIndecesStateChange(Sender: TObject);
begin
    tbPrimeiro.Enabled := dsCorrIndeces.State in [dsBrowse];
    tbAnterior.Enabled := dsCorrIndeces.State in [dsBrowse];
    btProximo.Enabled  := dsCorrIndeces.State in [dsBrowse];
    btUltimo.Enabled   := dsCorrIndeces.State in [dsBrowse];
    //
    btIncluir.Enabled := dsCorrIndeces.State in [dsBrowse];
    btEditar.Enabled := dsCorrIndeces.State in [dsBrowse];
    btDelete.Enabled := (dsCorrIndeces.State in [dsBrowse])
             and (dmBD.tbCorrecInd.RecordCount > 0);
    //
    btGravar.Enabled := dsCorrIndeces.State in [dsInsert,dsEdit];
    btCancela.Enabled := dsCorrIndeces.State in [dsInsert,dsEdit];
    //
    btLocalizar.Enabled := dsCorrIndeces.State in [dsBrowse];
    btFechar.Enabled := dsCorrIndeces.State in [dsBrowse];
    // barra de status
     If dsCorrIndeces.State in [dsInsert] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de inserção';
     If dsCorrIndeces.State in [dsEdit] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de edição';
     If dsCorrIndeces.State in [dsBrowse] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de navegação';
end;

procedure TfrmCorrecoes.dsCorrIndecesDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmNetImo.barStatus.Panels[2].Text := ' Registro: ' + IntToStr(dsCorrIndeces.DataSet.RecNo) +
                          ' de ' + IntToStr(dsCorrIndeces.DataSet.RecordCount);
end;

procedure TfrmCorrecoes.btDeleteClick(Sender: TObject);
begin
     Try
         If Application.MessageBox('Deseja eliminar este registro:', 'Exclusão de registro',
                   MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
           dmBD.tbCorrecInd.delete;             // Apagar o regitro atual.
     Except
           Application.MessageBox('Este registro não pode ser excluido agora.', 'Error',
                     MB_OK+MB_ICONINFORMATION);
     End;
end;

procedure TfrmCorrecoes.tbPrimeiroClick(Sender: TObject);
begin
     If not (dmBD.tbCorrecInd.Bof) Then
             dmBD.tbCorrecInd.First;
end;

procedure TfrmCorrecoes.tbAnteriorClick(Sender: TObject);
begin
     If not (dmBD.tbCorrecInd.Bof) Then
             dmBD.tbCorrecInd.Prior;
end;

procedure TfrmCorrecoes.btProximoClick(Sender: TObject);
begin
     If not (dmBD.tbCorrecInd.Eof) Then
             dmBD.tbCorrecInd.Next;
end;

procedure TfrmCorrecoes.btUltimoClick(Sender: TObject);
begin
     If not (dmBD.tbCorrecInd.Eof) Then
             dmBD.tbCorrecInd.Last;
end;

procedure TfrmCorrecoes.dbeVLPERCExit(Sender: TObject);
begin
     If (dsCorrIndeces.State in [dsInsert]) Then
       dmBD.tbCorrecIndCOR_VLPERC.Value := dmBD.tbCorrecIndCOR_VLPERC.Value/100;
end;

procedure TfrmCorrecoes.GridCorrecoesDblClick(Sender: TObject);
begin
       btEditarClick(Sender);
end;

procedure TfrmCorrecoes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If (dsCorrIndeces.State in [dsInsert,dsEdit]) Then
     begin
         If Application.MessageBox('Salvar alterações?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
             dmBD.tbCorrecInd.Post
         Else
             dmBD.tbCorrecInd.Cancel;
     End;
end;

procedure TfrmCorrecoes.ATUALIZAR_PRESTACOES;
begin
     //dmBD.tbPrestacoes.Filter   :=  'PRE_DTVENC>='+QuotedStr(dbeDTINIC.Text)+' and PRE_DTVENC<='+QuotedStr(dbeDTFINA.Text)+' AND PRE_FLSITU='+QuotedStr('A');
     dmBD.tbPrestacoes.Filter   :=  'PRE_FLSITU='+QuotedStr('A');
     dmBD.tbPrestacoes.Filtered := True;
     dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
     dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
     frmNetImo.barStatus.Panels[1].Text := 'Aguarde!!! Atualizado prestações...';
     //
     While not (dmBD.tbPrestacoes.Eof) Do
     begin
         dmBD.tbPrestacoes.edit;
         //   Calcular Sub-Total e TOTAL
         dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
         dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
         //
         If (dmBD.tbPrestacoesPRE_FLJUAC.Value= True) Then
         begin
             //dmBD.tbPrestacoesPRE_PEJURO.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_PEJURO.Value+1);
             //dmBD.tbPrestacoesPRE_PEJURO.Value := (dmBD.tbprestacoespre_PREST.Value/100);
             dmBD.tbPrestacoesPRE_VLJURO.Value := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_PEJURO.Value)*100;
             //dmBD.tbPrestacoesPRE_VLSUBT.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_PEJURO.Value);
             dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value;
             //Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value);
         End
         Else
         begin
             dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value*0.01;
             //Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLSUBT.Value*0.01);
             dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value;
             //Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value);
         End;
         // Proximo registro
         dmBD.tbPrestacoes.Next;
     End;               //Fim-do-enquanto
    // Libera Filtro
    dmBD.tbPrestacoes.Filtered := False;
    dmBD.tbPrestacoes.EnableConstraints;
    frmNetImo.barStatus.Panels[1].Text := ' ';
end;

procedure TfrmCorrecoes.ATUALIZAR_INDICES(W_CDINDI: String;
  W_PECORR: Double);
begin
           try
              Screen.Cursor := crHourGlass;
             // dmBD.tbPrestacoes.Filter   := 'PRE_CDINID='+W_CDINDI+' And PRE_FLSITU='+QuotedStr('A');
              dmBD.tbPrestacoes.Filter   :='PRE_FLSITU='+QuotedStr('A');
              dmBD.tbPrestacoes.Filtered := True;
              dmBD.tbPrestacoes.First;
              frmNetImo.barStatus.Panels[1].Text := 'Aguarde!!! Atualizado Índices...';
              //
              While not (dmBD.tbPrestacoes.Eof) Do
              Begin
                   dmBD.tbPrestacoes.Edit;
                   If (dmBD.tbPrestacoesPRE_CDINDI.Value=W_CDINDI) Then
                   begin
                        //dmBD.tbPrestacoesPRE_VLATUAL.Value := dmBD.tbPrestacoesPRE_VLATUAL.Value+W_PECORR;
                        //dmBD.tbPrestacoesPRE_VLACUM.Value  := dmBD.tbPrestacoesPRE_VLATUAL.Value+dmBD.tbPrestacoesPRE_PECORR.Value/100;
                        //dmBD.tbPrestacoesPRE_VLACUM.Value  := 0;
                        //dmBD.tbPrestacoesPRE_VLATUAL.Value := 0;
                        dmBD.tbPrestacoesPRE_PECORR.Value  := W_PECORR;

                   End;
                   //
                   dmBD.tbPrestacoes.Next;
              End;
              //  Libera o filtro
              dmBD.tbPrestacoes.Filtered := False;
          finally
                 Screen.Cursor := crDefault;
                 frmNetImo.barStatus.Panels[1].Text := '';
          end;
end;

end.

