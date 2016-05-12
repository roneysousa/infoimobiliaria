unit uCadReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, ExtCtrls, Db, StdCtrls, Mask, DBCtrls, Buttons, Grids,
  DBGrids;

type
  TfrmContReceber = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    Label1: TLabel;
    dsContPagar: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbeDTCOMP: TDBEdit;
    Label5: TLabel;
    dbeNRNOTA: TDBEdit;
    dbeSerie: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    dbeDTVENC: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    btPrimeiro: TToolButton;
    btAnterior: TToolButton;
    btProximo: TToolButton;
    btUltimo: TToolButton;
    btAdicionar: TToolButton;
    btEditar: TToolButton;
    btExcluir: TToolButton;
    btGravar: TToolButton;
    btCancelar: TToolButton;
    btLocalizar: TToolButton;
    btSair: TToolButton;
    dsFornecedor: TDataSource;
    dsEscritorio: TDataSource;
    btGrid: TToolButton;
    Label6: TLabel;
    btNovaParcela: TToolButton;
    Label11: TLabel;
    dbtVLCOMP: TDBText;
    dblcmbCDESCR: TDBLookupComboBox;
    dblcmbCDFORN: TDBLookupComboBox;
    dbtNRCOMP: TDBText;
    bdtNRPARC: TDBText;
    dbGridContas: TDBGrid;
    procedure spCDLOJAClick(Sender: TObject);
    procedure spCDFORNClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSairClick(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure dbGridContasDblClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btGridClick(Sender: TObject);
    procedure dsContPagarStateChange(Sender: TObject);
    procedure dbeNRNOTAExit(Sender: TObject);
    procedure dbeDTCOMPExit(Sender: TObject);
    procedure dbeDTVENCExit(Sender: TObject);
    procedure btNovaParcelaClick(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure dbeCDLOJAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCDFORNKeyPress(Sender: TObject; var Key: Char);
    procedure dsContPagarDataChange(Sender: TObject; Field: TField);
    procedure btExcluirClick(Sender: TObject);
    procedure dbeSerieExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContReceber: TfrmContReceber;
  M_NRCOMP,M_NRPARC : String;
  M_CDLOJA,M_DTCOMP,M_CDFORN : String;
  M_NRNOTA,M_NRSERI,M_NMDESC : String;
  M_FLSITU: String;
  M_VLCOMP, M_VLPARC: Double;
  M_NVPARC:Boolean;

implementation

uses uBD, uNetImo,Funcoes;
//, uParcelas;

{$R *.DFM}

procedure TfrmContReceber.spCDLOJAClick(Sender: TObject);
begin
{     Application.CreateForm(TfrmPesRapida, frmPesRapida);
     Try
         frmPesRapida.Caption := 'Loja:';
         frmPesRapida.dbGridPesq.DataSource := dsLoja;
         frmPesRapida.dbGridPesq.Columns[0].FieldName := 'LOJ_CDLOJA';
         frmPesRapida.dbGridPesq.Columns[1].FieldName := 'LOJ_NMLOJA';
         frmPesRapida.dbGridPesq.Columns[1].Title.Caption := 'NOME';
         frmPesRapida.dbGridPesq.Align := alClient;
         frmPesRapida.ShowModal;
     finally
         frmPesRapida.Free;
     End;}
end;

procedure TfrmContReceber.spCDFORNClick(Sender: TObject);
begin
{     Application.CreateForm(TfrmPesRapida, frmPesRapida);
     Try
         frmPesRapida.Caption := 'Fornecedor';
         frmPesRapida.dbGridPesq.DataSource := dsFornecedor;
         frmPesRapida.dbGridPesq.Columns[0].FieldName := 'FOR_CDFORN';
         frmPesRapida.dbGridPesq.Columns[1].FieldName := 'FOR_NMFORN';
         frmPesRapida.dbGridPesq.Columns[1].Title.Caption := 'NOME';
         frmPesRapida.dbGridPesq.Align := alClient;
         frmPesRapida.ShowModal;
     finally
         frmPesRapida.Free;
     End;}
end;

procedure TfrmContReceber.btPrimeiroClick(Sender: TObject);
begin
    // Vai para o primeiro registro
    If Not(dmBD.tbContPagar.Bof) Then
        dmBD.tbContPagar.First;
end;

procedure TfrmContReceber.btAnteriorClick(Sender: TObject);
begin
    // Vai para o registro anterior
    If Not(dmBD.tbContPagar.Bof) Then
        dmBD.tbContPagar.Prior;
end;

procedure TfrmContReceber.btProximoClick(Sender: TObject);
begin
    // Vai para o próximo registro
    If Not(dmBD.tbContPagar.Eof) Then
        dmBD.tbContPagar.Next;
end;

procedure TfrmContReceber.btUltimoClick(Sender: TObject);
begin
    // Vai para o registro último.
    If Not(dmBD.tbContPagar.Eof) Then
        dmBD.tbContPagar.Last;
end;

procedure TfrmContReceber.FormActivate(Sender: TObject);
begin
     // abre as tabelas
     If Not(dmBD.tbParametros.Active) then
         dmBD.tbParametros.Open;
     If (dmBD.tbContPagar.Active = False) Then
         dmBD.tbContPagar.Open;
     If (dmBD.tbEscritorio.Active = False) Then
         dmBD.tbEscritorio.Open;
     If (dmBD.tbFornecedores.Active = False) Then
         dmBD.tbFornecedores.Open;
     //
    uNetImo.JanelaAtiva := 'Contas a Pagar';
    frmNetImo.mnuNavegacao.Enabled := True;
    // Excluir registros
    If Not (frmNetImo.Acesso(uNetImo.M_CDUSUA,'Exclusao')) Then
    Begin
        If (uNetImo.M_CDUSUA<>'000') Then
        begin
             frmNetImo.mnuExcluirItem.Visible := False;
             btExcluir.Visible                  := False;
        End;
    End;
    //
    dbGridContas.Align := alClient;
    dbGridContas.SetFocus;
end;

procedure TfrmContReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     // Libera o filtro
     dmBD.tbContPagar.filtered := False;
     frmNetImo.mnuNavegacao.Enabled := False;     
     //
     dmBD.tbParametros.Close;
     dmBD.tbContPagar.Close;
     dmBD.tbEscritorio.Close;
     dmBD.tbFornecedores.Close;
     //
     Action := caFree;
end;

procedure TfrmContReceber.btSairClick(Sender: TObject);
begin
    If (dsContPagar.State in [dsInsert,dsEdit]) Then
    begin
         If Application.MessageBox( 'Salvar alterações pendentes?',
             'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
             dmBD.tbContPagar.Post
         Else
             dmBD.tbContPagar.Cancel;
    End;
    // Fechar o formulário
    Close;
end;

procedure TfrmContReceber.btAdicionarClick(Sender: TObject);
Var
    M_FLSITU :String;
begin
    Try
            dbGridContas.Visible := False;
            //
            M_NVPARC := False;
            M_NRPARC := '01';
            M_FLSITU := 'A';
            // Incluir um novo registro
            dmBD.tbContPagar.Append;
            dmBD.tbContPagarPAG_NRPARC.Value := M_NRPARC;
            dmBD.tbContPagarPAG_DTCOMP.value := Date();
            dmBD.tbContPagarPAG_FLSITU.Value := M_FLSITU;
            dmBD.tbContPagarPAG_CDUSUA.Value := uNetImo.M_CDUSUA;  
     Except
            ShowMessage('Error ao tentar incluir conta.');
     End;
    //
end;

procedure TfrmContReceber.btGravarClick(Sender: TObject);
var
   W_NRCOMP : String;
   W_VLCOMP,W_VLPARC:Double;
begin
    Try
        If (dsContPagar.State in [dsInsert]) Then
        begin
            dmBD.tbParametros.edit;
            dmBD.tbParametrosPAR_CDCOMP.Value :=
              funcoes.StrZero(InttoStr(StrtoInt(dmBD.tbParametrosPAR_CDCOMP.Value)+1),10);
            If (M_NVPARC=False) Then
            begin
                 dmBD.tbParametrosPAR_NRCOMP.Value := dmBD.tbParametrosPAR_NRCOMP.Value+1;
                 dmBD.tbParametros.Post;
                 // Numero da compra
                 M_NRCOMP := Funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_NRCOMP.Value),7);
                 dmBD.tbContPagarPAG_NRCOMP.Value := M_NRCOMP;
            End;
            dmBD.tbContPagarPAG_CDCOMP.Value := dmBD.tbParametrosPAR_CDCOMP.Value;
        End;
        //
        W_VLPARC := 0;
        W_VLCOMP := 0;
        W_NRCOMP:= dmBD.tbContPagarPAG_NRCOMP.Value;
        dmBD.tbContPagar.Post;
        // aplica o filtro
       dmBD.tbContPagar.Filter   := 'PAG_NRCOMP='+W_NRCOMP;
       dmBD.tbContPagar.filtered := True;
       //
       dmBD.tbContPagar.DisableConstraints;
       dmBD.tbContPagar.First;
       While not (dmBD.tbContPagar.Eof)do
       begin
        //
             dmBD.tbContPagar.edit;
            // If  (dmBD.tbContPagarPAG_NRCOMP.Value=W_NRCOMP) Then
             //begin
                  W_VLPARC := dmBD.tbContPagarPAG_VLPARC.Value;
                  W_VLCOMP := W_VLCOMP+W_VLPARC;
            // End;
             //
             dmBD.tbContPagar.Next;
       End;
       //
       dmBD.tbContPagar.First;
       While not (dmBD.tbContPagar.Eof)do
       begin
            dmBD.tbContPagar.edit;
            //If  (dmBD.tbContPagarPAG_NRCOMP.Value=W_NRCOMP) Then
            //begin
                 dmBD.tbContPagarPAG_VLCOMP.Value := W_VLCOMP;
                 dmBD.tbContPagar.Post;
            //End;
            dmBD.tbContPagar.Next;
       End;
       //
       dmBD.tbContPagar.EnableConstraints;
       //
       dmBD.tbContPagar.filtered := False;
       dbGridContas.Visible := True;
    Except
            ShowMessage('Error ao tentar gravar conta.');
    End;
end;

procedure TfrmContReceber.btEditarClick(Sender: TObject);
begin
     dbGridContas.Visible := False;
     //
     dmBD.tbContPagar.edit;
     //M_VLCOMP := dmBD.tbContPagarPAG_VLCOMP.Value;
     dblcmbCDESCR.SetFocus;
end;

procedure TfrmContReceber.dbGridContasDblClick(Sender: TObject);
begin
     btEditarClick(Sender);
end;

procedure TfrmContReceber.btCancelarClick(Sender: TObject);
begin
     dmBD.tbContPagar.Cancel;
     dbGridContas.Visible := True;
end;

procedure TfrmContReceber.btGridClick(Sender: TObject);
begin
     dmBD.tbContPagar.filtered := False;
     dbGridContas.Visible := true;
end;

procedure TfrmContReceber.dsContPagarStateChange(Sender: TObject);
begin
    btPrimeiro.Enabled := dsContPagar.State in [dsBrowse];
    btAnterior.Enabled := dsContPagar.State in [dsBrowse];
    btProximo.Enabled := dsContPagar.State in [dsBrowse];
    btUltimo.Enabled := dsContPagar.State in [dsBrowse];
    //
    btAdicionar.Enabled := dsContPagar.State in [dsBrowse];
    btEditar.Enabled := dsContPagar.State in [dsBrowse];
    btExcluir.Enabled := dsContPagar.State in [dsBrowse];
    //
    btGravar.Enabled := dsContPagar.State in [dsInsert,dsEdit];
    btCancelar.Enabled := dsContPagar.State in [dsInsert,dsEdit];
    //
    btLocalizar.Enabled := dsContPagar.State in [dsBrowse];
    btNovaParcela.Enabled := dsContPagar.State in [dsBrowse];
    btSair.Enabled := dsContPagar.State in [dsBrowse];
    btGrid.Enabled := dsContPagar.State in [dsBrowse];
    // barra de status
     If dsContPagar.State in [dsInsert] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de inserção';
     If dsContPagar.State in [dsEdit] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de edição';
     If dsContPagar.State in [dsBrowse] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de navegação';
end;

procedure TfrmContReceber.dbeNRNOTAExit(Sender: TObject);
begin
    dbeNRNOTA.Text := funcoes.StrZero(dbeNRNOTA.Text,10);
end;

procedure TfrmContReceber.dbeDTCOMPExit(Sender: TObject);
begin
     try
          StrToDate(dbeDTCOMP.Text);
     except
          on EConvertError do
          begin
               Application.MessageBox( 'A data digitada não é válida.',
                               'Data Inválida', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeDTCOMP.SetFocus;
          End;
     end;
end;

procedure TfrmContReceber.dbeDTVENCExit(Sender: TObject);
begin
     try
          StrToDate(dbeDTVENC.Text);
     except
          on EConvertError do
          begin
               Application.MessageBox( 'A data digitada não é válida.',
                               'Data Inválida', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeDTVENC.SetFocus;
          End;
     end;
end;

procedure TfrmContReceber.btNovaParcelaClick(Sender: TObject);
Var
    W_NRPARC:INTEGER;
    W_NRCOMP:String;
begin
   Try
     // Inclui uma nova parcela.
     dmBD.tbContPagar.edit;
     //
         M_NRCOMP := dmBD.tbContPagarPAG_NRCOMP.Value;
         M_CDLOJA := dmBD.tbContPagarPAG_CDLOJA.Value;
         M_DTCOMP := DatetoStr(dmBD.tbContPagarPAG_DTCOMP.Value);
         M_CDFORN := dmBD.tbContPagarPAG_CDFORN.Value;
         M_NRNOTA := dmBD.tbContPagarPAG_NRNOTA.Value;
         M_NRSERI := dmBD.tbContPagarPAG_NRSERI.Value;
         M_NMDESC := dmBD.tbContPagarPAG_NMDESC.Value;
         M_FLSITU := dmBD.tbContPagarPAG_FLSITU.Value;
         M_VLCOMP := dmBD.tbContPagarPAG_VLCOMP.Value;
     dmBD.tbContPagar.Cancel;
     //
     //W_NRCOMP := dmBD.tbContPagarPAG_NRCOMP.Value;
     M_NVPARC := True;
    // W_NRPARC := 0;
     dmBD.tbContPagar.Filter   := 'PAG_NRCOMP='+M_NRCOMP;
     dmBD.tbContPagar.Filtered := True;
     W_NRPARC := dmBD.tbContPagar.RecordCount;
     dmBD.tbContPagar.Filtered := False;
     //
   {  dmBD.tbParametros.edit;
     dmBD.tbParametrosPAR_CDCOMP.Value :=
          funcoes.StrZero(InttoStr(StrtoInt(dmBD.tbParametrosPAR_CDCOMP.Value)+1),10);
     dmBD.tbParametros.Post;}
     //
         dmBD.tbContPagar.Append;
         //dmBD.tbContPagarPAG_CDCOMP.Value := dmBD.tbParametrosPAR_CDCOMP.Value;
         dmBD.tbContPagarPAG_NRCOMP.Value := M_NRCOMP;
         dmBD.tbContPagarPAG_CDLOJA.Value := M_CDLOJA;
         dmBD.tbContPagarPAG_DTCOMP.Value := StrtoDate(M_DTCOMP);
         dmBD.tbContPagarPAG_CDFORN.Value := M_CDFORN;
         dmBD.tbContPagarPAG_NRNOTA.Value := M_NRNOTA;
         dmBD.tbContPagarPAG_NRSERI.Value := M_NRSERI;
         dmBD.tbContPagarPAG_NMDESC.Value := M_NMDESC;
         dmBD.tbContPagarPAG_FLSITU.Value := M_FLSITU;
         dmBD.tbContPagarPAG_VLCOMP.Value := M_VLCOMP;
         dmBD.tbContPagarPAG_NRPARC.Value := funcoes.StrZero(InttoStr(W_NRPARC+1),2);
         dmBD.tbContPagarPAG_DTCOMP.value := Date;
         dmBD.tbContPagarPAG_FLSITU.Value := 'A';
         //
         dbGridContas.Visible := False;
         dbeDTVENC.SetFocus;
   Except
         ShowMessage('Error ao tentar incluir nova parcela.');
   End;
end;

procedure TfrmContReceber.btLocalizarClick(Sender: TObject);
Var
    M_NRCOMP:String;
begin
    M_NRCOMP := InputBox('N.º Compra','Digite o número da compra?','');
    If Not funcoes.Empty(M_NRCOMP) Then
    begin
         M_NRCOMP := funcoes.StrZero(M_NRCOMP,7);
         If not (dmBD.tbContPagar.Locate('PAG_NRCOMP',M_NRCOMP,
                 [loCaseInsensitive,loPartialKey])) Then
         begin
              Application.MessageBox('Compra não encontado.',
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
         End;
    End;
end;

procedure TfrmContReceber.dbeCDLOJAKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8] ) then
          key:=#0;
end;

procedure TfrmContReceber.dbeCDFORNKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8] ) then
          key:=#0;
end;

procedure TfrmContReceber.dsContPagarDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmNetImo.barStatus.Panels[2].Text := ' Registro: ' + IntToStr(dsContPagar.DataSet.RecNo) +
                          ' de ' + IntToStr(dsContPagar.DataSet.RecordCount);
end;

procedure TfrmContReceber.btExcluirClick(Sender: TObject);
begin
    If Application.MessageBox('Deseja eliminar este registro:', 'Exclusão de Conta a Pagar',
                  MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
         dmBD.tbContPagar.delete;             // Apagar o regitro atual.
end;

procedure TfrmContReceber.dbeSerieExit(Sender: TObject);
begin
    dbeSerie.Text := funcoes.StrZero(dbeSerie.Text,2);
end;

procedure TfrmContReceber.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{     If (dsFornecedor.State in [dsInsert,dsEdit]) Then
     begin
         If Application.MessageBox('Salvar alterações?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
             dmBD.tbFornecedores.Post
         Else
             dmBD.tbFornecedores.Cancel;
     End;}
end;

end.
