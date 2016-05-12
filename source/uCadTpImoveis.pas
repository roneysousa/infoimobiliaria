unit uCadTpImoveis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, Grids, DBGrids, StdCtrls, DBCtrls, Mask, ExtCtrls, Db;

type
  TfrmTipoImoveis = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Panel2: TPanel;
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
    DBEdit1: TDBEdit;
    dsTipoImovel: TDataSource;
    GridTipos: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFecharClick(Sender: TObject);
    procedure tbPrimeiroClick(Sender: TObject);
    procedure tbAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GridTiposDblClick(Sender: TObject);
    procedure dsTipoImovelStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btIncluirClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoImoveis: TfrmTipoImoveis;

implementation

uses uBD, uNetImo, funcoes;

{$R *.DFM}

procedure TfrmTipoImoveis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbTiposImovel.Close;
     Action :=  caFree;
end;

procedure TfrmTipoImoveis.btFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmTipoImoveis.tbPrimeiroClick(Sender: TObject);
begin
     If not (dmBD.tbTiposImovel.Bof) Then
            dmBD.tbTiposImovel.First;
end;

procedure TfrmTipoImoveis.tbAnteriorClick(Sender: TObject);
begin
     If not (dmBD.tbTiposImovel.Bof) Then
            dmBD.tbTiposImovel.Prior;
end;

procedure TfrmTipoImoveis.btProximoClick(Sender: TObject);
begin
     If not (dmBD.tbTiposImovel.Eof) Then
            dmBD.tbTiposImovel.Next;
end;

procedure TfrmTipoImoveis.btUltimoClick(Sender: TObject);
begin
     If not (dmBD.tbTiposImovel.Eof) Then
            dmBD.tbTiposImovel.Last;
end;

procedure TfrmTipoImoveis.btEditarClick(Sender: TObject);
begin
     Try
        GridTipos.Visible := False;
        dmBD.tbTiposImovel.Edit;
     Except
         ShowMessage('Erro ao tentar editar registro.');
     End;
end;

procedure TfrmTipoImoveis.btGravarClick(Sender: TObject);
begin
     Try
         If (dsTipoImovel.State in [dsInsert]) Then
         begin
              dmBD.tbParametros.Edit;
              dmBD.tbparametrosPAR_CDSTIM.Value := InttoStr(StrtoInt(dmBD.tbparametrosPAR_CDSTIM.Value)+1);
              dmBD.tbParametros.Post;
              //
              dmBD.tbTiposImovelTPI_CDTIPO.Value := dmBD.tbparametrosPAR_CDSTIM.Value;
         End;
         //
         dmBD.tbTiposImovel.Post;
         GridTipos.Visible := True;
     Except
         ShowMessage('Erro ao tentar gravar registro.');
     End;
end;

procedure TfrmTipoImoveis.btCancelaClick(Sender: TObject);
begin
     dmBD.tbTiposImovel.Cancel;
     GridTipos.Visible := True;
end;

procedure TfrmTipoImoveis.FormActivate(Sender: TObject);
begin
    If (dmBD.tbTiposImovel.Active = False) Then
             dmBD.tbTiposImovel.Open;
   GridTipos.Align := alClient;
   GridTipos.Visible := True;
end;

procedure TfrmTipoImoveis.GridTiposDblClick(Sender: TObject);
begin
     btEditarClick(Sender);
end;

procedure TfrmTipoImoveis.dsTipoImovelStateChange(Sender: TObject);
begin
    tbPrimeiro.Enabled := dsTipoImovel.State in [dsBrowse];
    tbAnterior.Enabled := dsTipoImovel.State in [dsBrowse];
    btProximo.Enabled  := dsTipoImovel.State in [dsBrowse];
    btUltimo.Enabled   := dsTipoImovel.State in [dsBrowse];
    //
    btIncluir.Enabled := dsTipoImovel.State in [dsBrowse];
    btEditar.Enabled := dsTipoImovel.State in [dsBrowse];
    btDelete.Enabled := (dsTipoImovel.State in [dsBrowse])
             and (dmBD.tbIndices.RecordCount > 0);
    //
    btGravar.Enabled := dsTipoImovel.State in [dsInsert,dsEdit];
    btCancela.Enabled := dsTipoImovel.State in [dsInsert,dsEdit];
    //
    btLocalizar.Enabled := dsTipoImovel.State in [dsBrowse];
    btFechar.Enabled    := dsTipoImovel.State in [dsBrowse];
    // barra de status
     If dsTipoImovel.State in [dsInsert] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de inser��o';
     If dsTipoImovel.State in [dsEdit] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de edi��o';
     If dsTipoImovel.State in [dsBrowse] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de navega��o';
end;

procedure TfrmTipoImoveis.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If (dsTipoImovel.State in [dsInsert,dsEdit]) Then
     begin
         If Application.MessageBox('Salvar altera��es?',
                  'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
             dmBD.tbTiposImovel.Post
         Else
             dmBD.tbTiposImovel.Cancel;
     End;

end;

procedure TfrmTipoImoveis.btIncluirClick(Sender: TObject);
begin
     Try
        GridTipos.Visible := False;
        dmBD.tbTiposImovel.Append;
     Except
         ShowMessage('Erro ao tentar incluir registro.');
     End;
end;

procedure TfrmTipoImoveis.btDeleteClick(Sender: TObject);
begin
    If Application.MessageBox('Deseja eliminar este registro:', 'Exclus�o de tipo de im�vel',
                  MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
         dmBD.tbTiposImovel.delete;             // Apagar o regitro atual.
end;

procedure TfrmTipoImoveis.btLocalizarClick(Sender: TObject);
Var
    M_NMDESC : String;
begin
    M_NMDESC := InputBox('Localizar','Digite o tipo de im�vel?','');
    If Not funcoes.Empty(M_NMDESC) Then
    begin
         If not (dmBD.tbTiposImovel.Locate('TPI_NMDESC',M_NMDESC,
                 [loCaseInsensitive,loPartialKey])) Then
         begin
              Application.MessageBox('Tipo de im�vel n�o encontado.',
                         'ATEN��O', MB_OK+MB_ICONINFORMATION);
              Exit;
         End;
    End;
end;

end.
