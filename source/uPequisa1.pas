unit uPequisa1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask,DB;

type
  TfrmLocalizar = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    pnlPesquisa: TPanel;
    lblNome: TLabel;
    lblIdentidade: TLabel;
    lblCGFCGC: TLabel;
    edtNome: TEdit;
    edtCPFCGC: TEdit;
    BitBtn2: TBitBtn;
    sbNome: TSpeedButton;
    spIdentidade: TSpeedButton;
    sbCPFCGC: TSpeedButton;
    edtIdentidade: TEdit;
    edtCodigo: TEdit;
    lblNRPLACA: TLabel;
    sbNRPLACA: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCPFCGCKeyPress(Sender: TObject; var Key: Char);
    procedure edtNITKeyPress(Sender: TObject; var Key: Char);
    procedure edtNITChange(Sender: TObject);
    procedure edtNomeChange(Sender: TObject);
    procedure edtMatriculaChange(Sender: TObject);
    procedure edtCPFCGCChange(Sender: TObject);
    procedure sbNITClick(Sender: TObject);
    procedure sbNomeClick(Sender: TObject);
    procedure spIdentidadeClick(Sender: TObject);
    procedure edtNomeEnter(Sender: TObject);
    procedure edtCPFCGCEnter(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtIdentidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edtIdentidadeChange(Sender: TObject);
    procedure edtIdentidadeEnter(Sender: TObject);
    procedure edtCodigoChange(Sender: TObject);
    procedure sbCPFCGCClick(Sender: TObject);
  private
    procedure Localizar_Moto_Nome;
    Procedure Localizar_Cliente_Nome;
    Procedure Localizar_Cliente_Ident;
    Procedure Localizar_Fornec_Nome;
    Procedure Localiza_NUM_PLACA;
    Procedure Localizar_NMMATER;
    Procedure Localizar_CDMATERAL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizar: TfrmLocalizar;

implementation

uses uNetImo,Funcoes, uBD;

{$R *.DFM}

procedure TfrmLocalizar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TfrmLocalizar.edtCPFCGCKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
    begin
        key:=#0;
        sbCPFCGCClick(Sender);
    End;
end;

procedure TfrmLocalizar.edtNITKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
    begin
        key:=#0;
        sbNITClick(Sender);
    End;
    If not( key in['0'..'9',#8] ) then
    begin
         key:=#0;
         Exit;
    End;
end;

procedure TfrmLocalizar.edtNITChange(Sender: TObject);
begin
//    pnlPesquisa.Caption := edtNIT.Text;
end;

procedure TfrmLocalizar.edtNomeChange(Sender: TObject);
begin
    pnlPesquisa.Caption := edtNome.Text;
end;

procedure TfrmLocalizar.edtMatriculaChange(Sender: TObject);
begin
//    pnlPesquisa.Caption := edtMatricula.Text;
end;

procedure TfrmLocalizar.edtCPFCGCChange(Sender: TObject);
begin
    pnlPesquisa.Caption := edtCPFCGC.Text;
end;

procedure TfrmLocalizar.sbNITClick(Sender: TObject);
begin
    // Pesquisa por NIT
{    If Not frmIPMT.Empty(edtNIT.Text) Then
    begin
        With DmIPMT Do
        begin
            // Se n�o encontrar n� de NIT
            //If Not (tbServidor.FindKey([edtNIT.Text])) Then
            If Not (tbServidor.Locate('SER_NITPASEPCICI',edtNIT.Text,[])) Then
            begin
                // Mensagem para o usu�rio
                Application.MessageBox( 'N.� de NIT n�o Cadastrado!',
                   'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtNIT.Clear;
                edtNIT.SetFocus;
                Exit;                   // Sair da procedure
            End
            Else // Se encontrar, fechar form Pesquisa.
                frmPesquisa.Close;
        End;
    End;}
end;

procedure TfrmLocalizar.sbNomeClick(Sender: TObject);
begin
    // Cliente
    If (frmLocalizar.Caption = 'Clientes') Then
        Localizar_Cliente_Nome;
    // Motorista
    If (frmLocalizar.Caption = 'Motoristas') Then
       Localizar_Moto_Nome;
    // fornecedor
{    If (frmLocalizar.Caption = 'Fornecedores') Then
       Localizar_Fornec_Nome;
    // Materiais
    If (frmLocalizar.Caption = 'Materiais') then
        Localizar_NMMATER;}
end;

procedure TfrmLocalizar.spIdentidadeClick(Sender: TObject);
begin
    // Cliente
    If (frmLocalizar.Caption = 'Clientes') Then
        Localizar_Cliente_Ident;
end;

procedure TfrmLocalizar.edtNomeEnter(Sender: TObject);
begin
{    sbNome.Enabled := True;
    spIdentidade.Enabled := False;
    sbCPF.Enabled  := False;}
end;

procedure TfrmLocalizar.edtCPFCGCEnter(Sender: TObject);
begin
{    sbNome.Enabled := False;
    spIdentidade.Enabled := False;
    sbCPF.Enabled  := True;}
end;

procedure TfrmLocalizar.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
    If Key = #13 then
    begin
        key:=#0;
        sbNomeClick(Sender);
    End;
end;

procedure TfrmLocalizar.edtIdentidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 then
    begin
        key:=#0;
           spIdentidadeClick(Sender);
    End;
    If not( key in['0'..'9',#8] ) then
    begin
         key:=#0;
         Exit;
    End;
end;

procedure TfrmLocalizar.edtIdentidadeChange(Sender: TObject);
begin
    pnlPesquisa.Caption := edtIdentidade.Text;
end;

procedure TfrmLocalizar.edtIdentidadeEnter(Sender: TObject);
begin
{    sbNome.Enabled := False;
    spIdentidade.Enabled := True;
    sbCPF.Enabled  := False;}
end;

procedure TfrmLocalizar.Localizar_Moto_Nome;
Var
   M_NMMOTO:String;
begin
{    // Pesquisa por Nome do Cliente
    If Not Funcoes.Empty(edtNome.Text) Then
    begin
        With DmDados Do
        begin
            M_NMMOTO := edtNome.Text;
            // Se n�o encontrar o nome do Servido.
            If Not (tbMotorista.Locate('MOT_NMMOTO',M_NMMOTO,[loCaseInsensitive,loPartialKey])) Then
            begin
                // Mensagem para o usu�rio
                Application.MessageBox( 'Nome do motorista n�o cadastrado!',
                   'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtNome.Clear;
                edtNome.SetFocus;
                Exit;                   // Sair da procedure
            End
            Else // Se encontrar, fechar form Pesquisa.
                frmPesquisa.Close;
        End;
    End;}
end;

procedure TfrmLocalizar.Localizar_Cliente_Nome;
Var
   M_NMCLIE:String;
begin
    // Pesquisa por Nome do Cliente
    If Not Funcoes.Empty(edtNome.Text) Then
    begin
        With dmBD Do
        begin
            M_NMCLIE := edtNome.Text;
            // Se n�o encontrar o nome do Servido.
            If Not (tbClientes.Locate('CLI_NMCLIE',M_NMCLIE,[loCaseInsensitive,loPartialKey])) Then
            begin
                // Mensagem para o usu�rio
                Application.MessageBox( 'Nome de cliente n�o cadastrado!',
                   'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtNome.Clear;
                edtNome.SetFocus;
                Exit;                   // Sair da procedure
            End
            Else // Se encontrar, fechar form Pesquisa.
                frmLocalizar.Close;
        End;
    End;
end;

procedure TfrmLocalizar.Localizar_Fornec_Nome;
Var
   M_NMFORN:String;
begin
    // Pesquisa por Nome de Fantasia
    If Not Funcoes.Empty(edtNome.Text) Then
    begin
        With DmBD Do
        begin
            M_NMFORN := edtNome.Text;
            // Se n�o encontrar o nome do Servido.
            If Not (tbFornecedores.Locate('FOR_NMFORN',M_NMFORN,[loCaseInsensitive,loPartialKey])) Then
            begin
                // Mensagem para o usu�rio
                Application.MessageBox('Nome de fornecedor n�o cadastrado!',
                   'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtNome.Clear;
                edtNome.SetFocus;
                Exit;                   // Sair da procedure
            End
            Else // Se encontrar, fechar form Pesquisa.
                frmLocalizar.Close;
        End;
    End;
end;

procedure TfrmLocalizar.Localiza_NUM_PLACA;
Var
   M_NRPLAC:String;
begin
    // Pesquisa por Nome de Fantasia
{    If Not Funcoes.Empty(edtNome.Text) Then
    begin
        With dmBD Do
        begin
            M_NRPLAC := edtNome.Text;
            // Se n�o encontrar o nome do Servido.
            If Not (tbVeiculo.Locate('UNI_NRPLAC',M_NRPLAC,[])) Then
            begin
                // Mensagem para o usu�rio
                Application.MessageBox( 'Nome de fornecedor n�o cadastrado!',
                   'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtNome.Clear;
                edtNome.SetFocus;
                Exit;                   // Sair da procedure
            End
            Else // Se encontrar, fechar form Pesquisa.
                frmPesquisa.Close;
        End;
    End;}
end;

procedure TfrmLocalizar.Localizar_NMMATER;
Var
   M_NMMATER:String;
begin
    // Pesquisa por Nome do Material
{    If Not Funcoes.Empty(edtNome.Text) Then
    begin
        With DmDados Do
        begin
            M_NMMATER := edtNome.Text;
            // Se n�o encontrar o nome do Servido.
            If Not (tbProduto.Locate('PRO_NMPROD',M_NMMATER,[loCaseInsensitive,loPartialKey])) Then
            begin
                // Mensagem para o usu�rio
                Application.MessageBox( 'Nome de material n�o cadastrado.',
                   'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtNome.Clear;
                edtNome.SetFocus;
                Exit;                   // Sair da procedure
            End
            Else // Se encontrar, fechar form Pesquisa.
                frmPesquisa.Close;
        End;
    End;}
end;

procedure TfrmLocalizar.Localizar_Cliente_Ident;
begin
    // Pesquisa por Identidade.
    If Not funcoes.Empty(edtIdentidade.Text) Then
    begin
        With dmBD Do
        begin
            // Se n�o encontrar n� de Identidade.
            If Not (tbClientes.Locate('CLI_IDEINS',edtIdentidade.Text,[])) Then
            begin
                // Mensagem para o usu�rio
                Application.MessageBox('Identidade de cliente n�o cadastrado!',
                   'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtIdentidade.Clear;
                edtIdentidade.SetFocus;
                Exit;                   // Sair da procedure
            End
            Else // Se encontrar, fechar form Pesquisa.
                frmLocalizar.Close;
        End;
    End;
end;

procedure TfrmLocalizar.Localizar_CDMATERAL;
Var
   M_CDMATER:String;
begin
{    // Pesquisa por Nome do Material
    If Not Funcoes.Empty(edtIdentidade.Text) Then
    begin
        edtIdentidade.Text := funcoes.StrZero(edtIdentidade.Text,13);
        With DmDados Do
        begin
            M_CDMATER := edtIdentidade.Text;
            // Se n�o encontrar o nome do Servido.
            If Not (tbProduto.Locate('PRO_CDPROD',M_CDMATER,[])) Then
            begin
                // Mensagem para o usu�rio
                Application.MessageBox( 'C�digo de material n�o cadastrado.',
                   'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                edtIdentidade.Clear;
                edtIdentidade.SetFocus;
                Exit;                   // Sair da procedure
            End
            Else // Se encontrar, fechar form Pesquisa.
                frmPesquisa.Close;
        End;
    End;}
end;

procedure TfrmLocalizar.edtCodigoChange(Sender: TObject);
begin
    pnlPesquisa.Caption := edtCodigo.Text;
end;

procedure TfrmLocalizar.sbCPFCGCClick(Sender: TObject);
begin
  If (frmLocalizar.Caption = 'Clientes') Then
  begin
      // Pesquisa por C�digo do cliente.
      If Not funcoes.Empty(edtCPFCGC.Text) Then
      begin
           With DmBD Do
           begin
                // Se n�o encontrar C�digo do cliente.
                If Not (tbClientes.Locate('CLI_CPFCGC',edtCPFCGC.Text,[])) Then
                begin
                      // Mensagem para o usu�rio
                     Application.MessageBox('CPF/CGC n�o Cadastrado!',
                           'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     edtCodigo.Clear;
                     edtCodigo.SetFocus;
                     Exit;                   // Sair da procedure
                End
                Else // Se encontrar, fechar form Pesquisa.
                    frmLocalizar.Close;
        End;
    End;
  End;
end;

end.
