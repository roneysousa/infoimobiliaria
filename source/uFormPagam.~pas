unit uFormPagam;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, Db;

type
  TfrmFormaPagamento = class(TForm)
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    btDinheiro: TBitBtn;
    btCheque: TBitBtn;
    btConfirmar: TBitBtn;
    btFechar: TBitBtn;
    dsContPagar: TDataSource;
    dsBancos: TDataSource;
    lblValor: TLabel;
    dbeVLPARC: TDBEdit;
    pnlCheque: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    dblcmbBANCOS: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    dbcbxCHEQPRE: TDBCheckBox;
    Label6: TLabel;
    dbeData: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btChequeClick(Sender: TObject);
    procedure btDinheiroClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dbcbxCHEQPREClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormaPagamento: TfrmFormaPagamento;

implementation

uses uBD,uNetImo,funcoes;

{$R *.DFM}

procedure TfrmFormaPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbBancos.Close;
     Action := caFree;
end;

procedure TfrmFormaPagamento.btChequeClick(Sender: TObject);
begin
     // Forma de Pagamento em Cheque
     If not (dsContPagar.State in [dsEdit]) Then
           dmBD.tbContPagar.Edit;
     dmBD.tbContPagarPAG_CDPAGA.Value := '02';
     //
     btConfirmar.Enabled := True;
     pnlCheque.Visible   := True;
end;

procedure TfrmFormaPagamento.btDinheiroClick(Sender: TObject);
begin
     // Forma de Pagamento em Dinheiro
     If not (dsContPagar.State in [dsEdit]) Then
           dmBD.tbContPagar.Edit;
     dmBD.tbContPagarPAG_CDPAGA.Value := '01';
     //
     btConfirmar.Enabled := True;
     pnlCheque.Visible := False;
     dbeVLPARC.Visible := True;
     lblValor.Visible := True;
end;

procedure TfrmFormaPagamento.FormActivate(Sender: TObject);
begin
     If (dmBD.tbBancos.Active=False) Then
         dmBD.tbBancos.Open;
     //
     btConfirmar.Enabled := False;
end;

procedure TfrmFormaPagamento.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8] ) then
         key:=#0;
end;

procedure TfrmFormaPagamento.dbcbxCHEQPREClick(Sender: TObject);
begin
      If (dbcbxCHEQPRE.Checked = True) Then
          dbeDATA.Enabled := True
      Else
          dbeDATA.Enabled := False;
end;

procedure TfrmFormaPagamento.btConfirmarClick(Sender: TObject);
begin
    Try
        dmBD.tbContPagarPAG_DTPAGA.Value := Date();
        dmBD.tbContPagarPAG_CDUSUA.Value := uNetImo.M_CDUSUA;
        dmBD.tbContPagarPAG_FLSITU.Value := 'P';
        // Mensagem para o usuário
        Application.MessageBox('Pagamento realizado com sucesso.',
                           'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
        dmBD.tbContPagar.Post;
        //
        Close;
    Except
        Application.MessageBox('Error ao tentar realizar pagamento de conta.',
                           'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
    End;
end;

procedure TfrmFormaPagamento.btFecharClick(Sender: TObject);
begin
     If (dsContPagar.State in [dsEdit]) Then
       dmBD.tbContPagar.Cancel;
end;

end.
