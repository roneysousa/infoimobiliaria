unit uCadIndices;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, DBCtrls, StdCtrls, Mask, Db, Grids, DBGrids;

type
  TfrmCadIndices = class(TForm)
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
    dsIndices: TDataSource;
    Label2: TLabel;
    dbeNMDESC: TDBEdit;
    Label4: TLabel;
    dbeVLCORR: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    GridIndices: TDBGrid;
    Image1: TImage;
    DBText2: TDBText;
    procedure btFecharClick(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridIndicesDblClick(Sender: TObject);
    procedure dsIndicesDataChange(Sender: TObject; Field: TField);
    procedure dsIndicesStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbeVLPERCExit(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure tbPrimeiroClick(Sender: TObject);
    procedure tbAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure GridIndicesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadIndices: TfrmCadIndices;

implementation

uses uBD, Funcoes, uNetImo;

{$R *.DFM}

procedure TfrmCadIndices.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadIndices.btIncluirClick(Sender: TObject);
begin
     Try
        GridIndices.Visible := False;
        dmBD.tbIndices.Append;
        dbeNMDESC.SetFocus; 
     Except
        ShowMessage('Error ao tentar incluir registro.');
     End;
end;

procedure TfrmCadIndices.btEditarClick(Sender: TObject);
begin
     Try
        GridIndices.Visible := False;
        dmBD.tbIndices.Edit;
     Except
        ShowMessage('Error ao tentar editar registro.');
     End;
end;

procedure TfrmCadIndices.btGravarClick(Sender: TObject);
begin
     Try
        //
        If (dsIndices.State in [dsInsert]) Then
        begin
             dmBD.tbParametros.Edit;
             dmBD.tbParametrosPAR_CDINDI.Value := dmBD.tbParametrosPAR_CDINDI.Value+1;
             dmBD.tbParametros.Post;
             //
             dmBD.tbIndicesIND_CDINDI.Value := Funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDINDI.Value),5);
        End;
        //
        GridIndices.Visible := True;
        dmBD.tbIndices.Post;
     Except
        ShowMessage('Error ao tentar gravar registro.');
     End;
end;

procedure TfrmCadIndices.btCancelaClick(Sender: TObject);
begin
     Try
        GridIndices.Visible := True;
        dmBD.tbIndices.Cancel;
     Except
        ShowMessage('Error ao tentar cancelar alteração registro.');
     End;
end;

procedure TfrmCadIndices.btDeleteClick(Sender: TObject);
begin
     Try
         If Application.MessageBox('Deseja eliminar este registro:', 'Exclusão de Índice',
                   MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
           dmBD.tbIndices.delete;             // Apagar o regitro atual.
     Except
           Application.MessageBox('Este registro não pode ser excluido agora.', 'Error',
                     MB_OK+MB_ICONINFORMATION);
     End;
end;

procedure TfrmCadIndices.FormActivate(Sender: TObject);
begin
      If (dmBD.tbIndices.Active = False ) Then
          dmBD.tbIndices.Open;
      If (dmBD.tbParametros.Active = False ) Then
          dmBD.tbParametros.Open;
      //
      uNetImo.JanelaAtiva := 'CADINDICES';
      frmNetImo.mnuNavegacao.Enabled := True;
      //
      GridIndices.Align := alClient;
      GridIndices.SetFocus;    
end;

procedure TfrmCadIndices.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbIndices.Open;
     dmBD.tbParametros.Open;
     //
     frmNetImo.mnuNavegacao.Enabled := False;
     //
     Action := caFree;
end;

procedure TfrmCadIndices.GridIndicesDblClick(Sender: TObject);
begin
     btEditarClick(Sender);
end;

procedure TfrmCadIndices.dsIndicesDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmNetImo.barStatus.Panels[2].Text := ' Registro: ' + IntToStr(dsIndices.DataSet.RecNo) +
                          ' de ' + IntToStr(dsIndices.DataSet.RecordCount);
end;

procedure TfrmCadIndices.dsIndicesStateChange(Sender: TObject);
begin
    tbPrimeiro.Enabled := dsIndices.State in [dsBrowse];
    tbAnterior.Enabled := dsIndices.State in [dsBrowse];
    btProximo.Enabled  := dsIndices.State in [dsBrowse];
    btUltimo.Enabled   := dsIndices.State in [dsBrowse];
    //
    btIncluir.Enabled := dsIndices.State in [dsBrowse];
    btEditar.Enabled := dsIndices.State in [dsBrowse];
    btDelete.Enabled := (dsIndices.State in [dsBrowse])
             and (dmBD.tbIndices.RecordCount > 0);
    //
    btGravar.Enabled := dsIndices.State in [dsInsert,dsEdit];
    btCancela.Enabled := dsIndices.State in [dsInsert,dsEdit];
    //
    btLocalizar.Enabled := dsIndices.State in [dsBrowse];
    btFechar.Enabled := dsIndices.State in [dsBrowse];
    // barra de status
     If dsIndices.State in [dsInsert] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de inserção';
     If dsIndices.State in [dsEdit] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de edição';
     If dsIndices.State in [dsBrowse] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de navegação';
     // menus principal
     frmNetImo.mnuPrimeiroItem.Enabled := dsIndices.State in [dsBrowse];
     frmNetImo.mnuAnteriorItem.Enabled := dsIndices.State in [dsBrowse];
     frmNetImo.mnuProximoItem.Enabled  := dsIndices.State in [dsBrowse];
     frmNetImo.mnuUltimoItem.Enabled   := dsIndices.State in [dsBrowse];
     //
     frmNetImo.mnuAdicionarItem.Enabled := dsIndices.State in [dsBrowse];
     frmNetImo.mnuEditarItem.Enabled    := dsIndices.State in [dsBrowse];
     frmNetImo.mnuExcluirItem.Enabled   := dsIndices.State in [dsBrowse];
     //
     frmNetImo.mnuGravarItem.Enabled   := dsIndices.State in [dsInsert,dsEdit];
     frmNetImo.mnuCancelarItem.Enabled := dsIndices.State in [dsInsert,dsEdit];
end;

procedure TfrmCadIndices.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If (dsIndices.State in [dsInsert,dsEdit]) Then
     begin
         If Application.MessageBox('Salvar alterações?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
             dmBD.tbIndices.Post
         Else
             dmBD.tbIndices.Cancel;
     End;
end;

procedure TfrmCadIndices.dbeVLPERCExit(Sender: TObject);
begin
     If (dsIndices.State in [dsInsert]) Then
       dmBD.tbIndicesIND_VLPERC.Value := dmBD.tbIndicesIND_VLPERC.Value/100;
end;

procedure TfrmCadIndices.btLocalizarClick(Sender: TObject);
Var
    M_NMINDI : String;
begin
    M_NMINDI := InputBox('Localizar','Digite o nome do Índice?','');
    If Not funcoes.Empty(M_NMINDI) Then
    begin
         If not (dmBD.tbIndices.Locate('IND_NMDESC',M_NMINDI,
                 [loCaseInsensitive,loPartialKey])) Then
         begin
              Application.MessageBox('Índice não encontado.',
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
              Exit;
         End;
    End;
end;

procedure TfrmCadIndices.tbPrimeiroClick(Sender: TObject);
begin
    If not (dmBD.tbIndices.Bof) then
        dmBD.tbIndices.First;
end;

procedure TfrmCadIndices.tbAnteriorClick(Sender: TObject);
begin
    If not (dmBD.tbIndices.Bof) then
        dmBD.tbIndices.Prior;
end;

procedure TfrmCadIndices.btProximoClick(Sender: TObject);
begin
    If not (dmBD.tbIndices.Eof) then
        dmBD.tbIndices.Next;
end;

procedure TfrmCadIndices.btUltimoClick(Sender: TObject);
begin
    If not (dmBD.tbIndices.Eof) then
        dmBD.tbIndices.Last;
end;

procedure TfrmCadIndices.GridIndicesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (Shift = [ssCtrl]) and (Key = 46) Then
         KEY := 0;
end;

end.
