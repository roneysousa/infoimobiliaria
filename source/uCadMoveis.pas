unit uCadMoveis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, StdCtrls, DBCtrls, Db, Mask, Grids, DBGrids;

type
  TfrmCadImovel = class(TForm)
    dsImoveis: TDataSource;
    dsTipoImovel: TDataSource;
    dsEmpred: TDataSource;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    dblcmbTpImovel: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    cmbUF: TDBComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    ckbFLGARA: TDBCheckBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
    dbcmbFLSITU: TDBComboBox;
    cmbCDEMPRE: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    dbeQTVAGAS: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    GridImovel: TDBGrid;
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
    Panel3: TPanel;
    Image1: TImage;
    DBText2: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure dsImoveisStateChange(Sender: TObject);
    procedure dsImoveisDataChange(Sender: TObject; Field: TField);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure tbPrimeiroClick(Sender: TObject);
    procedure tbAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure GridImovelDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ckbFLGARAClick(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure GridImovelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadImovel: TfrmCadImovel;

implementation

uses uBD, uNetImo, FUNCOES;

{$R *.DFM}

procedure TfrmCadImovel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     frmNetImo.mnuNavegacao.Enabled := False;
     dmBD.tbParametros.Close;
     dmBD.tbImoveis.Close;
     dmBD.tbTiposImovel.Close;
     dmBD.tbEmpredim.Close;
     //
     Action := caFree;
end;

procedure TfrmCadImovel.FormActivate(Sender: TObject);
begin
      If (dmBD.tbParametros.Active=False) Then
          dmBD.tbParametros.Open;
      If (dmBD.tbImoveis.Active=False) Then
          dmBD.tbImoveis.Open;
      If (dmBD.tbTiposImovel.Active=False) Then
          dmBD.tbTiposImovel.Open;
      If (dmBD.tbEmpredim.Active=False) Then
          dmBD.tbEmpredim.Open;
      //
      uNetImo.JanelaAtiva := 'IMOVEIS';
      frmNetImo.mnuNavegacao.Enabled := True;
      //
      GridImovel.Align := alClient;
      GridImovel.SetFocus;
end;

procedure TfrmCadImovel.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadImovel.dsImoveisStateChange(Sender: TObject);
begin
    tbPrimeiro.Enabled := dsImoveis.State in [dsBrowse];
    tbAnterior.Enabled := dsImoveis.State in [dsBrowse];
    btProximo.Enabled  := dsImoveis.State in [dsBrowse];
    btUltimo.Enabled   := dsImoveis.State in [dsBrowse];
    btLocalizar.Enabled:= dsImoveis.State in [dsBrowse];
    btFechar.Enabled   := dsImoveis.State in [dsBrowse];
    //
    btIncluir.Enabled := dsImoveis.State in [dsBrowse];
    btEditar.Enabled  := dsImoveis.State in [dsBrowse];
    btDelete.Enabled  := (dsImoveis.State in [dsBrowse])
     and (DmBD.tbImoveis.RecordCount > 0);;
    //
    btGravar.Enabled  := dsImoveis.State in [dsInsert,dsEdit];
    btCancela.Enabled := dsImoveis.State in [dsInsert,dsEdit];
    // botões do menu
    frmNetImo.mnuGravarItem.Enabled   := dsImoveis.State in [dsInsert,dsEdit];
    frmNetImo.mnuCancelarItem.Enabled := dsImoveis.State in [dsInsert,dsEdit];
    // barra de status
     If dsImoveis.State in [dsInsert] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de inserção';
     If dsImoveis.State in [dsEdit] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de edição';
     If dsImoveis.State in [dsBrowse] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de navegação';
     // menus principal
     frmNetImo.mnuPrimeiroItem.Enabled := dsImoveis.State in [dsBrowse];
     frmNetImo.mnuAnteriorItem.Enabled := dsImoveis.State in [dsBrowse];
     frmNetImo.mnuProximoItem.Enabled  := dsImoveis.State in [dsBrowse];
     frmNetImo.mnuUltimoItem.Enabled   := dsImoveis.State in [dsBrowse];
     //
     frmNetImo.mnuAdicionarItem.Enabled := dsImoveis.State in [dsBrowse];
     frmNetImo.mnuEditarItem.Enabled    := dsImoveis.State in [dsBrowse];
     frmNetImo.mnuExcluirItem.Enabled   := dsImoveis.State in [dsBrowse];
     //
     frmNetImo.mnuGravarItem.Enabled   := dsImoveis.State in [dsInsert,dsEdit];
     frmNetImo.mnuCancelarItem.Enabled := dsImoveis.State in [dsInsert,dsEdit];
end;

procedure TfrmCadImovel.dsImoveisDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmNetImo.barStatus.Panels[2].Text := ' Registro: ' + IntToStr(dsImoveis.DataSet.RecNo) +
                          ' de ' + IntToStr(dsImoveis.DataSet.RecordCount);
                          
end;

procedure TfrmCadImovel.btGravarClick(Sender: TObject);
begin
     Try
         Try
            If (dsImoveis.State in [dsInsert]) Then
            Begin
              dmBD.tbParametros.Edit;
              dmBD.tbParametrosPAR_CDIMOV.Value := dmBD.tbParametrosPAR_CDIMOV.Value+1;
              dmBD.tbParametros.Post;
              //
              dmBD.tbImoveisIMO_CDIMOV.Value := funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDIMOV.Value),10);
            End;
            //
            dmBD.tbImoveisIMO_FLIMOV.Value := UpperCase(dmBD.tbImoveisIMO_FLIMOV.Value); 
            dmBD.tbImoveis.Post;
            GridImovel.Visible := True;
         Except
            ShowMessage('Error ao tentar grava registro.');
         End;
     Finally
           GridImovel.Visible := True;
     End;
end;

procedure TfrmCadImovel.btCancelaClick(Sender: TObject);
begin
     Try
        dmBD.tbImoveis.Cancel;
        GridImovel.Visible := True;
     Except
        ShowMessage('Error ao tentar cancela alteração.');
     End;
end;

procedure TfrmCadImovel.tbPrimeiroClick(Sender: TObject);
begin
     If not (dmBD.tbImoveis.Bof) Then
           dmBD.tbImoveis.First;
end;

procedure TfrmCadImovel.tbAnteriorClick(Sender: TObject);
begin
     If not (dmBD.tbImoveis.Bof) Then
           dmBD.tbImoveis.Prior;
end;

procedure TfrmCadImovel.btProximoClick(Sender: TObject);
begin
     If not (dmBD.tbImoveis.Eof) Then
           dmBD.tbImoveis.Next;
end;

procedure TfrmCadImovel.btUltimoClick(Sender: TObject);
begin
     If not (dmBD.tbImoveis.Eof) Then
           dmBD.tbImoveis.Last;
end;

procedure TfrmCadImovel.btEditarClick(Sender: TObject);
begin
     Try
        GridImovel.Visible := False;
        dmBD.tbImoveis.Edit;
        If  (dmBD.tbImoveisIMO_FLGARA.Value = True) Then
            dbeQTVAGAS.Enabled := True
        Else
            dbeQTVAGAS.Enabled := False;
     Except
        ShowMessage('Error ao tentar editar registro.');
     End;
end;

procedure TfrmCadImovel.btDeleteClick(Sender: TObject);
begin
    If Application.MessageBox('Deseja eliminar este registro:', 'Exclusão de Imóvel',
                  MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
         dmBD.tbImoveis.delete;             // Apagar o regitro atual.
end;

procedure TfrmCadImovel.btIncluirClick(Sender: TObject);
begin
     Try
        GridImovel.Visible := False;
        dmBD.tbImoveis.Append;
        dmBD.tbImoveisIMO_CDUSUA.Value := uNetImo.M_CDUSUA;
        cmbCDEMPRE.SetFocus;
        //dmBD.tbimoveisimo_
     Except
        ShowMessage('Error ao tentar incluir registro.');
     End;
end;

procedure TfrmCadImovel.GridImovelDblClick(Sender: TObject);
begin
     btEditarClick(Sender);
end;

procedure TfrmCadImovel.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If (dsImoveis.State in [dsInsert,dsEdit]) Then
     begin
         If Application.MessageBox('Salvar alterações?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
             dmBD.tbImoveis.Post
         Else
             dmBD.tbImoveis.Cancel;
     End;
end;

procedure TfrmCadImovel.ckbFLGARAClick(Sender: TObject);
begin
     If  (ckbFLGARA.Checked = True) Then
         dbeQTVAGAS.Enabled := True
     Else
        dbeQTVAGAS.Enabled := False;
end;

procedure TfrmCadImovel.DBEdit13Exit(Sender: TObject);
begin
     If (dsImoveis.State in [dsInsert,dsEdit]) Then
        dmBD.tbImoveisIMO_AREA.Value := dmBD.tbImoveisIMO_MEFRET.Value * dmBD.tbImoveisIMO_MEFUND.Value;   
end;

procedure TfrmCadImovel.GridImovelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (Shift = [ssCtrl]) and (Key = 46) Then
         KEY := 0;
end;

end.
