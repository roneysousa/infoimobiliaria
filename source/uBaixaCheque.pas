unit uBaixaCheque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls, Db, Grids, DBGrids;

type
  TfrmCheques = class(TForm)
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
    Panel4: TPanel;
    dsCheques: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    dbeDTPAGA: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBText1: TDBText;
    GridCheques: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFecharClick(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure tbPrimeiroClick(Sender: TObject);
    procedure tbAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure dsChequesStateChange(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure GridChequesDblClick(Sender: TObject);
    procedure GridChequesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCheques: TfrmCheques;

implementation

uses uBD,funcoes;

{$R *.DFM}

procedure TfrmCheques.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dmBD.tbCheques.Filtered := False;
     dmBD.tbCheques.Close;
     //
     Action := caFree;
end;

procedure TfrmCheques.btFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmCheques.btLocalizarClick(Sender: TObject);
Var
    M_NRCHEQ:String;
begin
    M_NRCHEQ := InputBox('Localizar','Digite o número do documento?','');
    If Not funcoes.Empty(M_NRCHEQ) Then
    begin
         M_NRCHEQ := Funcoes.StrZero(M_NRCHEQ,8); 
         If not (dmBD.tbCheques.Locate('CHE_NRDOCU',M_NRCHEQ,
                 [loCaseInsensitive,loPartialKey])) Then
         begin
              Application.MessageBox('Cheque não encontado.',
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
              Exit;
         End;
    End;
end;

procedure TfrmCheques.btCancelaClick(Sender: TObject);
begin
     dmBD.tbCheques.Cancel;
end;

procedure TfrmCheques.btGravarClick(Sender: TObject);
begin
     try
         If not funcoes.Empty (dbeDTPAGA.Text) Then
             dmBD.tbChequesCHE_FLSITU.Value := 'P';
         dmBD.tbCheques.post;
     Except
         ShowMessage('Error ao tentar gravar alteração!!!');
     End;
end;

procedure TfrmCheques.tbPrimeiroClick(Sender: TObject);
begin
     If not (dmBD.tbCheques.Bof) then
       dmBD.tbCheques.First;
end;

procedure TfrmCheques.tbAnteriorClick(Sender: TObject);
begin
     If not (dmBD.tbCheques.Bof) then
       dmBD.tbCheques.Prior;
end;

procedure TfrmCheques.btProximoClick(Sender: TObject);
begin
     If not (dmBD.tbCheques.Eof) then
       dmBD.tbCheques.Next;
end;

procedure TfrmCheques.btUltimoClick(Sender: TObject);
begin
     If not (dmBD.tbCheques.Eof) then
       dmBD.tbCheques.Last;
end;

procedure TfrmCheques.dsChequesStateChange(Sender: TObject);
begin
    tbPrimeiro.Enabled := dsCheques.State in [dsBrowse];
    tbAnterior.Enabled := dsCheques.State in [dsBrowse];
    btProximo.Enabled  := dsCheques.State in [dsBrowse];
    btUltimo.Enabled   := dsCheques.State in [dsBrowse];
    //
    btIncluir.Enabled := dsCheques.State in [dsBrowse];
    btEditar.Enabled := dsCheques.State in [dsBrowse];
    btDelete.Enabled := dsCheques.State in [dsBrowse];
    //
    btGravar.Enabled := dsCheques.State in [dsEdit];
    btCancela.Enabled := dsCheques.State in [dsEdit];
    //
    btLocalizar.Enabled := dsCheques.State in [dsBrowse];
    btFechar.Enabled    := dsCheques.State in [dsBrowse];
    //
    GridCheques.Visible := dsCheques.State in [dsBrowse];
end;

procedure TfrmCheques.btEditarClick(Sender: TObject);
begin
    Try
         dmBD.tbCheques.Edit;
         dmBD.tbChequesCHE_QTDIAS.Value := StrtoInt(FloattoStr(Date()-dmBD.tbChequesCHE_DTVENC.Value));
         dbeDTPAGA.SetFocus; 
    Except
         ShowMessage('Error ao tentar editar registro!!!');
    End;
end;

procedure TfrmCheques.FormActivate(Sender: TObject);
begin
      If (dmBD.tbCheques.Active = False) then
         dmBD.tbCheques.Open;
      //
      dmBD.tbCheques.Filter   := 'CHE_FLSITU='+QuotedStr('A');
      dmBD.tbCheques.Filtered := True;
      GridCheques.Align := alClient;
end;

procedure TfrmCheques.GridChequesDblClick(Sender: TObject);
begin
     btEditarClick(Sender);
end;

procedure TfrmCheques.GridChequesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (Shift = [ssCtrl]) and (Key = 46) Then
         KEY := 0;
end;

end.
