unit uCadSitImovel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, DBCtrls, StdCtrls, Mask, Db;

type
  TfrmSitImovel = class(TForm)
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
    btFechar: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    dsSitImovel: TDataSource;
    Label2: TLabel;
    dbeDesc: TDBEdit;
    DBText1: TDBText;
    GridSitImovel: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dsSitImovelStateChange(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure GridSitImovelDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSitImovel: TfrmSitImovel;

implementation

uses uBD, Funcoes;

{$R *.DFM}

procedure TfrmSitImovel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbSitImovel.Close;
     dmBD.tbParametros.Close;
     //
     Action := caFree;
end;

procedure TfrmSitImovel.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmSitImovel.FormActivate(Sender: TObject);
begin
     If (dmBD.tbSitImovel.Active = False) Then
         dmBD.tbSitImovel.Open;
     If (dmBD.tbParametros.Active = False) Then
        dmBD.tbParametros.Open;      
     //
     GridSitImovel.Align := alClient;
     GridSitImovel.SetFocus;
end;

procedure TfrmSitImovel.btAdicionarClick(Sender: TObject);
begin
     Try
         GridSitImovel.Visible := False;
         dmBD.tbSitImovel.Append;
         dbeDesc.SetFocus; 
     Except
         ShowMessage('Error ao tentar incluir registro.');
     End;
end;

procedure TfrmSitImovel.btEditarClick(Sender: TObject);
begin
     Try
         GridSitImovel.Visible := False;
         dmBD.tbSitImovel.Edit;
     Except
         ShowMessage('Error ao tentar editar registro.');
     End;
end;

procedure TfrmSitImovel.btGravarClick(Sender: TObject);
begin
     Try
         If (dsSitImovel.State in [dsInsert]) Then
         begin
              dmBD.tbParametros.Edit;
              dmBD.tbParametrosPAR_CDSTIM.Value := InttoStr(StrtoInt(dmBD.tbParametrosPAR_CDSTIM.Value)+1);
              dmBD.tbParametros.Post;
              //
              dmBD.tbSitImovelSIT_CDSITU.Value := Funcoes.StrZero(dmBD.tbParametrosPAR_CDSTIM.Value,3);
         End;
         //
         dmBD.tbSitImovel.Post;
         GridSitImovel.Visible := True;
     Except
         ShowMessage('Error ao tentar gravar registro.');
     End;
end;

procedure TfrmSitImovel.btCancelarClick(Sender: TObject);
begin
     dmBD.tbSitImovel.Cancel;
end;

procedure TfrmSitImovel.dsSitImovelStateChange(Sender: TObject);
begin
    btPrimeiro.Enabled := dsSitImovel.State in [dsBrowse];
    btAnterior.Enabled := dsSitImovel.State in [dsBrowse];
    btProximo.Enabled  := dsSitImovel.State in [dsBrowse];
    btUltimo.Enabled   := dsSitImovel.State in [dsBrowse];
    //
    btAdicionar.Enabled := dsSitImovel.State in [dsBrowse];
    btEditar.Enabled := dsSitImovel.State in [dsBrowse];
    btExcluir.Enabled := (dsSitImovel.State in [dsBrowse])
             and (dmBD.tbIndices.RecordCount > 0);
    //
    btGravar.Enabled := dsSitImovel.State in [dsInsert,dsEdit];
    btCancelar.Enabled := dsSitImovel.State in [dsInsert,dsEdit];
    //
//    btLocalizar.Enabled := dsSitImovel.State in [dsBrowse];
    btFechar.Enabled := dsSitImovel.State in [dsBrowse];
end;

procedure TfrmSitImovel.btExcluirClick(Sender: TObject);
begin
     If Application.MessageBox('Deseja eliminar este registro:', 'Exclus�o de registro',
             MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
       dmBD.tbSitImovel.delete;             // Apagar o regitro atual.
end;

procedure TfrmSitImovel.btUltimoClick(Sender: TObject);
begin
     If not(dmBD.tbSitImovel.Eof) Then
        dmBD.tbSitImovel.Last;
end;

procedure TfrmSitImovel.btPrimeiroClick(Sender: TObject);
begin
     If not(dmBD.tbSitImovel.Bof) Then
        dmBD.tbSitImovel.First;
end;

procedure TfrmSitImovel.btAnteriorClick(Sender: TObject);
begin
     If not(dmBD.tbSitImovel.Bof) Then
        dmBD.tbSitImovel.Prior;
end;

procedure TfrmSitImovel.btProximoClick(Sender: TObject);
begin
     If not(dmBD.tbSitImovel.Eof) Then
        dmBD.tbSitImovel.Next;
end;

procedure TfrmSitImovel.GridSitImovelDblClick(Sender: TObject);
begin
      btEditarClick(Sender);
end;

end.
