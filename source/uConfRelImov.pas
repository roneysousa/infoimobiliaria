unit uConfRelImov;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TfrmConfRelImovel = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    cmbFLSITU: TComboBox;
    cmbSaida: TComboBox;
    btGerar: TButton;
    btFechar: TButton;
    procedure btFecharClick(Sender: TObject);
    procedure btGerarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfRelImovel: TfrmConfRelImovel;

implementation

uses uRelImovel, uNetImo, FUNCOES;

{$R *.DFM}

procedure TfrmConfRelImovel.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmConfRelImovel.btGerarClick(Sender: TObject);
begin
          Application.CreateForm(TfrmRelImovel, frmRelImovel);{Carrega form na memória}
          Try
              //
              With frmRelImovel Do
              begin
                    txtEmpresa.Caption := frmNetImo.NMEMPRE();
                    txtUsuario.Caption := uNetImo.M_NMUSUA;
                    txtNMRELA1.Caption := txtNMRELA1.Caption+' -  '+cmbFLSITU.Text;
              End;
              //
              With frmRelImovel.qryImovel do
              begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACIMO');
                   If (cmbFLSITU.Text <> 'TODOS') Then
                   begin
                        If (cmbFLSITU.Text = 'VENDIDOS') Then
                           Sql.Add('Where IMO_FLIMOV='+QuotedStr('VENDIDO'));
                        If (cmbFLSITU.Text = 'DISPONIVEIS') Then
                           Sql.Add('Where IMO_FLIMOV='+QuotedStr('DISPONIVEL'));
                   End;
                   Prepare;
                   Open;
              End;
              //
              If (cmbSaida.Text = 'Video') or (funcoes.Empty(cmbSaida.Text)) Then
                    frmRelImovel.qrImovel.Preview
              Else
                    frmRelImovel.qrImovel.Print;
          Finally
              frmRelImovel.Free;     {Libera Memória}
         End;
end;

procedure TfrmConfRelImovel.FormActivate(Sender: TObject);
begin
     cmbFLSITU.ItemIndex := 0;
     cmbSaida.ItemIndex := 0;
end;

end.
