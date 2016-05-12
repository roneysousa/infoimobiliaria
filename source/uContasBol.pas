unit uContasBol;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ToolWin, ComCtrls, Db, Grids, DBGrids, gbCobranca, StdCtrls,
  Mask;

type
  TfrmContBol = class(TForm)
    ToolBar1: TToolBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GridContas: TDBGrid;
    dsContas: TDataSource;
    btPrimeiro: TToolButton;
    btAnterior: TToolButton;
    btProximo: TToolButton;
    btUltimo: TToolButton;
    btVisualizar: TToolButton;
    btImprimir: TToolButton;
    btFechar: TToolButton;
    edtDTINIC: TMaskEdit;
    edtDTFINA: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    btTodos: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure GridContasDblClick(Sender: TObject);
    procedure edtDTFINAKeyPress(Sender: TObject; var Key: Char);
    procedure btImprimirClick(Sender: TObject);
    procedure btTodosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContBol: TfrmContBol;
  M_NRFATU : String;

implementation

uses uBD, uNetImo, uBoleto,funcoes, uRelBoletos;

{$R *.DFM}

procedure TfrmContBol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dmBD.tbPrestacoes.Filtered := False;
     dmBD.tbPrestacoes.Close;
     //
     Action := caFree;
end;

procedure TfrmContBol.FormActivate(Sender: TObject);
begin
     If (dmBD.tbPrestacoes.Active = False) Then
         dmBD.tbPrestacoes.Open;
     //
     dmBD.tbPrestacoes.Filter   := 'PRE_FLSITU='+QuotedStr('A');
     dmBD.tbPrestacoes.Filtered := True;
end;

procedure TfrmContBol.btPrimeiroClick(Sender: TObject);
begin
     If Not(dmBD.tbPrestacoes.Bof) then
         dmBD.tbPrestacoes.First;
end;

procedure TfrmContBol.btAnteriorClick(Sender: TObject);
begin
     If Not(dmBD.tbPrestacoes.Bof) then
         dmBD.tbPrestacoes.Prior;
end;

procedure TfrmContBol.btProximoClick(Sender: TObject);
begin
     If Not(dmBD.tbPrestacoes.Eof) then
         dmBD.tbPrestacoes.Next;
end;

procedure TfrmContBol.btUltimoClick(Sender: TObject);
begin
     If Not(dmBD.tbPrestacoes.Eof) then
         dmBD.tbPrestacoes.Last;
End;


procedure TfrmContBol.btVisualizarClick(Sender: TObject);
Var
    M_NRRECE,M_NMCLIE:String;
begin
    Try
       If not funcoes.Empty(edtDTINIC.Text)
              and not Funcoes.Empty(edtDTFINA.Text) Then
       begin
             Application.CreateForm(TfrmNewBoleto, frmNewBoleto);
             with frmNewBoleto do
             begin
                  qrBoleto.Preview;
                  Close;
                  //
                  {with repBoletos do
                  begin
                        With qryBoletos do
                        begin
                             Close;
                             SQL.Clear;
                             SQL.Add('Select * from SACPRE Where PRE_FLSITU="A"');
                             SQL.Add('And PRE_DTVENC>=:pInicial and PRE_DTVENC<=:pFinal');
                             ParamByName('pInicial').AsDateTime := StrToDate(edtDTINIC.Text);
                             ParamByName('pFinal').AsDateTime := StrToDate(edtDTFINA.Text);
                             Prepare;
                             Open;
                        End;
                        //ReportTitle := 'Visualiza��o de Boletos - Cliente: '+M_NMCLIE;
                        //
                        Preview;
                   End;}
             end;
        End;
     Except
           ShowMessage('Erro ao tentar visualizar boleto.');
           Raise;
     End;
end;

procedure TfrmContBol.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmContBol.GridContasDblClick(Sender: TObject);
begin
      btVisualizarClick(Sender);
end;

procedure TfrmContBol.edtDTFINAKeyPress(Sender: TObject; var Key: Char);
begin
     If (key = #13) Then
     Begin
          Key := #0;
          //
          If not funcoes.Empty(edtDTINIC.Text)
              and not Funcoes.Empty(edtDTFINA.Text) Then
          begin
               dmBD.tbPrestacoes.Filter   := 'PRE_DTVENC>='+QuotedStr(edtDTINIC.Text)+' And PRE_DTVENC<='+QuotedStr(edtDTFINA.Text);
               dmBD.tbPrestacoes.Filtered := True;
          End;
     End;
end;

procedure TfrmContBol.btImprimirClick(Sender: TObject);
Var
    M_CDPRES:String;
begin
     Try
        M_CDPRES := DmBD.tbPrestacoesPRE_CDPRES.Value;
        //
        DmBD.tbPrestacoes.Filter   := 'PRE_CDPRES='+QuotedStr(M_CDPRES);
        DmBD.tbPrestacoes.Filtered := True;
        //
        Application.CreateForm(TfrmBoletos, frmBoletos);
        with frmBoletos do
        begin
             repBoletos.Preview;
             Close;
        End;
        //
        DmBD.tbPrestacoes.Filtered := False;
        dmBD.tbPrestacoes.Filter   := 'PRE_FLSITU='+QuotedStr('A');
        dmBD.tbPrestacoes.Filtered := True;
    Except
        ShowMessage('Erro ao tentar imprimir boleto!');
    End;
end;

procedure TfrmContBol.btTodosClick(Sender: TObject);
begin
     dmBD.tbPrestacoes.Filtered := False;
     dmBD.tbPrestacoes.Filter   := 'PRE_FLSITU='+QuotedStr('A');
     dmBD.tbPrestacoes.Filtered := True;
end;

end.
