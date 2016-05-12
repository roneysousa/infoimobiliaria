unit uConfRelCli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TfrmConfRelCli = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cmbFLSITU: TComboBox;
    cmbTPPESS: TComboBox;
    cmbOrdem: TComboBox;
    cmbDEBIT: TComboBox;
    Button1: TButton;
    Button2: TButton;
    cmbSaida: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfRelCli: TfrmConfRelCli;

implementation

Uses uRelClientes, uBD, funcoes, uNetImo;


{$R *.DFM}

procedure TfrmConfRelCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmConfRelCli.Button1Click(Sender: TObject);
begin
          Application.CreateForm(TfrmRelClientes, frmRelClientes);{Carrega form na memória}
          Try
              {frmRelContApagar.txtLegenda.Caption := 'Relátorio de contas a pagar pendentes entre ';
              frmRelContApagar.txtLegenda.Caption :=  frmRelContApagar.txtLegenda.Caption+medtDTINIC.Text+' e '+ medtDTFINA.Text;
              frmRelContApagar.txtLegenda.Caption :=  frmRelContApagar.txtLegenda.Caption+', por ordem de vencimento';
              frmRelContApagar.txtNMSIST.Caption  :=  uNetPrincipal.M_NMSISTE;
              frmRelContApagar.tbForn.Active := True;}
              frmRelClientes.txtEmpresa.Caption := frmNetImo.NMEMPRE();
              frmRelClientes.txtUsuario.Caption := uNetImo.M_NMUSUA;
             // M_NMRELA := 'Relatório de clientes ';
              //
              With frmRelClientes Do
              begin
                   //txtNMEMPR.Caption := frmNetImo.NOME_EMPRESA();
                   //txtNMUSUA.Caption := 'USUÁRIO: '+uNetPrincipal.M_NMUSUA;
              End;
              //
              With frmRelClientes.qryClientes do
              begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACCLI');
                   // Tipo de pessoa
                   If (cmbTPPESS.Text<>'Todas') Then
                   begin
                        If (cmbTPPESS.Text = 'Fisica') Then
                            Sql.Add('Where CLI_TPPESS='+QuotedStr('False'));
                        If (cmbTPPESS.Text = 'Juridica') Then
                            Sql.Add('Where CLI_TPPESS='+QuotedStr('True'));
                   End;
                   // Situação do Cliente
                   If (cmbFLSITU.Text <> 'Todas') Then
                   begin
                       If (cmbFLSITU.Text = 'Normal') Then
                       begin
                            If (cmbTPPESS.Text = 'Todas') Then
                                Sql.Add('Where CLI_TPSITU='+QuotedStr('Normal'))
                            Else
                                Sql.Add('And CLI_TPSITU='+QuotedStr('Normal'));
                       End;
                       //
                       If (cmbFLSITU.Text = 'Suspenso') Then
                       Begin
                            If (cmbTPPESS.Text = 'Todas') Then
                                Sql.Add('Where CLI_TPSITU='+QuotedStr('Suspenso'))
                            Else
                                Sql.Add('And CLI_TPSITU='+QuotedStr('Suspenso'));
                       End;
                   End;
                   // Debito
                  { If (cmbDEBIT.Text <> 'Todos') Then
                   begin
                        If (cmbDEBIT.Text = 'Aberto(s)') Then
                            Sql.Add('And CLI_TPSITU='+QuotedStr('Suspenso'));
                   End;}
                   //
                   If (cmbOrdem.Text = 'Codigo') Then
                       Sql.Add('ORDER BY CLI_CDCLIE')
                   Else
                       Sql.Add('ORDER BY CLI_NMCLIE');
                   //
                   Prepare;
                   Open;
              End;
              //
              //frmRelClientes.txtNMRELA.Caption  := '';
              //
              If (cmbSaida.Text = 'Video') or (funcoes.Empty(cmbSaida.Text)) Then
                    frmRelClientes.qrClientes.Preview
              Else
                    frmRelClientes.qrClientes.Print;
          Finally
              frmRelClientes.Free;     {Libera Memória}
         End;
         //
         //Close;
end;

procedure TfrmConfRelCli.Button2Click(Sender: TObject);
begin
      Close;
end;

procedure TfrmConfRelCli.FormActivate(Sender: TObject);
begin
     cmbSaida.ItemIndex := 0;
     cmbFLSITU.ItemIndex := 0;
     cmbTPPESS.ItemIndex := 0;
     cmbOrdem.ItemIndex := 0;
end;

end.
