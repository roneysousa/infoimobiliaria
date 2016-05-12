unit uCadReceber2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ToolWin, ComCtrls, ExtCtrls, Db, DBCtrls, StdCtrls, Mask;

type
  TfrmCadContReceber = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    Panel3: TPanel;
    dsContasReceber: TDataSource;
    btPrimeiro: TToolButton;
    btAnterior: TToolButton;
    btProximo: TToolButton;
    tbUltimo: TToolButton;
    btAdicionar: TToolButton;
    btEditar: TToolButton;
    btExcluir: TToolButton;
    btGravar: TToolButton;
    btCancelar: TToolButton;
    btLocalizar: TToolButton;
    btFechar: TToolButton;
    Label2: TLabel;
    Label3: TLabel;
    dbeNMDESC: TDBEdit;
    Label4: TLabel;
    dbeVLTOTA: TDBEdit;
    Label5: TLabel;
    dbeDTVENC: TDBEdit;
    dsEscritorio: TDataSource;
    dsClientes: TDataSource;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    lblRecebida: TLabel;
    Label8: TLabel;
    DBText1: TDBText;
    btGerarBoleto: TToolButton;
    DBText2: TDBText;
    Label7: TLabel;
    Label9: TLabel;
    Image1: TImage;
    DBEdit2: TDBEdit;
    dbGridContasRec: TDBGrid;
    DBText3: TDBText;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFecharClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure tbUltimoClick(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure dbGridContasRecDblClick(Sender: TObject);
    procedure dbeDTVENCKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDTVENCExit(Sender: TObject);
    procedure dsContasReceberStateChange(Sender: TObject);
    procedure dsContasReceberDataChange(Sender: TObject; Field: TField);
    procedure btGerarBoletoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbGridContasRecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadContReceber: TfrmCadContReceber;

implementation

uses uBD, uNetImo, funcoes, uBoleto;

{$R *.DFM}

procedure TfrmCadContReceber.FormActivate(Sender: TObject);
begin
     If (dmBD.tbPrestacoes.Active= False) Then
         dmBD.tbPrestacoes.Open;
     If (dmBD.tbParametros.Active= False) Then
         dmBD.tbParametros.Open;
     If (dmBD.tbEscritorio.Active= False) Then
         dmBD.tbEscritorio.Open;
     If (dmBD.tbClientes.Active= False) Then
         dmBD.tbClientes.Open;
     If (dmBD.tbContratos.Active = False) Then
         dmBD.tbContratos.Open;
     //
     dbGridContasRec.Align  := alClient;
     dbGridContasRec.SetFocus;
end;

procedure TfrmCadContReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dmBD.tbPrestacoes.Filtered := False;
     //
     dmBD.tbClientes.Close;
     dmBD.tbPrestacoes.Close;
     dmBD.tbParametros.Close;
     dmBD.tbEscritorio.Close;
     dmBD.tbContratos.Close;
     Action := caFree;
end;

procedure TfrmCadContReceber.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadContReceber.btPrimeiroClick(Sender: TObject);
begin
     If Not(dmBD.tbPrestacoes.Bof) Then
         dmBD.tbPrestacoes.First;
end;

procedure TfrmCadContReceber.btAnteriorClick(Sender: TObject);
begin
     If Not(dmBD.tbPrestacoes.Bof) Then
         dmBD.tbPrestacoes.Prior;
end;

procedure TfrmCadContReceber.btProximoClick(Sender: TObject);
begin
     If Not(dmBD.tbPrestacoes.Eof) Then
         dmBD.tbPrestacoes.Next;
end;

procedure TfrmCadContReceber.tbUltimoClick(Sender: TObject);
begin
     If Not(dmBD.tbPrestacoes.Eof) Then
         dmBD.tbPrestacoes.Last;
end;

procedure TfrmCadContReceber.btAdicionarClick(Sender: TObject);
begin
     Try
         dbGridContasRec.Visible := False;
         //
         dmBD.tbPrestacoes.Append;
         //dmBD.tbPrestacoesREC_NRPARC.Value := '01';
         dmBD.tbPrestacoesPRE_DTCADA.Value := Date();
         //
     Except
          Application.MessageBox('Error ao tentar incluir conta a receber.',
           'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
     End;
end;

procedure TfrmCadContReceber.btGravarClick(Sender: TObject);
begin
   Try
     If (dsContasReceber.State in [dsInsert]) Then
     begin
             dmBD.tbParametros.edit;
             dmBD.tbParametrosPAR_NRSEQU.Value := dmBD.tbParametrosPAR_NRSEQU.Value+1;
             dmBD.tbParametrosPAR_NRRECE.Value := dmBD.tbParametrosPAR_NRRECE.Value+1;
             dmBD.tbParametros.Post;
             // incluir nova conta a receber
             {dmBD.tbPrestacoesREC_NRRECE.Value := funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_NRRECE.Value),7);
             dmBD.tbPrestacoesREC_NRSEQU.Value := funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_NRSEQU.Value),10);}
     End;
     //
     {dmBD.tbPrestacoesREC_VLDEBI.Value := dmBD.tbPrestacoesREC_VLPARC.Value;
     dmBD.tbPrestacoesREC_VLTOTA.Value := dmBD.tbPrestacoesREC_VLPARC.Value;
     dmBD.tbPrestacoesREC_VLDESC.Value := 0;
     dmBD.tbPrestacoesREC_VLJURO.Value := 0;
     dmBD.tbPrestacoesREC_FLRECE.Value := 'A';
     dmBD.tbPrestacoesREC_CDUSUA.Value := uNetImo.M_CDUSUA;
     dmBD.tbPrestacoes.Post;}
     dbGridContasRec.Visible := True;
   Except

   End;
end;

procedure TfrmCadContReceber.btCancelarClick(Sender: TObject);
begin
     dmBD.tbPrestacoes.Cancel;
     dbGridContasRec.Visible := True;
end;

procedure TfrmCadContReceber.btEditarClick(Sender: TObject);
begin
     Try
          dbGridContasRec.Visible := False;
          dmBD.tbPrestacoes.Edit;
          //
          If (dmBD.tbPrestacoesPRE_FLSITU.Value = 'P') Then
          Begin
               lblRecebida.Visible := True;
               //dmBD.tbPrestacoesPRE_QTDIAS.Value := StrtoInt(FloattoStr(dmBD.tbPrestacoesPRE_DTPAGA.Value-dmBD.tbPrestacoesPRE_DTVENC.Value));
          End
          Else
          begin
               lblRecebida.Visible := False;
               //dmBD.tbPrestacoesPRE_QTDIAS.Value := dmBD.tbPrestacoesPRE_DIASAT.Value;
          End;
          //
          dbeNMDESC.SetFocus;
     Except
          Application.MessageBox('Error ao tentar editar conta a receber.',
           'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
     End;
end;

procedure TfrmCadContReceber.btExcluirClick(Sender: TObject);
begin
    If Application.MessageBox('Deseja eliminar este registro', 'Exclusão de Conta',
                  MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
         dmBD.tbPrestacoes.delete;             // Apagar o regitro atual.
end;

procedure TfrmCadContReceber.dbGridContasRecDblClick(Sender: TObject);
begin
     btEditarClick(Sender);
end;

procedure TfrmCadContReceber.dbeDTVENCKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8] ) then
         key:=#0;
end;

procedure TfrmCadContReceber.dbeDTVENCExit(Sender: TObject);
begin
     try
          StrToDate(dbeDTVENC.Text);
     except
          on EConvertError do
          begin
               Application.MessageBox('A data digitada não é válida.',
                               'Data Inválida', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeDTVENC.SetFocus;
          End;
     end;
end;

procedure TfrmCadContReceber.dsContasReceberStateChange(Sender: TObject);
begin
    btPrimeiro.Enabled := dsContasReceber.State In [dsBrowse];
    btAnterior.Enabled := dsContasReceber.State In [dsBrowse];
    btProximo.Enabled  := dsContasReceber.State In [dsBrowse];
    tbUltimo.Enabled   := dsContasReceber.State In [dsBrowse];
    //
    btAdicionar.Enabled := dsContasReceber.State In [dsBrowse];
    btEditar.Enabled    := dsContasReceber.State In [dsBrowse];
    btExcluir.Enabled   := dsContasReceber.State In [dsBrowse];
    //
    btGravar.Enabled   := dsContasReceber.State In [dsInsert,dsEdit];
    btCancelar.Enabled := dsContasReceber.State In [dsInsert,dsEdit];
    //
    btGerarBoleto.Enabled := dsContasReceber.State In [dsBrowse];
    btLocalizar.Enabled := dsContasReceber.State In [dsBrowse];
    btFechar.Enabled := dsContasReceber.State In [dsBrowse];
    // barra de status
     If dsContasReceber.State in [dsInsert] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de inserção';
     If dsContasReceber.State in [dsEdit] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de edição';
     If dsContasReceber.State in [dsBrowse] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de navegação';
end;

procedure TfrmCadContReceber.dsContasReceberDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmNetImo.barStatus.Panels[2].Text := ' Registro: ' + IntToStr(dsContasReceber.DataSet.RecNo) +
                          ' de ' + IntToStr(dsContasReceber.DataSet.RecordCount);
end;

procedure TfrmCadContReceber.btGerarBoletoClick(Sender: TObject);
Var
    M_NRRECE,M_NMCLIE:String;
begin
   Try
       dmBD.tbPrestacoes.Edit;
       If (dmBD.tbPrestacoesPRE_FLSITU.Value = 'P') Then
       begin
           Application.MessageBox('Conta já recebida!!!',
               'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
           dmBD.tbPrestacoes.Cancel;
           Exit;
       End;
       //
       dmBD.tbPrestacoes.Edit;
       M_NRRECE := dmBD.tbPrestacoesPRE_CDPRES.Value;
       M_NMCLIE := dmBD.tbPrestacoesPRE_NMCLIE.Value;
       dmBD.tbPrestacoes.Cancel;
       //
       Application.CreateForm(TfrmBoletos, frmBoletos);
       with frmBoletos do
       begin
            with repBoletos do
            begin
                 With qryBoletos do
                 begin
                      Close;
                      SQL.Clear;
                      SQL.Add('Select * from SACPRE Where PRE_CDPRES='+QuotedStr(M_NRRECE));
                      Prepare;
                      Open;
                 End;
                 ReportTitle := 'Visualização de Boletos - Cliente: '+M_NMCLIE;
                 //
                Preview;
            End;
       end;
   Except
        Application.MessageBox('Error na geração de Boleto!!!',
                'ERROR', MB_OK+MB_ICONINFORMATION);
        Raise;
         dmBD.tbPrestacoes.Cancel;
   End;
end;

procedure TfrmCadContReceber.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If (dsContasReceber.State in [dsInsert,dsEdit]) Then
     begin
         If Application.MessageBox('Salvar alterações?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
             dmBD.tbPrestacoes.Post
         Else
             dmBD.tbPrestacoes.Cancel;
     End;
end;

procedure TfrmCadContReceber.dbGridContasRecKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If (Shift = [ssCtrl]) and (Key = 46) Then
         KEY := 0;
end;

end.
