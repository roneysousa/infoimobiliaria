unit uUsuarios2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, ToolWin, ComCtrls, Db, Grids, DBGrids;

type
  TfrmCadUsuarios = class(TForm)
    Panel3: TPanel;
    dsUsuarios: TDataSource;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeNMUSUA: TDBEdit;
    Label3: TLabel;
    dbeCargo: TDBEdit;
    DBText1: TDBText;
    Label5: TLabel;
    edtSenha: TEdit;
    Label6: TLabel;
    dbeSenha: TDBEdit;
    dsTpAcesso: TDataSource;
    edt_Confirma: TEdit;
    dbGridUsuarios: TDBGrid;
    ToolBar1: TToolBar;
    btPrimeiro: TToolButton;
    btAnterior: TToolButton;
    btProximo: TToolButton;
    btUltimo: TToolButton;
    btIncluir: TToolButton;
    btEditar: TToolButton;
    btExcluir: TToolButton;
    btGravar: TToolButton;
    btCancelar: TToolButton;
    btLocalizar: TToolButton;
    btSair: TToolButton;
    pnlSuperior: TPanel;
    Image1: TImage;
    DBText2: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure dsUsuariosStateChange(Sender: TObject);
    procedure dbeNMUSUAExit(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dbGridUsuariosDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtSenhaExit(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure edt_ConfirmaExit(Sender: TObject);
    procedure dsUsuariosDataChange(Sender: TObject; Field: TField);
    procedure dbGridUsuariosKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridUsuariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbGridUsuariosCellClick(Column: TColumn);
  private
     Procedure Apagar_Acessos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;
  M_LETRAS : String;

implementation

Uses uBD,Funcoes, uNetImo;

{$R *.DFM}

procedure TfrmCadUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbUsuarios.close;
     dmBD.tbCorrecInd.close;
     //dmBD.tbAcesso.Close;
     dmBD.tbParametros.Close;
     Action := caFree;
end;

procedure TfrmCadUsuarios.FormActivate(Sender: TObject);
begin
     If (dmBD.tbUsuarios.Active = False) Then
         dmBD.tbUsuarios.Open;
     If (dmBD.tbParametros.Active = False ) Then
         dmBD.tbParametros.Open;
     If (dmBD.tbCorrecInd.Active = False ) Then
         dmBD.tbCorrecInd.Open;
     //
{     If Not frmEleicoes.Acesso(M_CDUSUA,'Excluir') Then
         btExcluir.Visible := False;
     //         
     {If (dmBD.tbTPAcesso.Active = False ) Then
         dmBD.tbTPAcesso.Open;}
     //
     dbGridUsuarios.Align := alClient;
    // Excluir registros
{    If Not (frmEleicoes.Acesso(uNetPrincipal.M_CDUSUA,'Exclusao')) Then
    Begin
        If (uELleicoes.M_CDUSUA<>'000') Then
        begin
             frmEleicoes.mnuExcluirItem.Visible := False;
             btExcluir.Visible                  := False;
        End;
    End;}
end;

procedure TfrmCadUsuarios.btSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadUsuarios.btPrimeiroClick(Sender: TObject);
begin
      dmBD.tbUsuarios.First;  
end;

procedure TfrmCadUsuarios.btAnteriorClick(Sender: TObject);
begin
     dmBD.tbUsuarios.Prior; 
end;

procedure TfrmCadUsuarios.btProximoClick(Sender: TObject);
begin
     dmBD.tbUsuarios.Next; 
end;

procedure TfrmCadUsuarios.btUltimoClick(Sender: TObject);
begin
     dmBD.tbUsuarios.Last; 
end;

procedure TfrmCadUsuarios.btIncluirClick(Sender: TObject);
begin
   Try
     //
     dbGridUsuarios.Visible := False;
     // Inclui novo usuario do sistema
     dmBD.tbUsuarios.Append;
     //dmBD.tbUsuariosSEN_TPACESSO.Value  := '2';
     dbeNMUSUA.SetFocus;
   Except
        ShowMessage('Erro ao tentar incluir usuário.');
        dmBD.tbUsuarios.Cancel;
        dbGridUsuarios.Visible := True;
   End;
end;

procedure TfrmCadUsuarios.btEditarClick(Sender: TObject);
begin
     dmBD.tbUsuarios.Edit;
     If (uNetImo.M_CDUSUA = '000') Then
     begin
          dbGridUsuarios.Visible := false;
          edtSenha.Text     := dmBD.tbUsuariosSEN_SNATUA.Value;
          edt_Confirma.text := edtSenha.Text;
          dbeNMUSUA.SetFocus;
          Exit;
     End;
     //
     If (dmBD.tbUsuariosSEN_CDUSUA.Value = uNetImo.M_CDUSUA) Then
     begin
          dbGridUsuarios.Visible := false;
          edtSenha.Text     := dmBD.tbUsuariosSEN_SNATUA.Value;
          edt_Confirma.text := edtSenha.Text;
          dbeNMUSUA.SetFocus;
     End
     Else
     begin
          ShowMessage(uNetImo.M_NMUSUA+' você não pode edita este usuário.');
          dmBD.tbUsuarios.Cancel;
     End;
end;

procedure TfrmCadUsuarios.btExcluirClick(Sender: TObject);
begin
    If Application.MessageBox('Deseja eliminar este registro', 'Exclusão de usuário',
                  MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
    begin
         Apagar_Acessos;
         dmBD.tbUsuarios.delete;             // Apagar o registro atual.
    End;
end;

procedure TfrmCadUsuarios.dsUsuariosStateChange(Sender: TObject);
begin
    btPrimeiro.Enabled := dsUsuarios.State in [dsBrowse];
    btAnterior.Enabled := dsUsuarios.State in [dsBrowse];
    btProximo.Enabled  := dsUsuarios.State in [dsBrowse];
    btUltimo.Enabled   := dsUsuarios.State in [dsBrowse];
    //
    btIncluir.Enabled  := dsUsuarios.State in [dsBrowse];
    btEditar.Enabled   := dsUsuarios.State in [dsBrowse];
    btExcluir.Enabled  := dsUsuarios.State in [dsBrowse];
    //
    btLocalizar.Enabled:= dsUsuarios.State in [dsBrowse];
    btSair.Enabled     := dsUsuarios.State in [dsBrowse];
    //
    btGravar.Enabled   := dsUsuarios.State in [dsInsert,dsEdit];
    btCancelar.Enabled := dsUsuarios.State in [dsInsert,dsEdit];
    //
    // barra de status
     If dsUsuarios.State in [dsInsert] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de inserção';
     If dsUsuarios.State in [dsEdit] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de edição';
     If dsUsuarios.State in [dsBrowse] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de navegação';
end;

procedure TfrmCadUsuarios.dbeNMUSUAExit(Sender: TObject);
begin
     If (dsUsuarios.State in [dsInsert]) Then
     begin
          // Se nome do usuário estiver vazio
          If Funcoes.Empty(dbeNMUSUA.Text) Then
          begin
               Application.MessageBox( 'Digite o nome do usuário.',
                                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeNMUSUA.SetFocus;
               Exit;
          End;
          //
          If (dmBD.ValidaCampo(dmBD.tbUsuarios ,'SEN_NMUSUA',dbeNMUSUA.Text)) Then
          begin
               Application.MessageBox( 'Nome de usuário já cadastrado.',
                              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeNMUSUA.Clear;
               dbeNMUSUA.SetFocus;
          End
          Else
               dbeCargo.SetFocus;
     End;
end;

procedure TfrmCadUsuarios.btGravarClick(Sender: TObject);
begin
    Try
        If (dsUsuarios.State in [dsInsert]) Then
        begin
             dmBD.tbParametros.edit;
             dmBD.tbParametrosPAR_CDUSUA.Value := dmBD.tbParametrosPAR_CDUSUA.Value+1;
             dmBD.tbParametros.Post;
             //
             dmBD.tbUsuariosSEN_CDUSUA.Value := Funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDUSUA.Value),3);
        End;
        // grava
        dmBD.tbUsuarios.Post;
        // vai para o primeiro registro
        dbGridUsuarios.Visible := True;        
        dmBD.tbUsuarios.First;
    Except
        Application.MessageBox('Error ao tentar gravar registros.',
                    'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
        dmBD.tbUsuarios.Cancel;
        dbGridUsuarios.Visible := True;
    End;
end;

procedure TfrmCadUsuarios.btCancelarClick(Sender: TObject);
begin
     // cancela alteração
     dmBD.tbUsuarios.Cancel;
     dbGridUsuarios.Visible := True;
    // vai para o primeiro registro
    dmBD.tbUsuarios.First;
end;

procedure TfrmCadUsuarios.dbGridUsuariosDblClick(Sender: TObject);
begin
     btEditarClick(Sender);
end;

procedure TfrmCadUsuarios.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   If (dsUsuarios.State in [dsInsert,dsEdit]) Then
   begin
        If Application.MessageBox( 'Salvar alterações?',
              'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
             dmBD.tbUsuarios.Post
        Else
            dmBD.tbUsuarios.Cancel;
   End;
end;

procedure TfrmCadUsuarios.edtSenhaExit(Sender: TObject);
begin
    edtSenha.text := edtSenha.text+funcoes.Replicate('*',6-funcoes.ContaCaracs(edtSenha.text));
end;

procedure TfrmCadUsuarios.btLocalizarClick(Sender: TObject);
Var
   M_NMUSUA: string;
   ClickedOK, M_ACHOU: Boolean;  
begin
   M_NMUSUA := '';
   ClickedOK := InputQuery('Localizar', 'Informe o nome de usuário?', M_NMUSUA);
   If ClickedOK then
   Begin
        dmBD.tbUsuarios.IndexName := 'indSEN_NMUSUA';
        M_ACHOU := dmBD.tbUsuarios.FindKey([M_NMUSUA]);
        If Not(M_ACHOU) Then
        begin
            Application.MessageBox( 'Usuário não cadastrado.',
               'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            Exit;
        end;
   End;
end;

procedure TfrmCadUsuarios.edt_ConfirmaExit(Sender: TObject);
begin
    edt_Confirma.Text := edt_Confirma.Text+funcoes.Replicate('*',6-funcoes.ContaCaracs(edt_Confirma.Text));
    //dbeSenha.text := dbeSenha.text+funcoes.Replicate('*',6-funcoes.ContaCaracs(dbeSenha.Text));
    If ( edt_Confirma.Text = edtSenha.Text) Then
    begin
        dmBD.tbUsuariosSEN_SNATUA.Value := funcoes.Codifica(edt_Confirma.Text);
        //ShowMessage('Senha codificada com sucesso.');
        //dmBD.tbUsuariosSEN_SNATUA.Value := edtSenha.Text;
    End
    Else
    begin
         Application.MessageBox( 'A senha incorreta!','ATENÇÃO',
                      MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
         edt_Confirma.Clear;
         edt_Confirma.SetFocus;
    End;
end;

procedure TfrmCadUsuarios.dsUsuariosDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmNetImo.barStatus.Panels[2].Text := ' Registro: ' + IntToStr(dsUsuarios.DataSet.RecNo) +
                          ' de ' + IntToStr(dsUsuarios.DataSet.RecordCount);
end;

procedure TfrmCadUsuarios.dbGridUsuariosKeyPress(Sender: TObject;
  var Key: Char);
begin
      M_LETRAS := M_LETRAS+uppercase(key); // acumula as letras digitadas
      dmBD.tbUsuarios.LOCATE('UNI_NMUSUA',M_LETRAS,[loPartialKey]); // Efetua a procura
end;

procedure TfrmCadUsuarios.dbGridUsuariosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If (Shift = [ssCtrl]) and (Key = 46) Then
         KEY := 0;
     //
     IF (KEY=38) or (key=40) then // avalio se é seta para cima ou para baixo;
          M_LETRAS:='';
end;

procedure TfrmCadUsuarios.dbGridUsuariosCellClick(Column: TColumn);
begin
     M_LETRAS:='';
end;

procedure TfrmCadUsuarios.Apagar_Acessos;
Var
   W_CDUSUA:String;
begin
     {If (dmBD.tbAcesso.Active = False) Then
        dmBD.tbAcesso.open;}
     W_CDUSUA := dmBD.tbUsuariosSEN_CDUSUA.Value;
     //
{     If (dmBD.tbAcesso.Locate('ACE_CDUSUA',W_CDUSUA,[])) Then
     begin
          dmBD.tbAcesso.Filter   :='ACE_CDUSUA='+W_CDUSUA;
          dmBD.tbAcesso.Filtered := True;
          dmBD.tbAcesso.First;
          While Not (dmBD.tbAcesso.Eof) do     //Enquanto
          begin
              dmBD.tbAcesso.Delete;
              // proximo usuario
              dmBD.tbAcesso.Next;
          End;   // fim-do-enquanto
         dmBD.tbAcesso.Filtered := False;
     End;  //fim-da- procura
     //
     dmBD.tbAcesso.close;}
end;

end.
