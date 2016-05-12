unit uPagamContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids;

type
  TfrmPagamContas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    btConfirmar: TBitBtn;
    BitBtn2: TBitBtn;
    GridContas: TDBGrid;
    dsContPagar: TDataSource;
    Label1: TLabel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure GridContasDblClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure GridContasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPagamContas: TfrmPagamContas;

implementation

uses uBD, uDescJuros, uFormPagam;

{$R *.DFM}

procedure TfrmPagamContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbContPagar.Filtered := False;
     dmBD.tbContPagar.Close;
     //
     Action := caFree;
end;

procedure TfrmPagamContas.FormActivate(Sender: TObject);
begin
     If (dmBD.tbContPagar.Active=False) Then
         dmBD.tbContPagar.Open;
     //
     dmBD.tbContPagar.Filter   := 'PAG_FLSITU='+QuotedStr('A');
     dmBD.tbContPagar.Filtered := True;

end;

procedure TfrmPagamContas.GridContasDblClick(Sender: TObject);
begin
     Application.CreateForm(TfrmDescJuros, frmDescJuros);
     uDescJuros.M_JANELA := 'PAGAR';
     //
     frmDescJuros.Height := 188;
     frmDescJuros.Width  := 296;
     //
     frmDescJuros.pnlReceber.Visible := False;
     frmDescJuros.pnlPagar.Visible   := True;
     frmDescJuros.pnlPagar.Align     := alClient;
     //
     frmDescJuros.ShowModal;
     frmDescJuros.Free;
end;

procedure TfrmPagamContas.btConfirmarClick(Sender: TObject);
begin
     Application.CreateForm(TfrmFormaPagamento, frmFormaPagamento);
     frmFormaPagamento.ShowModal;
     frmFormaPagamento.Free;
end;

procedure TfrmPagamContas.GridContasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (Shift = [ssCtrl]) and (Key = 46) Then
         KEY := 0;
end;

end.
