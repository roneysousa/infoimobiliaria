unit uNetLogon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  TfrmLogon = class(TForm)
    edt_NMUSUA: TEdit;
    lbl_data: TLabel;
    btConfirma: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edt_SENHAExit(Sender: TObject);
    procedure edt_NMUSUAExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_SENHAKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edt_NMUSUAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogon: TfrmLogon;
  M_QTTENT: Integer;

implementation

uses uBD, Funcoes, uNetImo;

{$R *.DFM}

procedure TfrmLogon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dmBD.tbUsuarios.Close;
     dmBD.tbCorrecInd.Close;     
     Action := caFree;
end;

procedure TfrmLogon.btCancelarClick(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TfrmLogon.FormActivate(Sender: TObject);
begin
     M_QTTENT:=0;
     //
     If (dmBD.tbUsuarios.Active = False ) Then
         dmBD.tbUsuarios.Open;
     If (dmBD.tbCorrecInd.Active = False ) Then
         dmBD.tbCorrecInd.Open;
end;

procedure TfrmLogon.BitBtn1Click(Sender: TObject);
Var
   M_ACHOU :boolean;
begin
     M_QTTENT:=M_QTTENT+1;
     // SE nome do usuario estiver vazio
     {If funcoes.Empty(edt_NMUSUA.Text) Then
     begin
          Application.MessageBox('Digite o nome de usuário.',
          'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
          edt_NMUSUA.SetFocus;
          Exit;
     end;
     //
     // Se a senha do usuario estiver vazio
     If funcoes.Empty(edt_SENHA.Text) Then
     begin
          Application.MessageBox('Digite sua senha de usuário.',
               'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
          edt_SENHA.SetFocus;
          Exit;
     end;
     // Se Super-Usuário
     If (edt_NMUSUA.Text=uNetImo.M_USERMASTER) Then
             // And (edt_Senha.text=uNetPrincipal.M_SNMASTER) Then
     begin
          uNetImo.M_CDUSUA := '000';
          uNetImo.M_NMUSUA := uNetImo.M_USERMASTER;
          Close;
          Exit;
     End;
     // Procura usuário
     If (M_QTTENT<=4) Then
     begin
          dmBD.tbUsuarios.IndexName := 'indSEN_NMUSUA';
          M_ACHOU := dmBD.tbUsuarios.FindKey([edt_NMUSUA.Text]);
          If Not(M_ACHOU) Then
          begin
                 Application.MessageBox( 'Usuário não cadastrado.',
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 edt_NMUSUA.Clear;
                 edt_NMUSUA.SetFocus;
                 Exit;
          end
          else
          begin
               dmBD.tbUsuarios.edit;
               If (dmBD.tbUsuariosSEN_SNATUA.Value = funcoes.Codifica(edt_Senha.text)) Then
               begin
                    //dmBD.tbUsuariosSEN_FLLOGA.Value := 'S';
                    uNetImo.M_CDUSUA := dmBD.tbUsuariosSEN_CDUSUA.Value;
                    uNetImo.M_NMUSUA := dmBD.tbUsuariosSEN_NMUSUA.Value;
                    //uEleicoes.M_ACESSO := dmBD.tbUsuariosSEN_TPACESSO.Value;
                    dmBD.tbUsuarios.Post;
                    //
                    Close;
               End
               Else
               begin
                    Application.MessageBox( 'Senha incorreta!',
                          'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    edt_SENHA.Clear;
                    edt_SENHA.SetFocus;
                    Exit;
               End;
          end;
     End
     Else
     begin
          Application.MessageBox('Este sistema será fechado!',
                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          Application.Terminate;
     End;}
end;

procedure TfrmLogon.edt_SENHAExit(Sender: TObject);
begin
//     edt_Senha.text := edt_Senha.text+funcoes.Replicate('*',6-funcoes.ContaCaracs(edt_Senha.text));
end;

procedure TfrmLogon.edt_NMUSUAExit(Sender: TObject);
begin
     If (funcoes.Empty(edt_NMUSUA.Text)) Then
     begin
          Application.MessageBox('Digite o nome de usuário',
                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
          edt_NMUSUA.SetFocus;
     End;
     {    dmBD.tbUsuarios.IndexFieldNames := 'SEN_CDUSUA';
    dmBD.tbUsuarios.FindKey([M_CDUSUA]);
    //
    dmBD.tbUsuarios.Edit;
    If (dmBD.tbUsuariosSEN_NMTERM.Value <> ' ') Then
    begin
  //       Application.MessageBox('O usuario já está no computador'+#13
         ShowMessage('O usuario já está no computador'+#13
             +funcoes.StrToPChar(funcoes.SysComputerName));
//                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
         edt_NMUSUA.SetFocus;
    End;}
end;

procedure TfrmLogon.FormCreate(Sender: TObject);
begin
     lbl_data.Caption := lbl_data.Caption+DatetoStr(Date());
end;

procedure TfrmLogon.edt_SENHAKeyPress(Sender: TObject; var Key: Char);
Begin
     If Key = #13 then
     begin
           Key := #0;          { Suprime o som }
           btConfirma.SetFocus;
     end;
     //
     If Key = #27 then
     begin
          Key := #0;          { Suprime o som }
          Application.Terminate;
     End;     
end;

procedure TfrmLogon.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #27 then
     begin
          Key := #0;          { Suprime o som }
          Application.Terminate;
     End;
end;

procedure TfrmLogon.edt_NMUSUAKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #27 then
     begin
          Key := #0;          { Suprime o som }
          Application.Terminate;
     End;
end;

end.
