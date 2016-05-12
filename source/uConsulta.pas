unit uConsulta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids, ExtCtrls, Db, StdCtrls, Buttons, Mask, DBCtrls;

type
  TfrmConsulta = class(TForm)
    Panel1: TPanel;
    GridClientes: TDBGrid;
    Panel2: TPanel;
    dsPrestacoes: TDataSource;
    dsContratos: TDataSource;
    Panel3: TPanel;
    btAbertas: TBitBtn;
    btAtrasadas: TBitBtn;
    tbtPagas: TBitBtn;
    PageControl1: TPageControl;
    tabAbertas: TTabSheet;
    DBGrid1: TDBGrid;
    tabAtrasadas: TTabSheet;
    GridPrestacoes: TDBGrid;
    tabPagas: TTabSheet;
    DBGrid2: TDBGrid;
    DBText1: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure GridClientesDblClick(Sender: TObject);
    procedure btAbertasClick(Sender: TObject);
    procedure btAtrasadasClick(Sender: TObject);
    procedure tbtPagasClick(Sender: TObject);
    procedure GridClientesEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;
  M_CDCONT:String;

implementation

Uses uBD, funcoes;

{$R *.DFM}

procedure TfrmConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbContratos.Close;
     dmBD.tbPrestacoes.Close;
     dmBD.qryPrestacoes.Close;
     Action := caFree;
end;

procedure TfrmConsulta.FormActivate(Sender: TObject);
begin
     if (dmBD.tbContratos.Active = False) Then
        dmBD.tbContratos.open;
     if (dmBD.tbPrestacoes.Active = False) then
         dmBD.tbPrestacoes.Open;
     //
    tabAbertas.TabVisible := False;
    tabAtrasadas.TabVisible := False;
    tabPagas.TabVisible := False;
end;

procedure TfrmConsulta.GridClientesDblClick(Sender: TObject);
begin
      dmBD.tbContratos.Edit;
      M_CDCONT := dmBD.tbContratosCTC_CDCONT.Value;
      //
      {If (dmBD.tbContratosCTC_DTATUA.Value < Date()) Then
      begin
            Funcoes.ENTRADA;
            Funcoes.CHAVE;
            TESTA_VENCIDAS;
            //Funcoes.BALOES;
            Funcoes.PRESTACAO;
            dmBD.tbContratosCTC_DTATUA.Value := dATE();
            dmBD.tbContratos.Post;
      End
      Else}
          dmBD.tbContratos.Cancel;
      //
      btAbertasClick(Sender);
      //btAbertas.SetFocus;
      //
end;

procedure TfrmConsulta.btAbertasClick(Sender: TObject);
begin
    tabAbertas.TabVisible := True;
    tabAtrasadas.TabVisible := False;
    tabPagas.TabVisible := False;
    //
    M_CDCONT := dmBD.tbContratosCTC_CDCONT.Value;
    //
    If not funcoes.Empty(M_CDCONT) Then
    begin
      With dmBD.qryPrestacoes do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Select * from SACPRE Where PRE_CDCONT='+Quotedstr(M_CDCONT));
           SQL.Add('and PRE_FLSITU="A" and PRE_DTVENC>=:pDataAtual');
           ParamByName('pDataAtual').AsDateTime := Date();
           Prepare;
           Open;
      End;
    End;
end;

procedure TfrmConsulta.btAtrasadasClick(Sender: TObject);
begin
    tabAbertas.TabVisible := False;
    tabAtrasadas.TabVisible := True;
    tabPagas.TabVisible := False;
    //
    M_CDCONT := dmBD.tbContratosCTC_CDCONT.Value;
    //
    If not funcoes.Empty(M_CDCONT) Then
    begin
      With dmBD.qryPrestacoes do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Select * from SACPRE Where PRE_CDCONT='+Quotedstr(M_CDCONT));
           SQL.Add('and PRE_FLSITU="A" and PRE_DTVENC<:pDataAtual');
           ParamByName('pDataAtual').AsDateTime := Date();
           Prepare;
           Open;
      End;
    End;
end;

procedure TfrmConsulta.tbtPagasClick(Sender: TObject);
begin
    tabAbertas.TabVisible := False;
    tabAtrasadas.TabVisible := False;
    tabPagas.TabVisible  := True;
    //
    M_CDCONT := dmBD.tbContratosCTC_CDCONT.Value;
    //
    If not funcoes.Empty(M_CDCONT) Then
    begin
      With dmBD.qryPrestacoes do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Select * from SACPRE Where PRE_CDCONT='+Quotedstr(M_CDCONT));
           SQL.Add('and PRE_FLSITU="P"');
           Prepare;
           Open;
      End;
    End;
end;

procedure TfrmConsulta.GridClientesEnter(Sender: TObject);
begin
    tabAbertas.TabVisible := False;
    tabAtrasadas.TabVisible := False;
    tabPagas.TabVisible := False;
end;

End.
