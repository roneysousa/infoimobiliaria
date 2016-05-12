unit uContrato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, DBCtrls, Db, StdCtrls, Mask,DBGrids,
  Buttons, Grids;

type
  TfrmContrato = class(TForm)
    ToolBar1: TToolBar;
    btPrimeiro: TToolButton;
    btAnterior: TToolButton;
    btProximo: TToolButton;
    btUltimo: TToolButton;
    btAdicionar: TToolButton;
    btEditar: TToolButton;
    btExcluir: TToolButton;
    btGravar: TToolButton;
    btCancelar: TToolButton;
    btLocalizar: TToolButton;
    btFechar: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    dsContrato: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbcmbCDEMPR: TDBLookupComboBox;
    dsEmpred: TDataSource;
    dsClientes: TDataSource;
    dsBaloes: TDataSource;
    DBText1: TDBText;
    Label5: TLabel;
    cmbINDICE: TDBLookupComboBox;
    Label6: TLabel;
    dbeVLENTRADA: TDBEdit;
    Label7: TLabel;
    dbeDTENTRADA: TDBEdit;
    Label8: TLabel;
    dbeQTBALOES: TDBEdit;
    Label9: TLabel;
    dbeQTPRES: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    dbeDTCONT: TDBEdit;
    Label12: TLabel;
    dbeDTENTG: TDBEdit;
    Label13: TLabel;
    dsIndice: TDataSource;
    dbcmbINDICE2: TDBLookupComboBox;
    txtNMCLIEN: TDBText;
    txtVLIMOVEL: TDBText;
    btVisualizar: TToolButton;
    btImprimir: TToolButton;
    txtTOBALO: TDBText;
    Label14: TLabel;
    dbeDTVENC: TDBEdit;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    Label16: TLabel;
    dbeMulta: TDBEdit;
    Label17: TLabel;
    dbeJuros: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    txtEndereco: TDBText;
    txtNumero: TDBText;
    txtBairro: TDBText;
    txtVLINDICE: TDBText;
    txtVLIND2: TDBText;
    Label21: TLabel;
    Label22: TLabel;
    dsImoveis: TDataSource;
    btAditivo: TToolButton;
    sbImovel: TSpeedButton;
    sbCliente: TSpeedButton;
    dbeCDIMOV: TDBEdit;
    dbcmbCLIENTE: TDBEdit;
    GridContratos: TDBGrid;
    btEntrega: TToolButton;
    DBText2: TDBText;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure dsContratoStateChange(Sender: TObject);
    procedure dbeCDIMOVKeyPress(Sender: TObject; var Key: Char);
    procedure btAdicionarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure GridContratosDblClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure cmbCDIMOVExit(Sender: TObject);
    procedure dbeQTPRESExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbeQTBALOESExit(Sender: TObject);
    procedure dsContratoDataChange(Sender: TObject; Field: TField);
    procedure btVisualizarClick(Sender: TObject);
    procedure cmbCDIMOVEnter(Sender: TObject);
    procedure cmbINDICEExit(Sender: TObject);
    procedure dbcmbCDEMPRExit(Sender: TObject);
    procedure dbcmbCLIENTEExit(Sender: TObject);
    procedure dbcmbINDICE2Exit(Sender: TObject);
    procedure dbeDTENTGExit(Sender: TObject);
    procedure dbeDTENTRADAExit(Sender: TObject);
    procedure dbeDTVENCExit(Sender: TObject);
    procedure btAditivoClick(Sender: TObject);
    procedure sbImovelClick(Sender: TObject);
    procedure sbClienteClick(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure cmbCDIMOVKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCDIMOVExit(Sender: TObject);
    procedure dbeCDIMOVEnter(Sender: TObject);
    procedure dbcmbCDEMPREnter(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure dbeVLENTRADAExit(Sender: TObject);
    procedure dbeMultaExit(Sender: TObject);
    procedure dbeJurosExit(Sender: TObject);
    procedure btEntregaClick(Sender: TObject);
    procedure dbcmbCLIENTEKeyPress(Sender: TObject; var Key: Char);
    procedure GridContratosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Procedure CALC_VLPRESTACAO;
    Procedure JANELA_BALOES;
    Procedure CRIAR_PRESTACOES;
    Procedure CRIAR_PRESTACOES2;
    Procedure CANCELAR_INCLUSAO;
    Procedure Habilitar_Componentes;
    Procedure Invisivel_Componentes;
    Procedure Prestacao_Entrada;
    Procedure Prestacao_Chave;
    Procedure Prestacao_Baloes;
    Procedure Prestacao_Baloes2;    
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContrato: TfrmContrato;
  M_FLACUM, M_FLACUM2 : Boolean;
  M_CDEMPR : String;
  M_JUINDI1: DOUBLE;

implementation

uses uBD, funcoes, uNetImo, uCadBaloes, uRelPropCompra, uAditivo,
  uLocalizar2, uRelProCompra2, uSeleImovel, uEntImovel;

{$R *.DFM}

procedure TfrmContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbParametros.Close;
     dmBD.tbContratos.Close;
     dmBD.tbClientes.Close;
     dmBD.tbEmpredim.Close;
     dmBD.tbIndices.Close;
     dmBD.tbBaloes.Close;
     dmBD.tbImoveis.Close;
     dmBD.tbContReceber.Close;
     dmBD.tbPrestacoes.Close;
     //
     frmNetImo.mnuNavegacao.Enabled := False;
     uNetImo.JanelaAtiva := '';
     //
     Action := caFree;
end;

procedure TfrmContrato.FormActivate(Sender: TObject);
begin
      If (dmBD.tbParametros.Active =False) Then
          dmBD.tbParametros.Open;
      If (dmBD.tbContratos.Active =False) Then
          dmBD.tbContratos.Open;
      If (dmBD.tbClientes.Active =False) Then
          dmBD.tbClientes.Open;
      If (dmBD.tbEmpredim.Active =False) Then
          dmBD.tbEmpredim.Open;
      If (dmBD.tbIndices.Active =False) Then
          dmBD.tbIndices.Open;
      If (dmBD.tbBaloes.Active =False) Then
          dmBD.tbBaloes.Open;
      If (dmBD.tbImoveis.Active = False) Then
          dmBD.tbImoveis.Open;
      //
      uNetImo.JanelaAtiva := 'CONTRATO';
      frmNetImo.mnuNavegacao.Enabled := True;
      //
      GridContratos.Align := alClient;
      GridContratos.SetFocus;
end;

procedure TfrmContrato.dsContratoStateChange(Sender: TObject);
begin
    btPrimeiro.Enabled := dsContrato.State in [dsBrowse];
    btAnterior.Enabled := dsContrato.State in [dsBrowse];
    btProximo.Enabled := dsContrato.State in [dsBrowse];
    btUltimo.Enabled := dsContrato.State in [dsBrowse];
    //
    btAdicionar.Enabled := dsContrato.State in [dsBrowse];
    btEditar.Enabled := dsContrato.State in [dsBrowse];
    btExcluir.Enabled := (dsContrato.State in [dsBrowse])
    and (DmBD.tbContratos.RecordCount > 0);
    //
    btGravar.Enabled   := dsContrato.State in [dsInsert,dsEdit];
    btCancelar.Enabled := dsContrato.State in [dsInsert,dsEdit];
    btEntrega.Enabled  := dsContrato.State in [dsEdit];
    //
    btLocalizar.Enabled := dsContrato.State in [dsBrowse];
    btFechar.Enabled    := dsContrato.State in [dsBrowse];
    btVisualizar.Enabled:= dsContrato.State in [dsBrowse];
    btImprimir.Enabled  := dsContrato.State in [dsBrowse];
    btAditivo.Enabled   := dsContrato.State in [dsBrowse];
    //
    frmNetImo.mnuPrimeiroItem.Enabled := dsContrato.State in [dsBrowse];
    frmNetImo.mnuAnteriorItem.Enabled := dsContrato.State in [dsBrowse];
    frmNetImo.mnuProximoItem.Enabled := dsContrato.State in [dsBrowse];
    frmNetImo.mnuUltimoItem.Enabled := dsContrato.State in [dsBrowse];
    //
    frmNetImo.mnuAdicionarItem.Enabled := dsContrato.State in [dsBrowse];
    frmNetImo.mnuEditarItem.Enabled := dsContrato.State in [dsBrowse];
    frmNetImo.mnuExcluirItem.Enabled := dsContrato.State in [dsBrowse];
    //
    frmNetImo.mnuGravarItem.Enabled := dsContrato.State in [dsInsert,dsEdit];
    frmNetImo.mnuCancelarItem.Enabled := dsContrato.State in [dsInsert,dsEdit];
    // barra de status
     If dsContrato.State in [dsInsert] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de inserção';
     If dsContrato.State in [dsEdit] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de edição';
     If dsContrato.State in [dsBrowse] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de navegação';
end;

procedure TfrmContrato.dbeCDIMOVKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8] ) then
          key:=#0;
end;

procedure TfrmContrato.btAdicionarClick(Sender: TObject);
begin
     Try
        GridContratos.Visible := False;
        dmBD.tbBaloes.Filtered := False;
        //
        dmBD.tbParametros.edit;
        dmBD.tbParametrosPAR_CDCONT.Value := dmBD.tbParametrosPAR_CDCONT.Value+1;
        dmBD.tbParametros.Post;
        //
        dmBD.tbContratos.Append;
        //
        Habilitar_Componentes;
        //
        txtEndereco.Visible := False;
        txtNumero.Visible   := False;
        txtBairro.Visible   := False;
        //
        dmBD.tbContratosCTC_CDCONT.Value := funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDCONT.Value),10);
        dmBD.tbContratosCTC_CDUSUA.Value := uNetImo.M_CDUSUA;
        dmBD.tbContratosCTC_DTCONT.Value := Date();
        dmBD.tbContratosCTC_DTATUA.Value := dmBD.tbContratosCTC_DTCONT.Value;
        dmBD.tbContratosCTC_FLADIT.Value := False;
        dmBD.tbContratosCTC_QTPRES.Value := 1;
        dmBD.tbContratosCTC_QTPAGA.Value := 0;
        dmBD.tbContratosCTC_VLPAGA.Value := 0;
     Except
        ShowMessage('Error ao tentar incluir registro.');
     End;
end;

procedure TfrmContrato.btEditarClick(Sender: TObject);
begin
     Try
        GridContratos.Visible := False;
        dmBD.tbBaloes.Filtered := False;
        dmBD.tbContratos.Edit;
        //
        dbcmbCDEMPR.Enabled  := False;
        dbeCDIMOV.Enabled    := False;
        dbcmbCLIENTE.Enabled := False;
        cmbINDICE.Enabled    := False;
        dbcmbINDICE2.Enabled := False;
        //
        dmBD.tbImoveis.FindKey([dmBD.tbContratosCTC_CDIMOV.Value]);
     Except
        ShowMessage('Error ao tentar incluir registro.');
     End;
end;

procedure TfrmContrato.btGravarClick(Sender: TObject);
begin
     Try
        //
        If (dsContrato.State in [dsInsert]) Then
        Begin
             // Atualizar Quant. de Imóveis do Empreendimento
             dmBD.tbEmpredim.FindKey([dmBD.tbContratosCTC_CDEMPR.Value]);
             dmBD.tbEmpredim.Edit;
             dmBD.tbEmpredimEMP_QTATUL.Value := dmBD.tbEmpredimEMP_QTATUL.Value+1;
             dmBD.tbEmpredimEMP_QTREST.Value := dmBD.tbEmpredimEMP_QTIMOV.Value-dmBD.tbEmpredimEMP_QTATUL.Value;
             dmBD.tbEmpredim.Post;
             //
             dmBD.tbImoveis.FindKey([dmBD.tbContratosCTC_CDIMOV.Value]);
             dmBD.tbImoveis.Edit;
             dmBD.tbImoveisIMO_CDCLIE.Value := dmBD.tbContratosCTC_CDCLIEN.Value;
             dmBD.tbimoveisIMO_FLIMOV.Value := 'VENDIDO';
             dmBD.tbImoveis.Post;
             //
             if (dmBD.tbContReceber.Active = False) Then
                 dmBD.tbContReceber.Open;
             // Prestação de entrada
             Prestacao_Entrada;
             // Prestação de chave
             Prestacao_Chave;
             // Prestações de balões
             Prestacao_Baloes;
             // Prestações do cliente
             CRIAR_PRESTACOES;
             //
        End;
        //  Se alterar valor do juros de mora
        If (dsContrato.State in [dsEdit]) Then
        Begin
             If (dmBD.tbPrestacoes.Active=False) Then
                 dmBD.tbPrestacoes.Open;
             dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+dmBD.tbContratosCTC_CDCONT.Value+' And PRE_FLSITU='+QuotedStr('A'); ;
             dmBD.tbPrestacoes.Filtered := True;
             dmBD.tbPrestacoes.First;
             While not (dmBD.tbPrestacoes.Eof) do
             begin
                 dmBD.tbPrestacoes.Edit;
                 dmBD.tbPrestacoesPRE_JURVCT.Value := dmBD.tbContratosCTC_JUROS.Value;
                 dmBD.tbPrestacoes.Next;
             End;
             dmBD.tbPrestacoes.Filtered := False;
        End;
        //If (Date() < dmBD.tbContratosCTC_DTENTG.Value) Then
        If (Date() < dmBD.tbContratosCTC_DTPREE.Value) Then
            dmBD.tbContratosCTC_INDATU.Value := dmBD.tbContratosCTC_CDINDI.Value
        Else
            dmBD.tbContratosCTC_INDATU.Value := dmBD.tbContratosCTC_INDENT.Value;
        //
        dmBD.tbContratosCTC_QTPAGA.Value := 0;
        dmBD.tbContratosCTC_VLPAGA.Value := 0;
        dmBD.tbContratosCTC_VLSALD.Value := dmBD.tbContratosCTC_VLIMOV.Value-
                        (dmBD.tbContratosCTC_VLENTR.Value+dmBD.tbContratosCTC_VLCHAV.Value+dmBD.tbContratosCTC_TOBALO.Value+dmBD.tbContratosCTC_VLPAGA.Value);
        //
        dmBD.tbContratos.Post;
        dmBD.tbImoveis.Filtered := false;
        //
        GridContratos.Visible := True;
        GridContratos.SetFocus;
     Except
        ShowMessage('Error ao tentar gravar registro.');
     End;
end;

procedure TfrmContrato.btCancelarClick(Sender: TObject);
begin
     Try
        dmBD.tbContratos.Cancel;
        dmBD.tbImoveis.Filtered := false;
        //
        GridContratos.Visible := True;
        GridContratos.SetFocus;
     Except
        ShowMessage('Error ao tentar cancelar alteração de registro.');
     End;
end;

procedure TfrmContrato.btExcluirClick(Sender: TObject);
begin
    // Exclusão de registro
    Try
        If Application.MessageBox('Deseja eliminar este registro:', 'Exclusão de Contrato de Cliente.',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
           dmBD.tbContratos.delete;             // Apagar o regitro atual.
    Except
         Application.MessageBox('Este registro não pode ser excluído neste momento', 'ATENÇÃO',
                     MB_OK+MB_ICONINFORMATION);
    End;
end;

procedure TfrmContrato.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmContrato.GridContratosDblClick(Sender: TObject);
begin
     btEditarClick(Sender);
end;

procedure TfrmContrato.btPrimeiroClick(Sender: TObject);
begin
     If Not(dmBD.tbContratos.Bof) Then
          dmBD.tbContratos.First;
end;

procedure TfrmContrato.btAnteriorClick(Sender: TObject);
begin
     If Not(dmBD.tbContratos.Bof) Then
          dmBD.tbContratos.Prior;
end;

procedure TfrmContrato.btProximoClick(Sender: TObject);
begin
     If Not(dmBD.tbContratos.Eof) Then
          dmBD.tbContratos.Next;
end;

procedure TfrmContrato.btUltimoClick(Sender: TObject);
begin
     If Not(dmBD.tbContratos.Eof) Then
          dmBD.tbContratos.Last;
end;

procedure TfrmContrato.cmbCDIMOVExit(Sender: TObject);
Var
    M_CDIMOV:String;
begin
     If (dsContrato.State in [dsInsert]) Then
     begin
          If not (funcoes.Empty(dbeCDIMOV.Text)) Then
             dmBD.tbContratosCTC_VLIMOV.Value := dmBD.tbImoveisIMO_VLIMOV.Value;
     End;
     // libera Filtros
     dmBD.tbImoveis.Filtered := False;
     //
     If (dsContrato.State in [dsInsert, dsEdit]) Then
     begin
         If funcoes.Empty(dbeCDIMOV.Text) Then
         begin
              ShowMessage('Selecione o Imóvel.');
              dbeCDIMOV.SetFocus;
         End
         Else
         begin
              M_CDIMOV:= dmBD.tbContratosCTC_CDIMOV.Value;
              dmBD.tbImoveis.FindKey([M_CDIMOV]);
              //
              txtEndereco.Visible := True;
              txtNumero.Visible   := True;
              txtBairro.Visible   := True;
         End
     End;
end;

procedure TfrmContrato.CALC_VLPRESTACAO;
Var
   M_VLIMOV,M_TOBALO,M_VLENTR,M_VLPRES, M_VLCHAV : Double;
   M_QTPRES : Integer;
begin
     If (dsContrato.State in [dsInsert, dsEdit]) Then
     begin
          M_VLIMOV := dmBD.tbContratosCTC_VLIMOV.Value;
          M_TOBALO := dmBD.tbContratosCTC_TOBALO.Value;
          M_VLENTR := dmBD.tbContratosCTC_VLENTR.Value;
          M_QTPRES := dmBD.tbContratosCTC_QTPRES.Value;
          M_VLCHAV := dmBD.tbContratosCTC_VLCHAV.Value;
          //
          M_VLPRES := (M_VLIMOV-(M_VLENTR+M_TOBALO+M_VLCHAV))/M_QTPRES;
          //
          dmBD.tbContratosCTC_VLPRES.Value := M_VLPRES;
     End;
end;


procedure TfrmContrato.dbeQTPRESExit(Sender: TObject);
begin
     CALC_VLPRESTACAO;
end;

procedure TfrmContrato.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If (dsContrato.State in [dsInsert,dsEdit]) Then
     begin
          If funcoes.Empty(dbcmbCDEMPR.Text) or funcoes.Empty(dbeCDIMOV.Text)
             or funcoes.Empty(dbcmbCLIENTE.Text) Then
                 CANCELAR_INCLUSAO
          Else
             If Application.MessageBox('Salvar alterações?',
                    'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
                   dmBD.tbContratos.Post
             Else
                  dmBD.tbContratos.Cancel;
     End;
end;

procedure TfrmContrato.JANELA_BALOES;
Var
   M_QTBALO, M_CONTA : Integer;
begin
     Try
        //
        If (dsContrato.State in [dsInsert]) Then
        begin
             M_CONTA  := 1;
             If not (dmBD.tbBaloes.Locate('BAL_CDCONT',dmBD.tbContratosCTC_CDCONT.Value,[])) Then
             Begin
                  M_QTBALO := dmBD.tbContratosCTC_QTBALO.Value;
                  //
                  While M_CONTA <= M_QTBALO do
                  Begin
                       //
                       dmBD.tbParametros.Edit;
                       dmBD.tbParametrosPAR_CDBALA.Value := dmBD.tbParametrosPAR_CDBALA.Value+1;
                       dmBD.tbParametros.Post;
                       //
                       dmBD.tbBaloes.Append;
                       dmBD.tbBaloesBAL_CDSEQU.Value := dmBD.tbParametrosPAR_CDBALA.Value;
                       dmBD.tbBaloesBAL_CDCONT.Value := dmBD.tbContratosCTC_CDCONT.Value;
                       dmBD.tbBaloesBAL_CDCLIE.Value := dmBD.tbContratosCTC_CDCLIEN.Value;
                       dmBD.tbBaloesBAL_DTCADA.Value := Date();
                       dmBD.tbBaloesBAL_NRBALA.Value := M_CONTA;
                       dmBD.tbBaloesBAL_FLSITU.Value := 'A';
                       dmBD.tbBaloes.Post;
                       M_CONTA := M_CONTA+1;
                  End;          // Fim-do-Enquanto
             End;              // Fim-do-se
             //uBD.M_SALVAR := False;
        End;                    // Fim-do-se no modo de inseção.
        // filtar registros
        dmBD.tbBaloes.Filter   := 'BAL_CDCONT='+dmBD.tbContratosCTC_CDCONT.Value;
        dmBD.tbBaloes.Filtered := True;
        //  Abre Janela para editção de Balões;
        Application.CreateForm(TfrmBaloes, frmBaloes);
        frmBaloes.ShowModal;
        frmBaloes.Free;
     Except
          ShowMessage('Error ao tentar criar Baloes!!!');
     End;
end;

procedure TfrmContrato.dbeQTBALOESExit(Sender: TObject);
begin
     If (dmBD.tbContratosCTC_QTBALO.Value > 0)
       and  (dsContrato.State in [dsInsert]) Then
//          If not funcoes.Empty(dbeQTBALOES.Text) Then
              JANELA_BALOES;
end;

procedure TfrmContrato.CRIAR_PRESTACOES;
Var
   M_QTPRES, M_CONTA : Integer;
   M_VLACUM, M_VLANTE : Double;
   M_DTVENC1, M_DTBASE:TDate;
begin
      M_QTPRES := dmBD.tbContratosCTC_QTPRES.Value;
      M_VLANTE := dmBD.tbContratosCTC_VLPRES.Value;
      M_DTBASE := dmBD.tbContratosCTC_DTCONT.Value;
      M_CONTA  := 1;
      M_VLACUM := 0;
      frmNetImo.barStatus.Panels[1].Text := 'Criando prestações do cliente!!!';
      // cria as prestações do cliente
      Try
          //
          If dmBD.tbIndices.Locate('IND_CDINDI',dmBD.tbContratosCTC_CDINDI.Value,[]) Then
          begin
               dmBD.tbIndices.Edit;
               M_JUINDI1 := dmBD.tbIndicesIND_VLJURO.Value;
               dmBD.tbIndices.Cancel;
          End;
          //
          If (dmBD.tbPrestacoes.Active = False) Then
              dmBD.tbPrestacoes.Open;
          If (dmBD.tbContReceber.Active = False) Then
              dmBD.tbContReceber.Open;
          //
          While M_CONTA <= M_QTPRES Do
          begin
               //
               dmBD.tbParametros.Edit;
               dmBD.tbParametrosPAR_CDPRES.Value := dmBD.tbParametrosPAR_CDPRES.Value+1;
               dmBD.tbParametros.Post;
               //
               dmBD.tbPrestacoes.Append;
               dmBD.tbPrestacoesPRE_CDPRES.Value := Funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDPRES.Value),13);
               dmBD.tbPrestacoesPRE_CDCONT.Value := dmBD.tbContratosCTC_CDCONT.Value;
               dmBD.tbPrestacoesPRE_CDEMPR.Value := dmBD.tbContratosCTC_CDEMPR.Value;
               dmBD.tbPrestacoesPRE_CDCLIE.Value := dmBD.tbContratosCTC_CDCLIEN.Value;
               dmBD.tbPrestacoesPRE_CDIMOV.Value := dmBD.tbContratosCTC_CDIMOV.Value;
               dmBD.tbPrestacoesPRE_NRPRES.Value := funcoes.StrZero(InttoStr(M_CONTA),2)+'/'+InttoStr(dmBD.tbContratosCTC_QTPRES.Value);
               dmBD.tbprestacoespre_PREST.Value  := M_CONTA;
               dmBD.tbPrestacoesPRE_VLIMOV.Value := dmBD.tbContratosCTC_VLIMOV.Value;
               dmBD.tbPrestacoesPRE_VLPRES.Value := dmBD.tbContratosCTC_VLPRES.Value;
               //dmBD.tbPrestacoesPRE_VLANTE.Value := M_VLANTE;
               // dmBD.tbContratosCTC_VLPRES.Value;
               {dmBD.tbPrestacoesPRE_VLPRES.Value := Funcoes.ArredontaFloat(dmBD.tbContratosCTC_VLPRES.Value);}
               dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbContratosCTC_VLPRES.Value;
               dmBD.tbPrestacoesPRE_VLJURO.Value := 0; //dmBD.tbContratosCTC_JUROS.Value;
               dmBD.tbPrestacoesPRE_VLMULT.Value := dmBD.tbContratosCTC_VLMULT.Value;
               //
               dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbContratosCTC_VLPRES.Value;
               //
               dmBD.tbPrestacoesPRE_DTCADA.Value := dmBD.tbContratosCTC_DTCONT.Value;
               //
               If (M_CONTA = 1) Then
               begin
                    dmBD.tbPrestacoesPRE_DTVENC.Value := dmBD.tbContratosCTC_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_DTBASE.Value := M_DTBASE;
               End
               Else
               begin
                    dmBD.tbPrestacoesPRE_DTVENC.Value := IncMonth(dmBD.tbContratosCTC_DTVENC.Value,M_CONTA-1);
                    dmBD.tbPrestacoesPRE_DTBASE.Value := dmBD.tbPrestacoesPRE_DTVENC.Value;
                    //dmBD.tbContratosCTC_DTCONT.Value;
               End;
               //
               M_DTBASE := dmBD.tbPrestacoesPRE_DTVENC.Value;
               //
                   dmBD.tbPrestacoesPRE_FLJUAC.Value := dmBD.tbContratosCTC_FLACUM.Value;
                   dmBD.tbPrestacoesPRE_PECORR.Value := dmBD.tbContratosCTC_VLINDI.Value;
                   dmBD.tbPrestacoesPRE_CDINDI.Value := dmBD.tbContratosCTC_CDINDI.Value;
                   dmBD.tbPrestacoesPRE_JURVCT.Value := dmBD.tbContratosCTC_JUROS.Value;
                   dmBD.tbPrestacoesPRE_PEJURO.Value := M_JUINDI1;
               //
               dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbContratosCTC_VLPRES.Value;
               //dmBD.tbContratosCTC_VLPRES.Value+Funcoes.Gerapercentual(dmBD.tbContratosCTC_VLPRES.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
               dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
               //dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
               //
               If (dmBD.tbPrestacoesPRE_FLJUAC.Value = True) Then
               begin
                    //dmBD.tbPrestacoesPRE_PEJURO.Value := M_CONTA/100;
                    M_VLACUM := M_VLACUM+1;
                    dmBD.tbPrestacoesPRE_PEJURO.Value := M_VLACUM;
               End
               Else
               begin
                    //dmBD.tbPrestacoesPRE_VLJURO.Value := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_PEJURO.Value);
                    //dmBD.tbPrestacoesPRE_VLSUBT.Value*0.01;
                    //dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value;
                    //M_VLANTE := dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value;
               End;
               //
               dmBD.tbPrestacoesPRE_NMDESC.Value := InttoStr(M_CONTA)+'ª PRESTAÇÃO';
               dmBD.tbPrestacoesPRE_DIASAT.Value := date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
               dmBD.tbPrestacoesPRE_FLSITU.Value := 'A';
               dmBD.tbPrestacoesPRE_FLADIT.Value := False;
               dmBD.tbPrestacoesPRE_TPPRES.Value := 'P';
               dmBD.tbPrestacoesPRE_CDUSUA.Value := uNetImo.M_CDUSUA;
               dmBD.tbPrestacoes.Post;
               //
               frmNetImo.barStatus.Panels[1].Text := 'Prestações do cliente: 0'+InttoStr(M_CONTA);
               M_CONTA := M_CONTA + 1;
          End;         // Fim-do-Enquato
          //
          frmNetImo.barStatus.Panels[1].Text := ' ';
          // Fecha a tabela de Prestações
          dmBD.tbPrestacoes.Close;
          dmBD.tbContReceber.Close;
           //
          Application.MessageBox('Prestações criado com sucesso.', 'ATENÇÃO',
                    MB_OK+MB_ICONINFORMATION);
      Except
            Application.MessageBox('Error ao tentar criar prestações do cliente.', 'ERROR',
                      MB_OK+MB_ICONINFORMATION);
            dmBD.tbPrestacoes.Cancel;
            dmBD.tbContReceber.Cancel;
      End;
end;

procedure TfrmContrato.dsContratoDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmNetImo.barStatus.Panels[2].Text := ' Registro: ' + IntToStr(dsContrato.DataSet.RecNo) +
                          ' de ' + IntToStr(dsContrato.DataSet.RecordCount);
end;

procedure TfrmContrato.btVisualizarClick(Sender: TObject);
Var
    M_CDCLIE:String;
    M_VLUNBA:Double;
begin
     M_CDCLIE := dmBD.tbContratosCTC_CDCLIEN.Value;
     //
         Application.CreateForm(TfrmProCompra2, frmProCompra2);{Carrega form na memória}
         Try
            //  With frmProCompra2 Do
            //  begin
            ///       txtEmpresa.Caption := frmNetImo.NMEMPRE() ;
            //       txtUsuario.Caption := 'USUÁRIO: '+uNetImo.M_NMUSUA;
           //   End;
              //
              With frmProCompra2.qryContrato do
              begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACCTC Where CTC_CDCLIEN='+QuotedStr(M_CDCLIE));
                   Prepare;
                   Open;
              End;
              //
              With frmProCompra2.qryCliente do
              begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACCLI Where CLI_CDCLIE='+QuotedStr(M_CDCLIE));
                   Prepare;
                   Open;
              End;
              //
              frmProCompra2.qrl_Empreed.Caption  := dbcmbCDEMPR.Text;
              frmProCompra2.qrl_Endereco.Caption := txtEndereco.Field.AsString;
              frmProCompra2.qrl_Numero.Caption   := txtNumero.Field.Text;
              frmProCompra2.qrl_Bairro.Caption   := txtBairro.Field.Text;
              //
              M_VLUNBA := frmProCompra2.qryContratoCTC_TOBALO.Value/frmProCompra2.qryContratoCTC_QTBALO.Value;
              frmProCompra2.qrl_VLUNBA.Caption := 'R$ '+floattostrf(M_VLUNBA,ffFixed,18,2);
              frmProCompra2.txtData.Caption :=  'Teresina, '+ DataExtenso2(Date);
              frmProCompra2.qrPropCompra.Preview
         Finally
         //     frmRelPropCompra.Free;     {Libera Memória}
         End;
end;

procedure TfrmContrato.cmbCDIMOVEnter(Sender: TObject);
Var
    M_CDEMPR : String;
begin
     M_CDEMPR := dmBD.tbContratosCTC_CDEMPR.Value;
     dmBD.tbImoveis.Filter   := 'IMO_CDEMPR='+M_CDEMPR + ' and IMO_FLIMOV='+QuotedStr('DISPONIVEL');
     dmBD.tbImoveis.Filtered := True;
end;

procedure TfrmContrato.cmbINDICEExit(Sender: TObject);
begin
    If (dsContrato.State in [dsInsert, dsEdit]) Then
    Begin
         If funcoes.Empty(cmbINDICE.Text) Then
         begin
              ShowMessage('Selecione o Índice.');
              cmbINDICE.SetFocus;
              Exit;
         End
         Else
         Begin
              dmBD.tbIndices.Edit;
              M_FLACUM := dmBD.tbIndicesIND_JUACUM.Value;
              dmBD.tbContratosCTC_FLACUM.Value := M_FLACUM;
              dmBD.tbContratosCTC_VLINDI.Value := dmBD.tbIndicesIND_VLCORR.Value;
              M_JUINDI1 := dmBD.tbIndicesIND_VLJURO.Value;
              dmBD.tbIndices.Cancel;
         End;
    End;
end;

procedure TfrmContrato.CANCELAR_INCLUSAO;
begin
    If (dsContrato.State in [dsInsert, dsEdit]) Then
    begin
         If funcoes.Empty(dbcmbCDEMPR.Text) Then
            dmBD.tbContratos.Cancel;
         If funcoes.Empty(dbeCDIMOV.Text) Then
            dmBD.tbContratos.Cancel;
         If funcoes.Empty(dbcmbCLIENTE.Text) Then
            dmBD.tbContratos.Cancel;
    End;
end;

procedure TfrmContrato.dbcmbCDEMPRExit(Sender: TObject);
Begin
    If (dsContrato.State in [dsInsert, dsEdit]) Then
    begin
         If funcoes.Empty(dbcmbCDEMPR.Text) Then
         begin
              ShowMessage('Selecione o Empreendimento.');
              dbcmbCDEMPR.SetFocus;
              Exit;
         End;
         //
          {M_CDEMPR := dmBD.tbContratosCTC_CDEMPR.Value;
         dmBD.tbImoveis.Filter   := 'IMO_CDEMPR='+M_CDEMPR + ' and IMO_FLIMOV='+QuotedStr('DISPONIVEL');
         dmBD.tbImoveis.Filtered := True;}
    End;
end;

procedure TfrmContrato.dbcmbCLIENTEExit(Sender: TObject);
begin
    If (dsContrato.State in [dsInsert]) Then
    begin
         If funcoes.Empty(dbcmbCLIENTE.Text) Then
         begin
              ShowMessage('Selecione o Cliente.');
              dbcmbCLIENTE.SetFocus;
              Exit;
         End;
         //dmBD.tbContratosCTC_NMCLIE.Value := dmBD.tbClientesCLI_NMCLIE.Value;
    End;
end;

procedure TfrmContrato.Habilitar_Componentes;
begin
     dbcmbCDEMPR.Enabled  := True;
     dbeCDIMOV.Enabled    := True;
     dbcmbCLIENTE.Enabled := True;
     cmbINDICE.Enabled    := True;
     dbcmbINDICE2.Enabled := True;
end;

procedure TfrmContrato.dbcmbINDICE2Exit(Sender: TObject);
begin
    If (dsContrato.State in [dsInsert, dsEdit]) Then
    Begin
         If (funcoes.Empty(dbcmbINDICE2.Text)) Then
         begin
              ShowMessage('Selecione o Índice.');
              dbcmbINDICE2.SetFocus;
              Exit;
         End
         Else
         begin
              dmBD.tbIndices.Edit;
              M_FLACUM2 := dmBD.tbIndicesIND_JUACUM.Value;
              dmBD.tbContratosCTC_FLACU2.Value := M_FLACUM2;
              dmBD.tbContratosCTC_VLIND2.Value := dmBD.tbIndicesIND_VLCORR.Value;
              dmBD.tbIndices.Cancel;
              // Perguntar se quer salvar alterações
             If Application.MessageBox('Salvar alterações?',
                    'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
                 btGravarClick(Sender)
             Else
                 dbeVLENTRADA.SetFocus; 
                 //btCancelarClick(Sender);
         End;
    End;
end;

procedure TfrmContrato.dbeDTENTGExit(Sender: TObject);
begin
    If (dsContrato.State in [dsInsert, dsEdit]) Then
    Begin
         If (dmBD.tbContratosCTC_DTPREE.Value < Date()) Then
         Begin
             ShowMessage('A data de entrega não pode ser'+#13
                       +'menor que a data atual');
            dbeDTENTG.SetFocus;
        End;
    End;
end;

procedure TfrmContrato.dbeDTENTRADAExit(Sender: TObject);
begin
    If (dsContrato.State in [dsInsert]) Then
    Begin
        If (dmBD.tbContratosCTC_DTENTR.Value < Date()) Then
        begin
             ShowMessage('A data de entrada não pode ser'+#13
                        +'menor que a data atual');
             dbeDTENTRADA.SetFocus;
        End;
    End;
end;

procedure TfrmContrato.dbeDTVENCExit(Sender: TObject);
begin
    If (dsContrato.State in [dsInsert]) Then
    Begin
        If (dmBD.tbContratosCTC_DTVENC.Value < Date()) Then
        begin
             ShowMessage('A data de vencimento não pode ser'+#13
                        +'menor que a data atual');
             dbeDTVENC.SetFocus;
        End;
    End;
end;

procedure TfrmContrato.btAditivoClick(Sender: TObject);
Var
   W_NMCLIE: String;
   W_VLPAGO,W_VLSALDO,W_VLIMOV, W_SALDEV : Double;
   W_QTPRES,W_QTPAGA:Integer;
begin
     Try
        //
        dmBD.tbContratos.Edit;
        W_NMCLIE := dmBD.tbContratosCTC_NMCLIE.Value;
        W_VLPAGO := dmBD.tbContratosCTC_VLPAGA.Value;
        W_VLIMOV := dmBD.tbContratosCTC_VLIMOV.Value;
        W_SALDEV := dmBD.tbContratosCTC_VLSALD.Value;
        W_QTPRES := dmBD.tbContratosCTC_QTPRES.Value;
        W_QTPAGA := dmBD.tbContratosCTC_QTPAGA.Value;
        dmBD.tbContratos.Cancel;
        //
        W_VLSALDO := W_VLIMOV-W_VLPAGO;
        //
        Application.CreateForm(TfrmAditivo, frmAditivo);
        uAditivo.M_SALDO  := W_SALDEV ;
        uAditivo.M_QTPARC := W_QTPRES;
        uAditivo.M_QTPAGA := W_QTPAGA;
        frmAditivo.ShowModal;
        frmAditivo.Free;
     Except
          ShowMessage('Erro ao tentar abrir formulário de Aditivo.');
     End;

end;

procedure TfrmContrato.sbImovelClick(Sender: TObject);
begin
     If (dsContrato.State in [dsInsert]) Then
     begin
          M_CDEMPR := dmBD.tbContratosCTC_CDEMPR.Value;
          dmBD.tbImoveis.Filter   := 'IMO_CDEMPR='+M_CDEMPR + ' and IMO_FLIMOV='+QuotedStr('DISPONIVEL');
          dmBD.tbImoveis.Filtered := True;
          //
          Application.CreateForm(TfrmSeleImovel, frmSeleImovel);
          Try
             frmSeleImovel.Caption := 'Imovel';
             frmSeleImovel.dbGridPesq.Align := alClient;
             frmSeleImovel.ShowModal;
         finally
            frmSeleImovel.Free;
         End;
    End;
{     Application.CreateForm(TfrmPesRapida1, frmPesRapida1);
     Try
         frmPesRapida1.Caption := 'Imovel';
         frmPesRapida1.dbGridPesq.DataSource := dsImoveis;
         frmPesRapida1.dbGridPesq.Columns[0].FieldName := 'IMO_CDIMOV';
         frmPesRapida1.dbGridPesq.Columns[1].FieldName := 'IMO_NMTIPO';
         frmPesRapida1.dbGridPesq.Columns[0].Title.Caption := 'CÓDIGO';
         frmPesRapida1.dbGridPesq.Columns[1].Title.Caption := 'TIPO IMÓVEL';
         frmPesRapida1.dbGridPesq.Align := alClient;
         frmPesRapida1.ShowModal;
     finally
         frmPesRapida1.Free;
     End;}
end;

procedure TfrmContrato.sbClienteClick(Sender: TObject);
begin
     Application.CreateForm(TfrmPesRapida1, frmPesRapida1);
     Try
         frmPesRapida1.Caption := 'Cliente';
         frmPesRapida1.dbGridPesq.DataSource := dsClientes;
         frmPesRapida1.dbGridPesq.Columns[0].FieldName := 'CLI_CDCLIE';
         frmPesRapida1.dbGridPesq.Columns[1].FieldName := 'CLI_NMCLIE';
         frmPesRapida1.dbGridPesq.Columns[0].Title.Caption := 'CÓDIGO';
         frmPesRapida1.dbGridPesq.Columns[1].Title.Caption := 'CLIENTE';
         frmPesRapida1.dbGridPesq.Align := alClient;
         frmPesRapida1.ShowModal;
     finally
         frmPesRapida1.Free;
     End;
end;

procedure TfrmContrato.DBEdit1Enter(Sender: TObject);
Var
    M_CDEMPR : String;
begin
{     M_CDEMPR := dmBD.tbContratosCTC_CDEMPR.Value;
     dmBD.tbImoveis.Filter   := 'IMO_CDEMPR='+M_CDEMPR + ' and IMO_FLIMOV='+QuotedStr('DISPONIVEL');
     dmBD.tbImoveis.Filtered := True;}
end;

procedure TfrmContrato.DBEdit1Exit(Sender: TObject);
Var
    M_CDIMOV:String;
begin
     If (dsContrato.State in [dsInsert]) Then
     begin
  //        If not (funcoes.Empty(cmbCDIMOV.Text)) Then
//             dmBD.tbContratosCTC_VLIMOV.Value := dmBD.tbImoveisIMO_VLIMOV.Value;
     End;
     //
     If (dsContrato.State in [dsInsert, dsEdit]) Then
     begin
         If funcoes.Empty(dbeCDIMOV.Text) Then
         begin
              ShowMessage('Selecione o Imóvel.');
              dbeCDIMOV.SetFocus;
         End
         Else
         begin
              M_CDIMOV:= dmBD.tbContratosCTC_CDIMOV.Value;
              dmBD.tbImoveis.FindKey([M_CDIMOV]);
              //
              txtEndereco.Visible := True;
              txtNumero.Visible   := True;
              txtBairro.Visible   := True;
              // libera Filtros
              dmBD.tbImoveis.Filtered := False;
         End
     End;
end;

procedure TfrmContrato.cmbCDIMOVKeyPress(Sender: TObject; var Key: Char);
begin
{     If not( key in['0'..'9',#8] ) then
         key:=#0;}
     If  key = #13 then
         sbImovelClick(Sender);
end;

procedure TfrmContrato.dbeCDIMOVExit(Sender: TObject);
Var
     M_CDIMOV :String;
begin
     If (dsContrato.State in [dsInsert, dsEdit]) Then
     begin
         If funcoes.Empty(dbeCDIMOV.Text) Then
         begin
              ShowMessage('Selecione o Imóvel.');
              dbeCDIMOV.SetFocus;
         End
         Else
         begin
              //
              txtEndereco.Visible := True;
              txtNumero.Visible   := True;
              txtBairro.Visible   := True;
              // libera Filtros
              dmBD.tbImoveis.Filtered := False;
         End
     End;
end;

procedure TfrmContrato.dbeCDIMOVEnter(Sender: TObject);
begin
{     If (dsContrato.State in [dsInsert]) Then
     begin
          Invisivel_Componentes;
     End;}
end;

procedure TfrmContrato.dbcmbCDEMPREnter(Sender: TObject);
begin
     If (dsContrato.State in [dsInsert]) Then
     begin
         //dmBD.tbContratosCTC_CDIMOV.Value := '';
         //dmBD.tbContratosCTC_VLIMOV.Value := 0;
     End;
end;

procedure TfrmContrato.Invisivel_Componentes;
begin
          txtEndereco.Visible := False;
          txtNumero.Visible   := False;
          txtBairro.Visible   := False;
end;

procedure TfrmContrato.btLocalizarClick(Sender: TObject);
Var
    M_NMCLIE : String;
begin
    M_NMCLIE := InputBox('Localizar','Digite o nome do cliente?','');
    If Not funcoes.Empty(M_NMCLIE) Then
    begin
         //If not (dmBD.tbClientes.Locate('CLI_NMCLIE',M_NMCLIE,
         If not (dmBD.tbContratos.Locate('CTC_NMCLIE',M_NMCLIE,
                 [loCaseInsensitive,loPartialKey])) Then
         begin
              Application.MessageBox('Cliente não encontado.',
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
              Exit;
         End;
    End;
end;

procedure TfrmContrato.dbeVLENTRADAExit(Sender: TObject);
begin
     If (dsContrato.State in [dsInsert]) Then
     begin
         If funcoes.Empty(dbeVLENTRADA.Text) Then
            dmBD.tbContratosCTC_VLENTR.Value := 0;
     End;
end;

procedure TfrmContrato.dbeMultaExit(Sender: TObject);
begin
     If (dsContrato.State in [dsInsert]) Then
     begin
         If funcoes.Empty(dbeMulta.Text) Then
            dmBD.tbContratosCTC_VLMULT.Value := 0;
     End;
end;

procedure TfrmContrato.dbeJurosExit(Sender: TObject);
begin
     If (dsContrato.State in [dsInsert]) Then
     begin
         If funcoes.Empty(dbeJuros.Text) Then
            dmBD.tbContratosCTC_JUROS.value := 0;
     End;
end;

procedure TfrmContrato.Prestacao_Baloes;
Var
   M_CDCONT:String;
   M_NRBALA:Integer;
   M_DTBASE : Tdatetime;
begin
     Try
      If (dmBD.tbContratosCTC_QTBALO.Value > 0) Then
      begin
          If (dmBD.tbPrestacoes.Active = False) Then
              dmBD.tbPrestacoes.Open;
         // prestação de Baloes
         M_NRBALA := 1;
         M_CDCONT := dmBD.tbContratosCTC_CDCONT.Value;
         dmBD.tbBaloes.Filter   := 'BAL_CDCONT='+M_CDCONT;
         dmBD.tbBaloes.Filtered := True;
         dmBD.tbBaloes.First;
         While not (dmBD.tbBaloes.Eof) do
         begin
              dmBD.tbBaloes.Edit;
              //
              dmBD.tbParametros.Edit;
              dmBD.tbParametrosPAR_CDPRES.Value := dmBD.tbParametrosPAR_CDPRES.Value+1;
              dmBD.tbParametros.Post;
              //
              dmBD.tbPrestacoes.Append;
              dmBD.tbPrestacoesPRE_CDPRES.Value := Funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDPRES.Value),13);
              dmBD.tbPrestacoesPRE_CDCONT.Value := dmBD.tbContratosCTC_CDCONT.Value;
              dmBD.tbPrestacoesPRE_CDEMPR.Value := dmBD.tbContratosCTC_CDEMPR.Value;
              dmBD.tbPrestacoesPRE_CDCLIE.Value := dmBD.tbContratosCTC_CDCLIEN.Value;
              dmBD.tbPrestacoesPRE_CDIMOV.Value := dmBD.tbContratosCTC_CDIMOV.Value;
              dmBD.tbPrestacoesPRE_NRPRES.Value := 'PRE-BAL';
              dmBD.tbprestacoespre_PREST.Value  := M_NRBALA;
              dmBD.tbPrestacoesPRE_VLIMOV.Value := dmBD.tbContratosCTC_VLIMOV.Value;
              //
              dmBD.tbPrestacoesPRE_VLPRES.Value := dmBD.tbBaloesBAL_VLBALA.Value;
              dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbBaloesBAL_VLBALA.Value;
              //
              dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbContratosCTC_JUROS.Value;
              dmBD.tbPrestacoesPRE_VLMULT.Value := dmBD.tbContratosCTC_VLMULT.Value;
              dmBD.tbPrestacoesPRE_DTCADA.Value := dmBD.tbContratosCTC_DTCONT.Value;
              //
              dmBD.tbPrestacoesPRE_DTVENC.Value := dmBD.tbBaloesBAL_DTVENC.Value;
              If (M_NRBALA = 1) Then
                  dmBD.tbPrestacoesPRE_DTBASE.Value := dmBD.tbContratosCTC_DTCONT.Value
              Else
                  dmBD.tbPrestacoesPRE_DTBASE.Value := M_DTBASE;
              //
              M_DTBASE := dmBD.tbPrestacoesPRE_DTVENC.Value;
              //
              dmBD.tbPrestacoesPRE_DIASAT.Value := date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              //
              dmBD.tbPrestacoesPRE_FLJUAC.Value := dmBD.tbContratosCTC_FLACUM.Value;
              dmBD.tbPrestacoesPRE_PECORR.Value := dmBD.tbContratosCTC_VLINDI.Value;
              dmBD.tbPrestacoesPRE_CDINDI.Value := dmBD.tbContratosCTC_CDINDI.Value;
              dmBD.tbPrestacoesPRE_JURVCT.Value := dmBD.tbContratosCTC_JUROS.Value;
              dmBD.tbPrestacoesPRE_PEJURO.Value := M_JUINDI1;
              //
              dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbBaloesBAL_VLBALA.Value;
              //dmBD.tbContratosCTC_VLPRES.Value+Funcoes.Gerapercentual(dmBD.tbContratosCTC_VLPRES.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
              dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
              //dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
              //
              dmBD.tbPrestacoesPRE_VLJURO.Value := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_PEJURO.Value);
              dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbBaloesBAL_VLBALA.Value;
              //dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value;
              //
              dmBD.tbPrestacoesPRE_NMDESC.Value := InttoStr(M_NRBALA)+'ª '+'PRESTAÇÃO DE BALÃO';
              dmBD.tbPrestacoesPRE_FLSITU.Value := 'A';
              dmBD.tbPrestacoesPRE_FLADIT.Value := False;
              dmBD.tbPrestacoesPRE_TPPRES.Value := 'B';
              dmBD.tbPrestacoesPRE_CDUSUA.Value := uNetImo.M_CDUSUA;
              //
              dmBD.tbPrestacoes.Post;
              //
              M_NRBALA := M_NRBALA+1;
              //
              dmBD.tbBaloes.Next;
        End;          //fim-do-enquanto
        // Filtro
        dmBD.tbBaloes.Filtered := False;
      End;
     Except
           ShowMessage('Error ao tentar incluir prestações de balões.');
     End;
end;

procedure TfrmContrato.Prestacao_Chave;
begin
     Try
         If (dmBD.tbPrestacoes.Active = False) Then
             dmBD.tbPrestacoes.Open;
         // prestação da chave
         dmBD.tbParametros.Edit;
         dmBD.tbParametrosPAR_CDPRES.Value := dmBD.tbParametrosPAR_CDPRES.Value+1;
         dmBD.tbParametros.Post;
         //
         dmBD.tbPrestacoes.Append;
         dmBD.tbPrestacoesPRE_CDPRES.Value := Funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDPRES.Value),13);
         dmBD.tbPrestacoesPRE_CDCONT.Value := dmBD.tbContratosCTC_CDCONT.Value;
         dmBD.tbPrestacoesPRE_CDEMPR.Value := dmBD.tbContratosCTC_CDEMPR.Value;
         dmBD.tbPrestacoesPRE_CDCLIE.Value := dmBD.tbContratosCTC_CDCLIEN.Value;
         dmBD.tbPrestacoesPRE_CDIMOV.Value := dmBD.tbContratosCTC_CDIMOV.Value;
         dmBD.tbPrestacoesPRE_NRPRES.Value := 'PRE-CHA';
         dmBD.tbprestacoespre_PREST.Value  := 0;
         dmBD.tbPrestacoesPRE_VLIMOV.Value := dmBD.tbContratosCTC_VLIMOV.Value;
         dmBD.tbPrestacoesPRE_VLPRES.Value := dmBD.tbContratosCTC_VLCHAV.Value;
         dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbContratosCTC_VLCHAV.Value;
         dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbContratosCTC_JUROS.Value;
         dmBD.tbPrestacoesPRE_VLMULT.Value := dmBD.tbContratosCTC_VLMULT.Value;
         dmBD.tbPrestacoesPRE_DTCADA.Value := dmBD.tbContratosCTC_DTCONT.Value;
         //
         dmBD.tbPrestacoesPRE_DTVENC.Value := dmBD.tbContratosCTC_DTPREE.Value;
         dmBD.tbPrestacoesPRE_DTBASE.Value := dmBD.tbContratosCTC_DTCONT.Value;
         dmBD.tbPrestacoesPRE_DIASAT.Value := date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
         //
         dmBD.tbPrestacoesPRE_FLJUAC.Value := dmBD.tbContratosCTC_FLACUM.Value;
         dmBD.tbPrestacoesPRE_PECORR.Value := dmBD.tbContratosCTC_VLINDI.Value;
         dmBD.tbPrestacoesPRE_CDINDI.Value := dmBD.tbContratosCTC_CDINDI.Value;
         dmBD.tbPrestacoesPRE_JURVCT.Value := dmBD.tbContratosCTC_JUROS.Value;
         dmBD.tbPrestacoesPRE_PEJURO.Value := M_JUINDI1;
         //
         dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbContratosCTC_VLCHAV.Value;
         //dmBD.tbContratosCTC_VLPRES.Value+Funcoes.Gerapercentual(dmBD.tbContratosCTC_VLPRES.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
         dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
         //dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
         //
         dmBD.tbPrestacoesPRE_VLJURO.Value := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_PEJURO.Value);
         dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbContratosCTC_VLCHAV.Value;
         //dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value;
         //
         dmBD.tbPrestacoesPRE_NMDESC.Value := 'PRESTAÇÃO DE CHAVE';
         dmBD.tbPrestacoesPRE_FLSITU.Value := 'A';
         dmBD.tbPrestacoesPRE_FLADIT.Value := False;
         dmBD.tbPrestacoesPRE_TPPRES.Value := 'C';
         dmBD.tbPrestacoesPRE_CDUSUA.Value := uNetImo.M_CDUSUA;
         //
         dmBD.tbPrestacoes.Post;
         //
     Except
           ShowMessage('Error ao tentar incluir prestação de chave.');
     End;
end;

procedure TfrmContrato.Prestacao_Entrada;
begin
     Try
         If (dmBD.tbPrestacoes.Active = False) Then
              dmBD.tbPrestacoes.Open;
         // prestação de entrada
         dmBD.tbParametros.Edit;
         dmBD.tbParametrosPAR_CDPRES.Value := dmBD.tbParametrosPAR_CDPRES.Value+1;
         dmBD.tbParametros.Post;
         //
         dmBD.tbPrestacoes.Append;
         dmBD.tbPrestacoesPRE_CDPRES.Value := Funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDPRES.Value),13);
         dmBD.tbPrestacoesPRE_CDCONT.Value := dmBD.tbContratosCTC_CDCONT.Value;
         dmBD.tbPrestacoesPRE_CDEMPR.Value := dmBD.tbContratosCTC_CDEMPR.Value;
         dmBD.tbPrestacoesPRE_CDCLIE.Value := dmBD.tbContratosCTC_CDCLIEN.Value;
         dmBD.tbPrestacoesPRE_CDIMOV.Value := dmBD.tbContratosCTC_CDIMOV.Value;
         dmBD.tbPrestacoesPRE_NRPRES.Value := 'PRE-ENT';
         dmBD.tbprestacoespre_PREST.Value  := 0;
         dmBD.tbPrestacoesPRE_VLIMOV.Value := dmBD.tbContratosCTC_VLIMOV.Value;
         dmBD.tbPrestacoesPRE_VLPRES.Value := dmBD.tbContratosCTC_VLENTR.Value;
         dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbContratosCTC_VLENTR.Value;
         dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbContratosCTC_JUROS.Value;
         dmBD.tbPrestacoesPRE_VLMULT.Value := dmBD.tbContratosCTC_VLMULT.Value;
         dmBD.tbPrestacoesPRE_DTCADA.Value := dmBD.tbContratosCTC_DTCONT.Value;
         //
         dmBD.tbPrestacoesPRE_DTVENC.Value := dmBD.tbContratosCTC_DTENTR.Value;
         dmBD.tbPrestacoesPRE_DTBASE.Value := dmBD.tbContratosCTC_DTCONT.Value;
         dmBD.tbPrestacoesPRE_DIASAT.Value := date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
         //
         dmBD.tbPrestacoesPRE_FLJUAC.Value := dmBD.tbContratosCTC_FLACUM.Value;
         dmBD.tbPrestacoesPRE_PECORR.Value := dmBD.tbContratosCTC_VLINDI.Value;
         dmBD.tbPrestacoesPRE_CDINDI.Value := dmBD.tbContratosCTC_CDINDI.Value;
         dmBD.tbPrestacoesPRE_JURVCT.Value := dmBD.tbContratosCTC_JUROS.Value;
         dmBD.tbPrestacoesPRE_PEJURO.Value := M_JUINDI1;
         //
         dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbContratosCTC_VLENTR.Value;
         //dmBD.tbContratosCTC_VLPRES.Value+Funcoes.Gerapercentual(dmBD.tbContratosCTC_VLPRES.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
         dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
         //dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
         //
         dmBD.tbPrestacoesPRE_VLJURO.Value := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_PEJURO.Value);
         dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbContratosCTC_VLENTR.Value;
         //dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value;
         //
         dmBD.tbPrestacoesPRE_NMDESC.Value := 'PRESTAÇÃO DE ENTRADA';
         dmBD.tbPrestacoesPRE_FLSITU.Value := 'A';
         dmBD.tbPrestacoesPRE_FLADIT.Value := False;
         dmBD.tbPrestacoesPRE_TPPRES.Value := 'E';
         dmBD.tbPrestacoesPRE_CDUSUA.Value := uNetImo.M_CDUSUA;
         //
         dmBD.tbPrestacoes.Post;
         //
     Except
           ShowMessage('Error ao tentar incluir prestação de entrada.');
     End;
end;

procedure TfrmContrato.btEntregaClick(Sender: TObject);
begin
     try
          Application.CreateForm(TfrmEntImovel, frmEntImovel);
          frmEntImovel.ShowModal;
     finally
          frmEntImovel.Free;
     End;
end;

procedure TfrmContrato.CRIAR_PRESTACOES2;
Var
   M_QTPRES, M_CONTA : Integer;
   M_VLACUM, M_VLANTE : Double;
   M_DTVENC1,M_DTBASE:TDate;
begin
      M_QTPRES := dmBD.tbContratosCTC_QTPRES.Value;
      M_VLANTE := dmBD.tbContratosCTC_VLPRES.Value;
      M_CONTA  := 1;
      M_VLACUM := 0;
      frmNetImo.barStatus.Panels[1].Text := 'Criando prestações do cliente!!!';
      // cria as prestações do cliente
      Try
          //
          If dmBD.tbIndices.Locate('IND_CDINDI',dmBD.tbContratosCTC_CDINDI.Value,[]) Then
          begin
               dmBD.tbIndices.Edit;
               M_JUINDI1 := dmBD.tbIndicesIND_VLJURO.Value;
               dmBD.tbIndices.Cancel;
          End;
          //
          If (dmBD.tbPrestacoes.Active = False) Then
              dmBD.tbPrestacoes.Open;
          If (dmBD.tbContReceber.Active = False) Then
              dmBD.tbContReceber.Open;
          //
               dmBD.tbParametros.Edit;
               dmBD.tbParametrosPAR_CDPRES.Value := dmBD.tbParametrosPAR_CDPRES.Value+1;
               dmBD.tbParametros.Post;
               //
               dmBD.tbPrestacoes.Append;
               dmBD.tbPrestacoesPRE_CDPRES.Value := Funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDPRES.Value),13);
               dmBD.tbPrestacoesPRE_CDCONT.Value := dmBD.tbContratosCTC_CDCONT.Value;
               dmBD.tbPrestacoesPRE_CDEMPR.Value := dmBD.tbContratosCTC_CDEMPR.Value;
               dmBD.tbPrestacoesPRE_CDCLIE.Value := dmBD.tbContratosCTC_CDCLIEN.Value;
               dmBD.tbPrestacoesPRE_CDIMOV.Value := dmBD.tbContratosCTC_CDIMOV.Value;
               dmBD.tbPrestacoesPRE_NRPRES.Value := funcoes.StrZero('1',2)+'/'+InttoStr(dmBD.tbContratosCTC_QTPRES.Value);
               dmBD.tbprestacoespre_PREST.Value  := 1;
               dmBD.tbPrestacoesPRE_VLIMOV.Value := dmBD.tbContratosCTC_VLIMOV.Value;
               dmBD.tbPrestacoesPRE_VLPRES.Value := dmBD.tbContratosCTC_VLPRES.Value;
               dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbContratosCTC_VLPRES.Value;
               dmBD.tbPrestacoesPRE_VLJURO.Value := 0; //dmBD.tbContratosCTC_JUROS.Value;
               dmBD.tbPrestacoesPRE_VLMULT.Value := dmBD.tbContratosCTC_VLMULT.Value;
               //
               dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbContratosCTC_VLPRES.Value;
               //
               dmBD.tbPrestacoesPRE_DTCADA.Value := dmBD.tbContratosCTC_DTCONT.Value;
               // data de vencimento
               dmBD.tbPrestacoesPRE_DTVENC.Value := dmBD.tbContratosCTC_DTVENC.Value;
               dmBD.tbPrestacoesPRE_DTBASE.Value := dmBD.tbContratosCTC_DTCONT.Value;
                   dmBD.tbPrestacoesPRE_FLJUAC.Value := dmBD.tbContratosCTC_FLACUM.Value;
                   dmBD.tbPrestacoesPRE_PECORR.Value := dmBD.tbContratosCTC_VLINDI.Value;
                   dmBD.tbPrestacoesPRE_CDINDI.Value := dmBD.tbContratosCTC_CDINDI.Value;
                   dmBD.tbPrestacoesPRE_JURVCT.Value := dmBD.tbContratosCTC_JUROS.Value;
                   dmBD.tbPrestacoesPRE_PEJURO.Value := M_JUINDI1;
               //
               dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbContratosCTC_VLPRES.Value;
               dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
               //
               dmBD.tbPrestacoesPRE_FLSITU.Value := 'A';
               dmBD.tbPrestacoesPRE_FLADIT.Value := False;
               dmBD.tbPrestacoesPRE_TPPRES.Value := 'P';
               dmBD.tbPrestacoesPRE_CDUSUA.Value := uNetImo.M_CDUSUA;
               dmBD.tbPrestacoes.Post;
               // incluir nova conta a receber
               dmBD.tbParametros.edit;
               dmBD.tbParametrosPAR_NRSEQU.Value := dmBD.tbParametrosPAR_NRSEQU.Value+1;
               dmBD.tbParametrosPAR_NRRECE.Value := dmBD.tbParametrosPAR_NRRECE.Value+1;
               dmBD.tbParametros.Post;
               //
               dmBD.tbContReceber.Append;
               dmBD.tbContReceberREC_NRRECE.Value := funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_NRRECE.Value),13);
               dmBD.tbContReceberREC_NRSEQU.Value := funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_NRSEQU.Value),10);
               dmBD.tbContReceberREC_CDCONT.Value := dmBD.tbPrestacoesPRE_CDCONT.Value;
               dmBD.tbContReceberREC_CDPRES.Value := dmBD.tbPrestacoesPRE_CDPRES.Value;
               dmBD.tbContReceberREC_CDEMPR.Value := dmBD.tbContratosCTC_CDEMPR.Value;
               dmBD.tbContReceberREC_CDLOJA.Value := '001';
               dmBD.tbContReceberREC_CDCLIE.Value := dmBD.tbContratosCTC_CDCLIEN.Value;
               dmBD.tbContReceberREC_TPPRES.Value := 'P';
               dmBD.tbContReceberREC_NRPARC.Value := Funcoes.StrZero(InttoStr(M_CONTA),2);
               dmBD.tbContReceberREC_NMDESC.Value := 'PRESTAÇÃO '+Funcoes.StrZero('1',2)+' DE '+InttoStr(dmBD.tbContratosCTC_QTPRES.Value);
               dmBD.tbContReceberREC_VLPARC.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLPRES.Value);
               dmBD.tbContReceberREC_VLDEBI.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLPRES.Value);
               dmBD.tbContReceberREC_VLTOTA.Value := Funcoes.ArredontaFloat(dmBD.tbPrestacoesPRE_VLIMOV.Value);
               //dmBD.tbPrestacoesPRE_TOTAL.Value;
               dmBD.tbContReceberREC_VLDESC.Value := 0;
               dmBD.tbContReceberREC_VLJURO.Value := 0;
               dmBD.tbContReceberREC_FLRECE.Value := 'A';
               dmBD.tbContReceberREC_DTCADA.Value := Date();
               dmBD.tbContReceberREC_DTVENC.Value := dmBD.tbPrestacoesPRE_DTVENC.Value;
               dmBD.tbContReceberREC_QTDIAS.Value := Date()-dmBD.tbContReceberREC_DTVENC.Value;
               dmBD.tbContReceberREC_CDUSUA.Value := uNetImo.M_CDUSUA;
               dmBD.tbContReceber.Post;
               //
               frmNetImo.barStatus.Panels[1].Text := 'Prestações do cliente: 0'+InttoStr(M_CONTA);
          //
          frmNetImo.barStatus.Panels[1].Text := ' ';
          // Fecha a tabela de Prestações
          dmBD.tbPrestacoes.Close;
          dmBD.tbContReceber.Close;
           //
          Application.MessageBox('Prestações criadas com sucesso.', 'ATENÇÃO',
                    MB_OK+MB_ICONINFORMATION);
      Except
            Application.MessageBox('Error ao tentar criar prestações do cliente.', 'ERROR',
                      MB_OK+MB_ICONINFORMATION);
            dmBD.tbPrestacoes.Cancel;
            dmBD.tbContReceber.Cancel;
      End;
end;

procedure TfrmContrato.Prestacao_Baloes2;
BEGIN
end;

procedure TfrmContrato.dbcmbCLIENTEKeyPress(Sender: TObject;
  var Key: Char);
begin
     If  key = #13 then
        sbClienteClick(Sender);
end;

procedure TfrmContrato.GridContratosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (Shift = [ssCtrl]) and (Key = 46) Then
         KEY := 0;
end;

end.
