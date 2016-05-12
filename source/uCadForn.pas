unit uCadForn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Db, ToolWin, ComCtrls, ExtCtrls, Grids, DBGrids;

type
  TfrmCadForn = class(TForm)
    ToolBar1: TToolBar;
    dsFornecedor: TDataSource;
    btPrimeiro: TToolButton;
    btAnterior: TToolButton;
    btProximo: TToolButton;
    btUltimo: TToolButton;
    tbAddForn: TToolButton;
    tbEditForn: TToolButton;
    tbDelForn: TToolButton;
    btGravaForn: TToolButton;
    btCancForn: TToolButton;
    btFechar: TToolButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    dbtCDFORN: TDBText;
    dbeNMFANT: TDBEdit;
    dbeRazao: TDBEdit;
    dbeCGC: TDBEdit;
    dbeENDFORN: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    btLocalizar: TToolButton;
    Panel2: TPanel;
    cmbUF: TDBComboBox;
    Image1: TImage;
    DBText3: TDBText;
    dbGRIDFORN: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsFornecedorStateChange(Sender: TObject);
    procedure tbEditFornClick(Sender: TObject);
    procedure btCancFornClick(Sender: TObject);
    procedure tbAddFornClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btGravaFornClick(Sender: TObject);
    procedure tbDelFornClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure dsFornecedorDataChange(Sender: TObject; Field: TField);
    procedure dbGRIDFORNDblClick(Sender: TObject);
    procedure dbeNMFANTExit(Sender: TObject);
    procedure dbeCGCExit(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure dbGRIDFORNCellClick(Column: TColumn);
    procedure dbGRIDFORNKeyPress(Sender: TObject; var Key: Char);
    procedure dbGRIDFORNKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadForn: TfrmCadForn;
  M_LETRAS :String;

implementation

uses uBD,Funcoes,uNetImo;

{$R *.DFM}

procedure TfrmCadForn.FormActivate(Sender: TObject);
begin
     If (dmBD.tbFornecedores.Active = False) Then
        dmBD.tbFornecedores.Open;
     If (dmBD.tbParametros.Active = False) Then
        dmBD.tbParametros.Open;
     // menu de opc�es.
     uNetImo.JanelaAtiva := 'CADFORNECEDOR';
     frmNetImo.mnuNavegacao.Enabled := True;
     dbGRIDFORN.Align  := alClient;
     dbGRIDFORN.Visible := True;
     dbGRIDFORN.SetFocus;
     Limpar_Status;      
    // Excluir registros
{    If Not (frmNetImo.Acesso(uNetPrincipal.M_CDUSUA,'Exclusao')) Then
    Begin
        If (uNetPrincipal.M_CDUSUA<>'000') Then
        begin
             frmNetTrans.mnuExcluirItem.Visible := False;
             tbDelForn.Visible                  := False;
        End;
    End;}
end;

procedure TfrmCadForn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbFornecedores.Close;
     dmBD.tbParametros.Close;
     //
     frmNetImo.mnuNavegacao.Enabled := False;
     Limpar_Status;
     //
     Action := caFree;
end;

procedure TfrmCadForn.dsFornecedorStateChange(Sender: TObject);
begin
    //
    btPrimeiro.Enabled := dsFornecedor.State in [dsBrowse];
    btAnterior.Enabled := dsFornecedor.State in [dsBrowse];
    btProximo.Enabled  := dsFornecedor.State in [dsBrowse];
    btUltimo.Enabled   := dsFornecedor.State in [dsBrowse];
    btLocalizar.Enabled   := dsFornecedor.State in [dsBrowse];
    btFechar.Enabled   := dsFornecedor.State in [dsBrowse];
    //
    tbAddForn.Enabled := dsFornecedor.State in [dsBrowse];
    tbEditForn.Enabled := dsFornecedor.State in [dsBrowse];
    tbDelForn.Enabled := (dsFornecedor.State in [dsBrowse])
     and (dmBD.tbFornecedores.RecordCount > 0);
    //
    btGravaForn.Enabled := dsFornecedor.State in [dsInsert,dsEdit];
    btCancForn.Enabled  := dsFornecedor.State in [dsInsert,dsEdit];
    // barra de status
     If dsFornecedor.State in [dsInsert] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de inser��o';
     If dsFornecedor.State in [dsEdit] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de edi��o';
     If dsFornecedor.State in [dsBrowse] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de navega��o';
     // menus principal
     frmNetImo.mnuPrimeiroItem.Enabled := dsFornecedor.State in [dsBrowse];
     frmNetImo.mnuAnteriorItem.Enabled := dsFornecedor.State in [dsBrowse];
     frmNetImo.mnuProximoItem.Enabled  := dsFornecedor.State in [dsBrowse];
     frmNetImo.mnuUltimoItem.Enabled   := dsFornecedor.State in [dsBrowse];
     //
     frmNetImo.mnuAdicionarItem.Enabled := dsFornecedor.State in [dsBrowse];
     frmNetImo.mnuEditarItem.Enabled    := dsFornecedor.State in [dsBrowse];
     frmNetImo.mnuExcluirItem.Enabled   := dsFornecedor.State in [dsBrowse];
     //
     frmNetImo.mnuGravarItem.Enabled   := dsFornecedor.State in [dsInsert,dsEdit];
     frmNetImo.mnuCancelarItem.Enabled := dsFornecedor.State in [dsInsert,dsEdit];
end;

procedure TfrmCadForn.tbEditFornClick(Sender: TObject);
begin
    Try
        dbGRIDFORN.Visible := False;
        dmBD.tbFornecedores.edit;
        dbeNMFANT.SetFocus;
    Except
       ShowMessage('Error ao tentar editar regitros.');
    End;
end;

procedure TfrmCadForn.btCancFornClick(Sender: TObject);
begin
  Try
     dmBD.tbFornecedores.Cancel;
     dbGRIDFORN.Visible := True;
  Except
       ShowMessage('Error ao tentar cancelar altera��es.');
  End;
end;

procedure TfrmCadForn.tbAddFornClick(Sender: TObject);
begin
    Try
       // Adicionar novo cliente
       dbGRIDFORN.Visible := False;
       dmBD.tbFornecedores.Append;
       dmBD.tbFornecedoresFOR_CDUSUA.Value := uNetImo.M_CDUSUA;
       dbeNMFANT.SetFocus; 
    Except
        ShowMessage('Error ao tentar incluir cliente.');
    End;
end;

procedure TfrmCadForn.btPrimeiroClick(Sender: TObject);
begin
     If not (dmBD.tbFornecedores.Bof) Then
         dmBD.tbFornecedores.First;
end;

procedure TfrmCadForn.btAnteriorClick(Sender: TObject);
begin
     If not (dmBD.tbFornecedores.Bof) Then
        dmBD.tbFornecedores.Prior;
end;

procedure TfrmCadForn.btProximoClick(Sender: TObject);
begin
     If not (dmBD.tbFornecedores.Eof) Then
         dmBD.tbFornecedores.Next;
end;

procedure TfrmCadForn.btUltimoClick(Sender: TObject);
begin
     If not (dmBD.tbFornecedores.Eof) Then
         dmBD.tbFornecedores.Last;
end;

procedure TfrmCadForn.btGravaFornClick(Sender: TObject);
begin
  Try
     Try
          If (dsFornecedor.State in [dsInsert]) Then
          Begin
               dmBD.tbParametros.Edit;
               dmBD.tbParametrosPAR_CDFORN.Value :=
                    (dmBD.tbParametrosPAR_CDFORN.Value+1);
               dmBD.tbParametros.Post;
               //
               dmBD.tbFornecedoresFOR_CDFORN.Value := funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDFORN.Value),5);
          End;
          //
          dmBD.tbFornecedores.Post;
     Except
          ShowMessage('Error ao tentar Gravar registro.');
     End;
  Finally
     dbGRIDFORN.Visible := True;
     dbGRIDFORN.SetFocus;
  End;
end;

procedure TfrmCadForn.tbDelFornClick(Sender: TObject);
begin
    If Application.MessageBox('Deseja eliminar este registro:', 'Exclus�o de Fornecedor',
                  MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
         dmBD.tbFornecedores.delete;             // Apagar o regitro atual.
end;

procedure TfrmCadForn.btFecharClick(Sender: TObject);
begin
     If (dsFornecedor.State in [dsInsert,dsEdit]) Then
     begin
         If Application.MessageBox( 'Salvar as altera��es?','ATEN��O',
                      MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
               dmBD.tbFornecedores.Post          // Grava as altera��es
         Else
               dmBD.tbFornecedores.Cancel;         // Cancela as altera��es
     End;
     // Fechar a janela.
     Close;
end;

procedure TfrmCadForn.dsFornecedorDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmNetImo.barStatus.Panels[2].Text := ' Registro: ' + IntToStr(dsFornecedor.DataSet.RecNo) +
                          ' de ' + IntToStr(dsFornecedor.DataSet.RecordCount);
end;

procedure TfrmCadForn.dbGRIDFORNDblClick(Sender: TObject);
begin
     dbGRIDFORN.Visible := False;
     dmBD.tbFornecedores.edit;
end;

procedure TfrmCadForn.dbeNMFANTExit(Sender: TObject);
begin
     If (dsFornecedor.State in [dsInsert]) Then
     begin
          // Se nome do cliente estiver vazio
          If Funcoes.Empty(dbeNMFANT.Text) Then
          begin
          Application.MessageBox( 'Digite o nome de fantasia.',
                                  'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          dbeNMFANT.SetFocus;
          Exit;
          End;
          //
          If (dmBD.ValidaCampo(dmBD.tbFornecedores ,'FOR_NMFORN',dbeNMFANT.Text)) Then
          begin
               Application.MessageBox( 'Nome de fantasia j� cadastrado.',
                              'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeNMFANT.Clear;
               dbeNMFANT.SetFocus;
          End
          Else
               dbeRAZAO.SetFocus;
     End;
end;

procedure TfrmCadForn.dbeCGCExit(Sender: TObject);
begin
     If (dsFornecedor.State in [dsInsert]) Then
     begin
          // Se nome do cliente estiver vazio
          If Funcoes.Empty(dbeCGC.Text) Then
          begin
          Application.MessageBox( 'Digite o n�mero do CGC do fornecedor.',
                                  'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          dbeCGC.SetFocus;
          Exit;
          End;
          //
          If (dmBD.ValidaCampo(dmBD.tbFornecedores ,'FOR_CGCFOR',dbeCGC.Text)) Then
          begin
               Application.MessageBox( 'CGC j� cadastrado.',
                              'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeCGC.Clear;
               dbeCGC.SetFocus;
          End
          Else
               dbeENDFORN.SetFocus;
     End;
end;

procedure TfrmCadForn.btLocalizarClick(Sender: TObject);
Var
    M_NMFORN : String;
begin
    M_NMFORN := InputBox('Localizar','Digite o nome do Fornecedor?','');
    If Not funcoes.Empty(M_NMFORN) Then
    begin
         If not (dmBD.tbFornecedores.Locate('FOR_NMFORN',M_NMFORN,
                 [loCaseInsensitive,loPartialKey])) Then
         begin
              Application.MessageBox('Fornecedor n�o encontado.',
                         'ATEN��O', MB_OK+MB_ICONINFORMATION);
              Exit;
         End;
    End;
end;

procedure TfrmCadForn.dbGRIDFORNCellClick(Column: TColumn);
begin
     M_LETRAS := '';
end;

procedure TfrmCadForn.dbGRIDFORNKeyPress(Sender: TObject;
  var Key: Char);
begin
      M_letras := M_letras+uppercase(key); // acumula as letras digitadas
      dmBD.tbFornecedores.LOCATE('FOR_NMFORN',M_LETRAS,[loPartialKey]); // Efetua a procura
end;

procedure TfrmCadForn.dbGRIDFORNKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF (KEY=38) or (key=40) then // avalio se � seta para cima ou para baixo;
          M_letras:='';
end;

procedure TfrmCadForn.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If (dsFornecedor.State in [dsInsert,dsEdit]) Then
     begin
         If Application.MessageBox('Salvar altera��es?',
                  'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
             dmBD.tbFornecedores.Post
         Else
             dmBD.tbFornecedores.Cancel;
     End;
end;

end.
