unit uCadBaloes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls;

type
  TfrmBaloes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btConfirmar: TBitBtn;
    btCancelar: TBitBtn;
    GridBaloes: TDBGrid;
    DBText1: TDBText;
    dbeVALOR: TDBEdit;
    dbeDTVENC: TDBEdit;
    procedure btCancelarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbeDTVENCKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaloes: TfrmBaloes;
  M_NRBALO : INTEGER;
  
implementation

Uses uContrato, uBD;

{$R *.DFM}

procedure TfrmBaloes.btCancelarClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmBaloes.btConfirmarClick(Sender: TObject);
Var
    M_TOBALO : Double;
begin
     M_TOBALO := 0;
     dmBD.tbBaloes.First;
     While not (dmBD.tbBaloes.eof) Do
     begin
          M_TOBALO := M_TOBALO+dmBD.tbBaloesBAL_VLBALA.Value;
          dmBD.tbBaloes.Next;
     End;
     //
     dmBD.tbContratosCTC_TOBALO.Value := M_TOBALO;
     //
     Close;
end;

procedure TfrmBaloes.FormActivate(Sender: TObject);
begin
//     uBD.M_SALVAR := False;
     dbeVALOR.SetFocus;
     M_NRBALO := 1;
end;

procedure TfrmBaloes.dbeDTVENCKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 then
     begin
          Key := #0;
          if (M_NRBALO < dmBD.tbContratosCTC_QTBALO.Value) Then
          begin
               M_NRBALO := M_NRBALO+1;
               dmBD.tbBaloes.Next;
               dbeVALOR.SetFocus;
          End
          Else
          begin
               btConfirmar.Enabled := True;
               btConfirmar.SetFocus; 
          End;
     End;
end;

end.
