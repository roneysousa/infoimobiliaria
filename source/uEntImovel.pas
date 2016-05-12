unit uEntImovel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, StdCtrls, Mask, DBCtrls, Buttons;

type
  TfrmEntImovel = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    dsContrato: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    dbeDTENTREGA: TDBEdit;
    dbeDTMUND: TDBEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntImovel: TfrmEntImovel;

implementation

uses uBD, funcoes;

{$R *.DFM}

procedure TfrmEntImovel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action:= caFree;
end;

procedure TfrmEntImovel.BitBtn1Click(Sender: TObject);
Var
    M_CDCONT : String;
    M_VLCORR,M_VLINDI : Double;
    M_FLACUM : Boolean;
    M_CONTA : Integer;
begin
     If Funcoes.Empty(dbeDTENTREGA.Text) Then
             dbeDTENTREGA.SetFocus;
     If Funcoes.Empty(dbeDTMUND.Text) Then
             dbeDTMUND.SetFocus;
     //
     If (dsContrato.State in [dsEdit]) Then
     begin
           // grava as datas
          dmBD.tbContratos.Post;
          //
          M_CDCONT := dmBD.tbContratosCTC_CDCONT.Value;
          M_CONTA  := 1;
          //
          If (dmBD.tbIndices.Active = False) Then
              dmBD.tbIndices.Open;
          dmBD.tbIndices.Locate('IND_CDINDI',dmBD.tbContratosCTC_INDENT.Value,[]);
          dmBD.tbIndices.Edit;
          M_VLINDI := dmBD.tbIndicesIND_VLJURO.Value;
          M_FLACUM := dmBD.tbIndicesIND_JUACUM.Value;
          M_VLCORR := dmBD.tbIndicesIND_VLCORR.Value;
          dmBD.tbIndices.Cancel;
          //
          dmBD.tbPrestacoes.open;
          dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(M_CDCONT)+' And PRE_FLSITU='+QuotedStr('A');
          dmBD.tbPrestacoes.Filtered := True;
          dmBD.tbPrestacoes.First;
          While not (dmBD.tbPrestacoes.Eof) do
          begin
               dmBD.tbPrestacoes.Edit;
               If (dmBD.tbPrestacoesPRE_DTVENC.Value >= dmBD.tbContratosCTC_DTMUIN.Value) Then
               begin
                    dmBD.tbPrestacoesPRE_CDINDI.Value := dmBD.tbContratosCTC_INDENT.Value;
                    dmBD.tbPrestacoesPRE_PECORR.Value := M_VLCORR;
                    //
                    If (M_FLACUM=True) Then
                    begin
                         dmBD.tbPrestacoesPRE_PEJURO.Value := M_CONTA;
                         dmBD.tbPrestacoesPRE_FLJUAC.Value := M_FLACUM;
                         M_CONTA := M_CONTA+1;
                    End
                    Else
                         dmBD.tbPrestacoesPRE_PEJURO.Value := M_VLINDI;
               End;
               dmBD.tbPrestacoes.Next;
          End;
          //
          dmBD.tbPrestacoes.Filtered := False;
          dmBD.tbPrestacoes.Close;
     End;
end;

end.
