unit uCadBancos1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ComCtrls, ToolWin, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfrmCadBancos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeNRBANC: TDBEdit;
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
    btLocalizar: TToolButton;
    btSair: TToolButton;
    dsBancos: TDataSource;
    dbeNMBANC: TDBEdit;
    dbGridBancos: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dsBancosStateChange(Sender: TObject);
    procedure dbeNRBANCExit(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure dbGridBancosDblClick(Sender: TObject);
    procedure dbeNMBANCExit(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBancos: TfrmCadBancos;

implementation

uses uBanco,funcoes, uNetPrincipal;

{$R *.DFM}

procedure TfrmCadBancos.FormActivate(Sender: TObject);
begin
    If (dmdados.tbBancos.Active=false) Then
           dmdados.tbBancos.Open;
    dbGridBancos.Align := alClient;
    // Excluir registros
    If Not (frmNetTrans.Acesso(uNetPrincipal.M_CDUSUA,'Exclusao')) Then
    Begin
        If (uNetPrincipal.M_CDUSUA<>'000') Then
        begin
             frmNetTrans.mnuExcluirItem.Visible := False;
             btExcluir.Visible                  := False;
        End;
    End;
end;

procedure TfrmCadBancos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      dmdados.tbBancos.Close;
      Action := caFree;
end;

procedure TfrmCadBancos.btPrimeiroClick(Sender: TObject);
begin
    If not (dmdados.tbBancos.Bof) Then
      dmdados.tbBancos.First;
end;

procedure TfrmCadBancos.btAnteriorClick(Sender: TObject);
begin
    If not (dmdados.tbBancos.Bof) Then
      dmdados.tbBancos.Prior;
end;

procedure TfrmCadBancos.btProximoClick(Sender: TObject);
begin
    If not (dmdados.tbBancos.Eof) Then
      dmdados.tbBancos.Next;
end;

procedure TfrmCadBancos.btUltimoClick(Sender: TObject);
begin
    If not (dmdados.tbBancos.Eof) Then
      dmdados.tbBancos.Last;
end;

procedure TfrmCadBancos.btEditarClick(Sender: TObject);
begin
     dmdados.tbBancos.Edit;
     dbGridBancos.Visible := False;
     dbeNRBANC.Enabled := False;
     dbeNMBANC.SetFocus;
end;

procedure TfrmCadBancos.btAdicionarClick(Sender: TObject);
begin
    dbGridBancos.Visible := False;
    dmdados.tbBancos.Append;
    dbeNRBANC.Enabled := True; 
    dbeNRBANC.SetFocus;
end;

procedure TfrmCadBancos.btGravarClick(Sender: TObject);
begin
     dmDados.tbBancos.Post;
     dbGridBancos.Visible := True;
end;

procedure TfrmCadBancos.btCancelarClick(Sender: TObject);
begin
     dmDados.tbBancos.Cancel;
     dbGridBancos.Visible := True;
end;

procedure TfrmCadBancos.dsBancosStateChange(Sender: TObject);
begin
    btPrimeiro.Enabled := dsBancos.State in [dsBrowse];
    btAnterior.Enabled := dsBancos.State in [dsBrowse];
    btProximo.Enabled := dsBancos.State in [dsBrowse];
    btUltimo.Enabled := dsBancos.State in [dsBrowse];
    //
    btAdicionar.Enabled := dsBancos.State in [dsBrowse];
    btEditar.Enabled := dsBancos.State in [dsBrowse];
    btExcluir.Enabled := dsBancos.State in [dsBrowse];
    //
    btGravar.Enabled := dsBancos.State in [dsInsert,dsEdit];
    btCancelar.Enabled := dsBancos.State in [dsInsert,dsEdit];
    //
    btLocalizar.Enabled := dsBancos.State in [dsBrowse];
    btSair.Enabled := dsBancos.State in [dsBrowse];
end;

procedure TfrmCadBancos.dbeNRBANCExit(Sender: TObject);
begin
   If (dsBancos.State in [dsInsert]) then
   begin
     If (dmDados.ValidaCampo(dmDados.tbBancos,'BAN_CDBANC',dbeNRBANC.Text)) Then
     begin
          Application.MessageBox('Código já cadastrado.',
                                 'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          dbeNRBANC.Clear;
          dbeNRBANC.SetFocus;
     End
     Else
         dbeNMBANC.SetFocus;
   End;
end;

procedure TfrmCadBancos.btExcluirClick(Sender: TObject);
begin
    If Application.MessageBox('Deseja eliminar este registro', 'Exclusão de Banco',
                  MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
         dmDados.tbBancos.delete;             // Apagar o regitro atual.
end;

procedure TfrmCadBancos.dbGridBancosDblClick(Sender: TObject);
begin
       btEditarClick(Sender);
end;

procedure TfrmCadBancos.dbeNMBANCExit(Sender: TObject);
begin
    // Se nome do usuário estiver vazio
    If Funcoes.Empty(dbeNMBANC.Text) Then
    begin
         Application.MessageBox('Digite o nome do Bancos?',
                                'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         dbeNMBANC.SetFocus;
         Exit;
    End;
    //
   If (dsBancos.State in [dsInsert]) then
   begin
     If (dmDados.ValidaCampo(dmDados.tbBancos,'BAN_NMBANC',dbeNMBANC.Text)) Then
     begin
          Application.MessageBox('Banco já cadastrado.',
                                 'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          dbeNMBANC.Clear;
          dbeNMBANC.SetFocus;
     End
   End;
end;

procedure TfrmCadBancos.btLocalizarClick(Sender: TObject);
Var
    M_CDBANC:String;
begin
    M_CDBANC := InputBox('Localizar','Digite o código do Banco?','');
    If Not funcoes.Empty(M_CDBANC) Then
    begin
         If not (dmDados.tbBancos.Locate('BAN_CDBANC',M_CDBANC,
                 [loCaseInsensitive,loPartialKey])) Then
         begin
              Application.MessageBox('Banco não encontado.',
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
              Exit;           
         End;
    End;
end;

procedure TfrmCadBancos.btSairClick(Sender: TObject);
begin
     Close;
end;

end.

