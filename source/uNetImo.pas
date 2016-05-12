// Sistema de Acompanhamento Imobiliarios
// Programador: Roney Erdemann Siqueira de Sousa
// Empresa: NetSoft Tecnologia em Sistema.
// Data: 04/05/2004
// Unidade: Principal
//
unit uNetImo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ToolWin, ComCtrls, ImgList, StdCtrls,Registry, Db, DBTables,DBITYPES,
  ExtCtrls, OleCtrls,uCadClientes2,uCadMoveis,uCadForn,uCadConPagar,uPagamContas,
  uCadReceber2,uRecebimento,uContasBol, uCadEmpred, uContrato, uCadIndices,
  uCorrecoesInd, uManuPretacoes,uConfiguracoes,uBoleto,uUsuarios2,uConsulta,
  uCadBancos,uBaixaCheque;

type
  TfrmNetImo = class(TForm)
    MainMenu1: TMainMenu;
    ToolBar1: TToolBar;
    Cadastros1: TMenuItem;
    mnuFornecedor: TMenuItem;
    Movimento1: TMenuItem;
    Finaceiro1: TMenuItem;
    Relatrios1: TMenuItem;
    Utilitrios1: TMenuItem;
    Ajuda1: TMenuItem;
    N1: TMenuItem;
    mnuSairItem: TMenuItem;
    btFechar: TToolButton;
    btFornecedor: TToolButton;
    ToolButton3: TToolButton;
    barStatus: TStatusBar;
    Sistema1: TMenuItem;
    mnuContratosItem: TMenuItem;
    Usurio1: TMenuItem;
    AcessoporMdulo1: TMenuItem;
    mnuClienteItem: TMenuItem;
    Janela1: TMenuItem;
    Cascata1: TMenuItem;
    LadoaLado1: TMenuItem;
    MinimizarTodas1: TMenuItem;
    FecharTodas1: TMenuItem;
    OpenDialog1: TOpenDialog;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    mnuNavegacao: TMenuItem;
    mnuPrimeiroItem: TMenuItem;
    mnuAnteriorItem: TMenuItem;
    mnuProximoItem: TMenuItem;
    mnuUltimoItem: TMenuItem;
    N2: TMenuItem;
    mnuAdicionarItem: TMenuItem;
    mnuEditarItem: TMenuItem;
    mnuExcluirItem: TMenuItem;
    N3: TMenuItem;
    mnuGravarItem: TMenuItem;
    mnuCancelarItem: TMenuItem;
    lista_imagens: TImageList;
    mnuImovelItem: TMenuItem;
    mnuTaxaIndicesItem: TMenuItem;
    Correesdendeces1: TMenuItem;
    mnuEmissoBoletosItem: TMenuItem;
    Cadastros2: TMenuItem;
    Movimentos1: TMenuItem;
    Financeiro1: TMenuItem;
    ToolButton1: TToolButton;
    mnuCadContPagarSubItem: TMenuItem;
    mnuPagamentoContSubItem: TMenuItem;
    CadastroContasaReceber1: TMenuItem;
    RecebimentodeContas1: TMenuItem;
    mnuUtilitarios: TMenuItem;
    mnuClientesSubItem: TMenuItem;
    mnuFornecedorSubItem: TMenuItem;
    mnuImoveisSubItem: TMenuItem;
    mnuTaxasIndicesSubItem: TMenuItem;
    mnuContPeriodoSubItem: TMenuItem;
    mnuCorrecoesIndicesSubItem: TMenuItem;
    mnuImoveisClienSubItem: TMenuItem;
    mnuContasPagarSubItem: TMenuItem;
    mnuContasReceberSubItem: TMenuItem;
    mnuClienInadimpSubItem: TMenuItem;
    mnuRelFornCodigo: TMenuItem;
    mnuRelFornNome: TMenuItem;
    Empredimento1: TMenuItem;
    N4: TMenuItem;
    mnuPrestacoesItem: TMenuItem;
    N5: TMenuItem;
    ReceberpEmpreendeimento1: TMenuItem;
    ReceberPagar1: TMenuItem;
    btTaxas: TToolButton;
    ManutenodeBales1: TMenuItem;
    Tabelas1: TMenuItem;
    TiposdeImoveis1: TMenuItem;
    mnuConfiguracoesSubItem: TMenuItem;
    ToolButton2: TToolButton;
    btEmpreedimento: TToolButton;
    tbContratos: TToolButton;
    tbReceber: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    SituaodoImovel1: TMenuItem;
    btAtualizar: TToolButton;
    ToolButton9: TToolButton;
    mnuUsuariosItem: TMenuItem;
    mnuAcessoItem: TMenuItem;
    statuNetsoft: TStatusBar;
    Consulta1: TMenuItem;
    mnuBancosSubItem: TMenuItem;
    N6: TMenuItem;
    Cheques1: TMenuItem;
    Baixa1: TMenuItem;
    procedure mnuSairItemClick(Sender: TObject);
    procedure Sistema1Click(Sender: TObject);
    procedure mnuClienteItemClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Cascata1Click(Sender: TObject);
    procedure LadoaLado1Click(Sender: TObject);
    procedure MinimizarTodas1Click(Sender: TObject);
    procedure FecharTodas1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FuncionriosConvnios1Click(Sender: TObject);
    procedure RecebimentodePrestaeos1Click(Sender: TObject);
    procedure mnuImovelItemClick(Sender: TObject);
    procedure mnuFornecedorClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure mnuCadContPagarSubItemClick(Sender: TObject);
    procedure mnuPagamentoContSubItemClick(Sender: TObject);
    procedure CadastroContasaReceber1Click(Sender: TObject);
    procedure RecebimentodeContas1Click(Sender: TObject);
    procedure mnuEmissoBoletosItemClick(Sender: TObject);
    procedure mnuClientesSubItemClick(Sender: TObject);
    procedure mnuRelFornCodigoClick(Sender: TObject);
    procedure mnuRelFornNomeClick(Sender: TObject);
    procedure mnuImoveisSubItemClick(Sender: TObject);
    procedure mnuContasPagarSubItemClick(Sender: TObject);
    procedure Empredimento1Click(Sender: TObject);
    procedure mnuContratosItemClick(Sender: TObject);
    procedure mnuTaxaIndicesItemClick(Sender: TObject);
    procedure Correesdendeces1Click(Sender: TObject);
    procedure mnuPrestacoesItemClick(Sender: TObject);
    procedure mnuContasReceberSubItemClick(Sender: TObject);
    procedure mnuImoveisClienSubItemClick(Sender: TObject);
    procedure ReceberpEmpreendeimento1Click(Sender: TObject);
    procedure ReceberPagar1Click(Sender: TObject);
    procedure mnuCorrecoesIndicesSubItemClick(Sender: TObject);
    procedure TiposdeImoveis1Click(Sender: TObject);
    procedure mnuConfiguracoesSubItemClick(Sender: TObject);
    procedure SituaodoImovel1Click(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure mnuUsuariosItemClick(Sender: TObject);
    procedure Consulta1Click(Sender: TObject);
    procedure mnuPrimeiroItemClick(Sender: TObject);
    procedure mnuAnteriorItemClick(Sender: TObject);
    procedure mnuProximoItemClick(Sender: TObject);
    procedure mnuUltimoItemClick(Sender: TObject);
    procedure mnuAdicionarItemClick(Sender: TObject);
    procedure mnuEditarItemClick(Sender: TObject);
    procedure mnuExcluirItemClick(Sender: TObject);
    procedure mnuGravarItemClick(Sender: TObject);
    procedure mnuCancelarItemClick(Sender: TObject);
    procedure mnuBancosSubItemClick(Sender: TObject);
    procedure Baixa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     grafico: TBitmap;
  public
    { Public declarations }
    Procedure Validar_Prog;
    function PasswordInputBox(const ACaption, APrompt:string): string;
    Procedure Autenticar;
    Function ExisteForm(pForm:TForm):boolean;
    function RetZero(ZEROS:string;QUANT:integer):String;
    function Empty(inString:String): Boolean;
    Function IsRecordLocked(Tabela: TTable; ByAnyone: boolean): Boolean;
    procedure DisplayHint(Sender: TObject);
    Function Acesso(M_CDACES, M_NMFORM: String): Boolean;
    Function NMEMPRE():String;
  end;

Const
    M_USERMASTER = 'ADMIN';
    M_SNMASTER   = 'ADMIN';
    M_AUTEN      = 'NET';

var
  frmNetImo: TfrmNetImo;
  JanelaAtiva:String;
  M_CDUSUA,M_NMUSUA,M_NMEMPR:String;
  frmCadCliente : TfrmCadCliente;
  frmCadImovel :TfrmCadImovel;
  frmCadForn : TfrmCadForn;
  frmContPagar :TfrmContPagar;
  frmPagamContas : TfrmPagamContas;
  frmCadContReceber : TfrmCadContReceber;
  frmRecebimentos : TfrmRecebimentos;
  frmContBol : TfrmContBol;
  frmCadEmpred : TfrmCadEmpred;
  frmContrato : TfrmContrato;
  frmCadIndices : TfrmCadIndices;
  frmCorrecoes : TfrmCorrecoes;
  frmManuPrestacoes : TfrmManuPrestacoes;
  frmConfiguracoes : TfrmConfiguracoes;
  frmCadUsuarios : TfrmCadUsuarios;
  frmConsulta :TfrmConsulta;
  frmCadBancos : TfrmCadBancos;
  frmCheques : TfrmCheques;

implementation

uses uBD, uCadReceber, uConfRelCli,uRelForn, uConfRelImov, uConfRelPagar,
  uConfRelReceber, uConfImoClie, uConfRel2, uPagRec, uConRelatorio,
  uSelCliente, Funcoes, uCadTpImoveis, uCadSitImovel, uNetSobre1, uNetLogon;

{$R *.DFM}

Function TfrmNetImo.Acesso(M_CDACES, M_NMFORM: String): Boolean;
begin
   { If (dmBD.tbAcesso.Active = False) Then
       DmBD.tbAcesso.Open;
    If (DmBD.tbAcesso.Locate('ACE_CDUSUA;ACE_NMFORM;ACE_ACESSO',
           VarArrayOf([M_CDACES, M_NMFORM, 'True']),[])) Then
        result := True          // Liberar o Acesso
    Else
        result := False;
    DmBD.tbAcesso.Close;}
end;

function TfrmNetImo.ExisteForm(pForm: TForm): Boolean;
Var
    I:integer;
begin
    ExisteForm := False;
    For I:= 0 to Screen.FormCount -1 do
        If Screen.Forms[I] = pForm Then
        begin
            ExisteForm := True;
            Break;
        End;
end;

Function TfrmNetImo.IsRecordLocked(Tabela: TTable; ByAnyone: boolean): Boolean;
var
Locked: BOOL;
hCur: hDBICur;
rslt: DBIResult;
begin
        Tabela.UpdateCursorPos;
        // Is the record locked by the current session...
        Check(DbiIsRecordLocked(Tabela.Handle, Locked));
        Result := Locked;
        // If the current session does not have a lock and the ByAnyone varable is
        // set to check all sessions, continue check...
        if (Result = False) and (ByAnyone = True) then
        begin
        // Get a new cursor to the same record...
        Check(DbiCloneCursor(Tabela.Handle, False, False, hCur));
        try
        // Try and get the record with a write lock...
        rslt := DbiGetRecord(hCur, dbiWRITELOCK, nil, nil);
             if rslt <> DBIERR_NONE then
             begin
              // if an error occured and it is a lock error, return true...
               if HiByte(rslt) = ERRCAT_LOCKCONFLICT then
                       Result := True
             else
             // If some other error happened, throw an exception...
                Check(rslt);
             end
             else
            // Release the lock in this session if the function was successful...
             Check(DbiRelRecordLock(hCur, False));
        finally
                // Close the cloned cursor...
                Check(DbiCloseCursor(hCur));
        end;
        end;
end;

procedure TfrmNetImo.mnuSairItemClick(Sender: TObject);
begin
     If Application.MessageBox('Sair do sistema?',
           'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = idYes then
     Begin
          // funcoes.FECHAR_TABELAS;
          Application.Terminate;          // terminar o sistema
     End;
end;

procedure TfrmNetImo.Sistema1Click(Sender: TObject);
begin
     Application.CreateForm(TfrmNetSobre, frmNetSobre);
     frmNetSobre.ShowModal;
     frmNetSobre.Free;
end;

procedure TfrmNetImo.mnuClienteItemClick(Sender: TObject);
begin
    If ExisteForm(frmCadCliente) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCadCliente := TfrmCadCliente.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCadCliente.BringToFront;
        frmCadCliente.Focused;
    End;
end;


procedure TfrmNetImo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  If Application.MessageBox('Sair do Sistema?',
     'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idNo then
        Canclose:=False;
end;

function TfrmNetImo.RetZero(ZEROS: string; QUANT: integer): String;
var
I,Tamanho:integer;
aux: string;
begin
  aux:=zeros;
  Tamanho:=length(ZEROS);
  ZEROS:='';
  for I:=1 to quant-tamanho do
  ZEROS:=ZEROS+'0';
  aux:=zeros+aux;
  RetZero:=aux;
end;

function TfrmNetImo.Empty(inString:String): Boolean;
{Testa se a variavel está vazia ou não}
Var
  index : Byte;
Begin
  index := 1;
  Empty := True;
  while (index <= Length(inString))and (index <> 0) do
  begin
  if inString[index] = ' ' Then
  begin
 inc(index)
  end
  else
Begin
  Empty := False;
  index := 0
end;
  end;
end;

procedure TfrmNetImo.DisplayHint(Sender: TObject);
begin
     barStatus.Panels[1].Text := Application.Hint;
end;

procedure TfrmNetImo.FormCreate(Sender: TObject);
begin
    //Validar_Prog;
    //
    {If not(fileexists('c:\windows\CFGNS.NET')) then
    begin
          Autenticar;
    end;}
    //
     Application.OnHint := DisplayHint;
     //
     {dmBD.tbParametros.open;
     dmBD.tbParametros.Edit;
     If (dmBD.tbParametrosPAR_DTATUA.Value<Date()) Then
     begin
          Funcoes.TESTA_VENCIDAS;
          //Funcoes.AUTO_ATUALIZACAO;
          Funcoes.ATUALIZAR;
          //Funcoes.Atualizar_Receber;
          dmBD.tbParametrosPAR_DTATUA.Value := Date();
          dmBD.tbParametros.post;
     End
     else
         dmBD.tbParametros.Cancel;}
     //
    // Funcoes.TESTA_VENCIDAS;
end;

procedure TfrmNetImo.Cascata1Click(Sender: TObject);
begin
      //Coloca todas as janelas abertas em cascata.
       Cascade;
end;

procedure TfrmNetImo.LadoaLado1Click(Sender: TObject);
begin
      //Coloca todas as janelas abertas em lado a lado.
        Tile;
end;

procedure TfrmNetImo.MinimizarTodas1Click(Sender: TObject);
//minimizar todas as janelas abertas.
Var
   I:integer;
begin
   For I:=MdiChildCount-1 downto 0 do
        MdiChildren[I].WindowState:=wsMinimized;
end;

procedure TfrmNetImo.FecharTodas1Click(Sender: TObject);
//Fechar todas as janelas abertas.
var
  I: Integer;
begin
  with frmNetImo do
    for I := MDIChildCount-1 downto 0 do
      MDIChildren[I].Close;
end;

procedure TfrmNetImo.FormPaint(Sender: TObject);
begin
  // frmNetPlus.Canvas.Draw(0,0,grafico);
end;

procedure TfrmNetImo.FuncionriosConvnios1Click(Sender: TObject);
begin
{    if  OpenDialog1.Execute Then
    begin
       Skin1.LoadSkin(OpenDialog1.FileName);
       Skin1.ApplySkin (handle);
    End;}
end;

procedure TfrmNetImo.RecebimentodePrestaeos1Click(Sender: TObject);
begin
{    If ExisteForm(frmContaRec) = False Then
    begin
       LockWindowUpdate(Handle);
       frmContaRec := TfrmContaRec.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmContaRec.WindowState := wsMaximized;
        frmContaRec.BringToFront;
        frmContaRec.Focused;
    End;}
end;

procedure TfrmNetImo.mnuImovelItemClick(Sender: TObject);
begin
    If ExisteForm(frmCadImovel) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCadImovel := TfrmCadImovel.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCadImovel.BringToFront;
        frmCadImovel.Focused;
    End;
end;

procedure TfrmNetImo.mnuFornecedorClick(Sender: TObject);
begin
    If ExisteForm(frmCadForn) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCadForn := TfrmCadForn.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCadForn.BringToFront;
        frmCadForn.Focused;
    End;
end;

procedure TfrmNetImo.FormActivate(Sender: TObject);
begin
     mnuNavegacao.Enabled := False;
     //
     barStatus.Panels[0].Text := M_CDUSUA +' - '+ M_NMUSUA;
end;

procedure TfrmNetImo.mnuCadContPagarSubItemClick(Sender: TObject);
begin
    If ExisteForm(frmContPagar) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmContPagar := TfrmContPagar.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmContPagar.BringToFront;
        frmContPagar.Focused;
    End;
end;

procedure TfrmNetImo.mnuPagamentoContSubItemClick(Sender: TObject);
begin
    If ExisteForm(frmPagamContas) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmPagamContas := TfrmPagamContas.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmPagamContas.BringToFront;
        frmPagamContas.Focused;
    End;
end;

procedure TfrmNetImo.CadastroContasaReceber1Click(Sender: TObject);
begin
    //
    If ExisteForm(frmCadContReceber) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCadContReceber := TfrmCadContReceber.Create(Self);
       LockWindowUpdate(0);
       //
       Application.CreateForm(TfrmSeleCliente, frmSeleCliente);
       uSelCliente.M_NMFORM := 'CONTAS';
       frmSeleCliente.ShowModal;
       frmSeleCliente.Free;
       //
    End
    Else
    begin
        frmCadContReceber.BringToFront;
        frmCadContReceber.Focused;
    End;
end;

procedure TfrmNetImo.RecebimentodeContas1Click(Sender: TObject);
begin
    If ExisteForm(frmRecebimentos) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmRecebimentos := TfrmRecebimentos.Create(Self);
       LockWindowUpdate(0);
       //
       Application.CreateForm(TfrmSeleCliente, frmSeleCliente);
       uSelCliente.M_NMFORM := 'RECEBER';
       frmSeleCliente.ShowModal;
       frmSeleCliente.Free;
       //
    End
    Else
    begin
        frmRecebimentos.BringToFront;
        frmRecebimentos.Focused;
    End;
end;

procedure TfrmNetImo.mnuEmissoBoletosItemClick(Sender: TObject);
begin
    If ExisteForm(frmContBol) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmContBol := TfrmContBol.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmContBol.BringToFront;
        frmContBol.Focused;
    End;
end;

procedure TfrmNetImo.mnuClientesSubItemClick(Sender: TObject);
begin
     Application.CreateForm(TfrmConfRelCli, frmConfRelCli);
     frmConfRelCli.ShowModal;
     frmConfRelCli.Free;
end;

procedure TfrmNetImo.mnuRelFornCodigoClick(Sender: TObject);
begin
          Application.CreateForm(TfrmRelForn, frmRelForn);{Carrega form na memória}
          Try
              {frmRelContApagar.txtLegenda.Caption := 'Relátorio de contas a pagar pendentes entre ';
              frmRelContApagar.txtLegenda.Caption :=  frmRelContApagar.txtLegenda.Caption+medtDTINIC.Text+' e '+ medtDTFINA.Text;
              frmRelContApagar.txtLegenda.Caption :=  frmRelContApagar.txtLegenda.Caption+', por ordem de vencimento';
              frmRelContApagar.txtNMSIST.Caption  :=  uNetPrincipal.M_NMSISTE;}
              frmRelForn.txtEmpresa.Caption := NMEMPRE();
              frmRelForn.txtUsuario.Caption := M_NMUSUA;
              frmRelForn.txtNMRELA1.Caption := 'Relatório de Fornecedores por ordem de Código.';
              //
              With frmRelForn Do
              begin
                   //txtNMEMPR.Caption := frmNetImo.NOME_EMPRESA();
                   //txtNMUSUA.Caption := 'USUÁRIO: '+uNetPrincipal.M_NMUSUA;
              End;
              //
              With frmRelForn.qryFornec do
              begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACFOR ORDER BY FOR_CDFORN');
                   Prepare;
                   Open;
              End;
                   frmRelForn.qrForn.Preview
          Finally
              frmRelForn.Free;     {Libera Memória}
         End;
end;

procedure TfrmNetImo.mnuRelFornNomeClick(Sender: TObject);
begin
          Application.CreateForm(TfrmRelForn, frmRelForn);{Carrega form na memória}
          Try
              {frmRelContApagar.txtLegenda.Caption := 'Relátorio de contas a pagar pendentes entre ';
              frmRelContApagar.txtLegenda.Caption :=  frmRelContApagar.txtLegenda.Caption+medtDTINIC.Text+' e '+ medtDTFINA.Text;
              frmRelContApagar.txtLegenda.Caption :=  frmRelContApagar.txtLegenda.Caption+', por ordem de vencimento';
              frmRelContApagar.txtNMSIST.Caption  :=  uNetPrincipal.M_NMSISTE;}
              frmRelForn.txtEmpresa.Caption := NMEMPRE();
              frmRelForn.txtUsuario.Caption := M_NMUSUA;
              frmRelForn.txtNMRELA1.Caption := 'Relatório de Fornecedores por ordem de Nome.';              
              //
              With frmRelForn Do
              begin
                   //txtNMEMPR.Caption := frmNetImo.NOME_EMPRESA();
                   //txtNMUSUA.Caption := 'USUÁRIO: '+uNetPrincipal.M_NMUSUA;
              End;
              //
              With frmRelForn.qryFornec do
              begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACFOR ORDER BY FOR_NMFORN');
                   Prepare;
                   Open;
              End;
                   frmRelForn.qrForn.Preview
          Finally
              frmRelForn.Free;     {Libera Memória}
         End;
end;

function TfrmNetImo.NMEMPRE: String;
begin
     If (dmBD.tbParametros.Active = False ) Then
        dmBD.tbParametros.Open;
    //
    dmBD.tbParametros.Edit;
    result := dmBD.tbParametrosPAR_NMEMPR.Value;
    dmBD.tbParametros.Cancel;
    //
    dmBD.tbParametros.Close;
end;

procedure TfrmNetImo.mnuImoveisSubItemClick(Sender: TObject);
begin
     Application.CreateForm(TfrmConfRelImovel, frmConfRelImovel);
     frmConfRelImovel.ShowModal;
     frmConfRelImovel.Free;
end;

procedure TfrmNetImo.mnuContasPagarSubItemClick(Sender: TObject);
begin
     Application.CreateForm(TfrmConfPagar, frmConfPagar);
     frmConfPagar.ShowModal;
     frmConfPagar.Free;
end;

procedure TfrmNetImo.Empredimento1Click(Sender: TObject);
begin
    If ExisteForm(frmCadEmpred) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCadEmpred := TfrmCadEmpred.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCadEmpred.BringToFront;
        frmCadEmpred.Focused;
    End;
end;

procedure TfrmNetImo.mnuContratosItemClick(Sender: TObject);
begin
    If ExisteForm(frmContrato) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmContrato := TfrmContrato.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmContrato.BringToFront;
        frmContrato.Focused;
    End;
end;

procedure TfrmNetImo.mnuTaxaIndicesItemClick(Sender: TObject);
begin
    If ExisteForm(frmCadIndices) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCadIndices := TfrmCadIndices.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCadIndices.BringToFront;
        frmCadIndices.Focused;
    End;
end;

procedure TfrmNetImo.Correesdendeces1Click(Sender: TObject);
begin
    If ExisteForm(frmCorrecoes) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCorrecoes := TfrmCorrecoes.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCorrecoes.BringToFront;
        frmCorrecoes.Focused;
    End;
end;

procedure TfrmNetImo.mnuPrestacoesItemClick(Sender: TObject);
begin
    If ExisteForm(frmManuPrestacoes) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmManuPrestacoes := TfrmManuPrestacoes.Create(Self);
       LockWindowUpdate(0);
       //
       Application.CreateForm(TfrmSeleCliente, frmSeleCliente);
       uSelCliente.M_NMFORM := 'PRESTACOES';
       frmSeleCliente.ShowModal;
       frmSeleCliente.Free;
       //
    End
    Else
    begin
        frmManuPrestacoes.BringToFront;
        frmManuPrestacoes.Focused;
    End;
end;

procedure TfrmNetImo.mnuContasReceberSubItemClick(Sender: TObject);
begin
     Application.CreateForm(TfrmConfRelReceber, frmConfRelReceber);
     frmConfRelReceber.ShowModal;
     frmConfRelReceber.Free;
end;

procedure TfrmNetImo.mnuImoveisClienSubItemClick(Sender: TObject);
begin
     Application.CreateForm(TfrmSeleCliente, frmSeleCliente);
     uSelCliente.M_NMFORM := 'PRINT_CLIENTE';
     frmSeleCliente.ShowModal;
     frmSeleCliente.Free;

     {Application.CreateForm(TfrmConfImoClie, frmConfImoClie);
     frmConfImoClie.ShowModal;
     frmConfImoClie.Free;}
end;

procedure TfrmNetImo.ReceberpEmpreendeimento1Click(Sender: TObject);
begin
     Application.CreateForm(TfrmConfRel2, frmConfRel2);
     frmConfRel2.ShowModal;
     frmConfRel2.Free;
end;

procedure TfrmNetImo.ReceberPagar1Click(Sender: TObject);
begin
    Application.CreateForm(TfrmConfrontoPAGREC, frmConfrontoPAGREC);
    frmConfrontoPAGREC.ShowModal;
    frmConfrontoPAGREC.Free;
end;

procedure TfrmNetImo.mnuCorrecoesIndicesSubItemClick(Sender: TObject);
begin
     Application.CreateForm(TfrmConfRelatorio, frmConfRelatorio);
     frmConfRelatorio.ShowModal;
     frmConfRelatorio.Free;
end;

procedure TfrmNetImo.TiposdeImoveis1Click(Sender: TObject);
begin
     Application.CreateForm(TfrmTipoImoveis, frmTipoImoveis);
     frmTipoImoveis.ShowModal;
     frmTipoImoveis.Free;
end;

procedure TfrmNetImo.mnuConfiguracoesSubItemClick(Sender: TObject);
begin
    If ExisteForm(frmConfiguracoes) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmConfiguracoes := TfrmConfiguracoes.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmConfiguracoes.BringToFront;
        frmConfiguracoes.Focused;
    End;
end;

procedure TfrmNetImo.SituaodoImovel1Click(Sender: TObject);
begin
     Application.CreateForm(TfrmSitImovel, frmSitImovel);
     frmSitImovel.ShowModal;
     frmSitImovel.Free;
end;

procedure TfrmNetImo.btAtualizarClick(Sender: TObject);
begin
      barStatus.Panels[0].Text := 'Aguarde!!! Atualizado prestações...';
      FecharTodas1Click(Sender);
      //Funcoes.AUTO_ATUALIZACAO;
      Funcoes.ATUALIZAR;
end;

procedure TfrmNetImo.mnuUsuariosItemClick(Sender: TObject);
begin
    If ExisteForm(frmCadUsuarios) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCadUsuarios := TfrmCadUsuarios.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCadUsuarios.BringToFront;
        frmCadUsuarios.Focused;
    End;
end;

procedure TfrmNetImo.Autenticar;
Var
   Masters: textfile;
begin
     If PasswordInputBox('Registro','Digite senha de registro') = M_AUTEN then
     begin
             try
                AssignFile(Masters, 'c:\Windows\CFGNS.NET');
                if not FileExists('c:\Windows\CFGNS.NET') then Rewrite(Masters,'c:\Windows\CFGNS.NET');
                    Append(Masters);
                    WriteLn(Masters, 'Sistema legalmente registrado.');
                    WriteLn(Masters, 'Copyright NetSCV por NetSoft © - Tecnologia em Sistemas...');
                    WriteLn(Masters, '2004 - Todos os direitos reservados - OK.');
                    // Mensagem para o usuário
                    Application.MessageBox('Registro do sistema registrado com sucesso!!!',
                                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
                    Exit;
             finally
                    CloseFile(Masters);
             End;
     End
     Else
     begin
           Application.MessageBox('Este sistema não está registrado!!!',
                                  'Senha incorreta...', MB_OK+MB_ICONSTOP);
           Application.Terminate;
     end;

end;

function TfrmNetImo.PasswordInputBox(const ACaption, APrompt:string): string;
// InputBox para entrada de Senhas (com caracter *)
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
  Value: string;
  I: Integer;
  Buffer: array[0..51] of Char;
begin
  Result := '';
  Form := TForm.Create(Application);
  with Form do
  try
    Canvas.Font := Font;
    for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
    for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
    GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(DialogUnits));
    DialogUnits.X := DialogUnits.X div 52;
    BorderStyle := bsDialog;
    Caption := ACaption;
    ClientWidth := MulDiv(180, DialogUnits.X, 4);
    ClientHeight := MulDiv(63, DialogUnits.Y, 8);
    Position := poScreenCenter;
    Prompt := TLabel.Create(Form);
    with Prompt do
    begin
      Parent := Form;
      AutoSize := True;
      Left := MulDiv(8, DialogUnits.X, 4);
      Top := MulDiv(8, DialogUnits.Y, 8);
      Caption := APrompt;
    end;
    Edit := TEdit.Create(Form);
    with Edit do
    begin
      Parent := Form;
      Left := Prompt.Left;
      Top := MulDiv(19, DialogUnits.Y, 8);
      Width := MulDiv(164, DialogUnits.X, 4);
      MaxLength := 255;
      PasswordChar := '*';
      SelectAll;
    end;
    ButtonTop := MulDiv(41, DialogUnits.Y, 8);
    ButtonWidth := MulDiv(50, DialogUnits.X, 4);
    ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
    with TButton.Create(Form) do
    begin
      Parent := Form;
      Caption := 'OK';
      ModalResult := mrOk;
      Default := True;
      SetBounds(MulDiv(38, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
    end;
    with TButton.Create(Form) do
    begin
      Parent := Form;
      Caption := 'Cancel';
      ModalResult := mrCancel;
      Cancel := True;
      SetBounds(MulDiv(92, DialogUnits.X, 4),ButtonTop, ButtonWidth,ButtonHeight);
    end;
    if ShowModal = mrOk then
    begin
      Value := Edit.Text;
      Result := Value;
    end;
  finally
    Form.Free;
    Form:=nil;
  end;
end;

procedure TfrmNetImo.Validar_Prog;
begin
     // Validade do Programa.
     If (Date()> StrtoDate('24/08/2004')) Then
     Begin
         Application.MessageBox('A validade desse Programa Exprirou'+#13
                 +'Entre em contato com a NetSoft - 233-4343.','ATENÇÃO', MB_OK+MB_ICONINFORMATION);
         Application.Terminate;
     End;
end;

procedure TfrmNetImo.Consulta1Click(Sender: TObject);
begin
    If ExisteForm(frmConsulta) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmConsulta := TfrmConsulta.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmConsulta.BringToFront;
        frmConsulta.Focused;
    End;
end;

procedure TfrmNetImo.mnuPrimeiroItemClick(Sender: TObject);
begin
     If JanelaAtiva = 'CADCLIE' then
        frmCadCliente.tbPrimeiroClick(Sender);
     If JanelaAtiva = 'CADEMPRE' Then
        frmCadEmpred.tbPrimeiroClick(Sender);
     If JanelaAtiva = 'CADFORNECEDOR' Then
        frmCadForn.btPrimeiroClick(Sender);
     If JanelaAtiva = 'IMOVEIS' Then
        frmCadImovel.tbPrimeiroClick(Sender);
     If JanelaAtiva = 'CADINDICES' Then
        frmCadIndices.tbPrimeiroClick(Sender);
     If JanelaAtiva = 'CONTRATO' Then
        frmContrato.btPrimeiroClick(Sender);
end;

procedure TfrmNetImo.mnuAnteriorItemClick(Sender: TObject);
begin
     If JanelaAtiva = 'CADCLIE' then
        frmCadCliente.tbAnteriorClick(Sender);
     If JanelaAtiva = 'CADEMPRE' Then
        frmCadEmpred.tbAnteriorClick(Sender);
     If JanelaAtiva = 'CADFORNECEDOR' Then
        frmCadForn.btAnteriorClick(Sender);
     If JanelaAtiva = 'IMOVEIS' Then
        frmCadImovel.tbAnteriorClick(Sender);
     If JanelaAtiva = 'CADINDICES' Then
        frmCadIndices.tbAnteriorClick(Sender);
     If JanelaAtiva = 'CONTRATO' Then
        frmContrato.btAnteriorClick(Sender);
end;

procedure TfrmNetImo.mnuProximoItemClick(Sender: TObject);
begin
     If JanelaAtiva = 'CADCLIE' then
        frmCadCliente.btProximoClick(Sender);
     If JanelaAtiva = 'CADEMPRE' Then
        frmCadEmpred.btProximoClick(Sender);
     If JanelaAtiva = 'CADFORNECEDOR' Then
        frmCadForn.btProximoClick(Sender);
     If JanelaAtiva = 'IMOVEIS' Then
        frmCadImovel.btProximoClick(Sender);
     If JanelaAtiva = 'CADINDICES' Then
        frmCadIndices.btProximoClick(Sender);
     If JanelaAtiva = 'CONTRATO' Then
        frmContrato.btProximoClick(Sender);
end;

procedure TfrmNetImo.mnuUltimoItemClick(Sender: TObject);
begin
     If JanelaAtiva = 'CADCLIE' then
        frmCadCliente.btUltimoClick(Sender);
     If JanelaAtiva = 'CADEMPRE' Then
        frmCadEmpred.btUltimoClick(Sender);
     If JanelaAtiva = 'CADFORNECEDOR' Then
        frmCadForn.btUltimoClick(Sender);
     If JanelaAtiva = 'IMOVEIS' Then
        frmCadImovel.btUltimoClick(Sender);
     If JanelaAtiva = 'CADINDICES' Then
        frmCadIndices.btUltimoClick(Sender);
     If JanelaAtiva = 'CONTRATO' Then
        frmContrato.btUltimoClick(Sender);
end;

procedure TfrmNetImo.mnuAdicionarItemClick(Sender: TObject);
begin
     If JanelaAtiva = 'CADCLIE' then
        frmCadCliente.btIncluirClick(Sender);
     If JanelaAtiva = 'CADEMPRE' Then
        frmCadEmpred.btIncluirClick(Sender);
     If JanelaAtiva = 'CADFORNECEDOR' Then
        frmCadForn.tbAddFornClick(Sender);
     If JanelaAtiva = 'IMOVEIS' Then
        frmCadImovel.btIncluirClick(Sender);
     If JanelaAtiva = 'CADINDICES' Then
        frmCadIndices.btIncluirClick(Sender);
     If JanelaAtiva = 'CONTRATO' Then
        frmContrato.btAdicionarClick(Sender);
end;

procedure TfrmNetImo.mnuEditarItemClick(Sender: TObject);
begin
     If JanelaAtiva = 'CADCLIE' then
       frmCadCliente.btEditarClick(Sender);
     If JanelaAtiva = 'CADEMPRE' Then
        frmCadEmpred.btEditarClick(Sender);
     If JanelaAtiva = 'CADFORNECEDOR' Then
         frmCadForn.tbEditFornClick(Sender);
     If JanelaAtiva = 'IMOVEIS' Then
        frmCadImovel.btEditarClick(Sender);
     If JanelaAtiva = 'CADINDICES' Then
        frmCadIndices.btEditarClick(Sender);
     If JanelaAtiva = 'CONTRATO' Then
        frmContrato.btEditarClick(Sender);
end;

procedure TfrmNetImo.mnuExcluirItemClick(Sender: TObject);
begin
     If JanelaAtiva = 'CADCLIE' then
        frmCadCliente.btDeleteClick(Sender);
     If JanelaAtiva = 'CADEMPRE' Then
        frmCadEmpred.btDeleteClick(Sender);
     If JanelaAtiva = 'CADFORNECEDOR' Then
         frmCadForn.tbDelFornClick(Sender);
     If JanelaAtiva = 'IMOVEIS' Then
        frmCadImovel.btDeleteClick(Sender);
     If JanelaAtiva = 'CADINDICES' Then
        frmCadIndices.btDeleteClick(Sender);
     If JanelaAtiva = 'CONTRATO' Then
        frmContrato.btExcluirClick(Sender);
end;

procedure TfrmNetImo.mnuGravarItemClick(Sender: TObject);
begin
     If JanelaAtiva = 'CADCLIE' then
          frmCadCliente.btGravarClick(Sender);
     If JanelaAtiva = 'CADEMPRE' Then
        frmCadEmpred.btGravarClick(Sender);
     If JanelaAtiva = 'CADFORNECEDOR' Then
        frmCadForn.btGravaFornClick(Sender);
     If JanelaAtiva = 'IMOVEIS' Then
        frmCadImovel.btGravarClick(Sender);
     If JanelaAtiva = 'CADINDICES' Then
        frmCadIndices.btGravarClick(Sender);
     If JanelaAtiva = 'CONTRATO' Then
        frmContrato.btGravarClick(Sender);
end;

procedure TfrmNetImo.mnuCancelarItemClick(Sender: TObject);
begin
     If JanelaAtiva = 'CADCLIE' then
        frmCadCliente.btCancelaClick(Sender);
     If JanelaAtiva = 'CADEMPRE' Then
        frmCadEmpred.btCancelaClick(Sender);
     If JanelaAtiva = 'CADFORNECEDOR' Then
        frmCadForn.btCancFornClick(Sender);
     If JanelaAtiva = 'IMOVEIS' Then
        frmCadImovel.btCancelaClick(Sender);
     If JanelaAtiva = 'CADINDICES' Then
        frmCadIndices.btCancelaClick(Sender);
     If JanelaAtiva = 'CONTRATO' Then
        frmContrato.btCancelarClick(Sender);
end;

procedure TfrmNetImo.mnuBancosSubItemClick(Sender: TObject);
begin
    If ExisteForm(frmCadBancos) = False Then
    begin
       LockWindowUpdate(Handle);
       frmCadBancos := TfrmCadBancos.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCadBancos.BringToFront;
        frmCadBancos.Focused;
    End;
end;

procedure TfrmNetImo.Baixa1Click(Sender: TObject);
begin
    If ExisteForm(frmCheques) = False Then
    begin
       FecharTodas1Click(Sender);
       LockWindowUpdate(Handle);
       frmCheques := TfrmCheques.Create(Self);
       LockWindowUpdate(0);
    End
    Else
    begin
        frmCheques.BringToFront;
        frmCheques.Focused;
    End;
end;

procedure TfrmNetImo.FormShow(Sender: TObject);
begin
{     Application.CreateForm(TfrmLogon, frmLogon);
     frmLogon.ShowModal;
     frmLogon.Free;}
end;

end.
