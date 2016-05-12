unit uCadClientes2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, DBCtrls, StdCtrls, Mask, Db;

type
  TfrmCadCliente = class(TForm)
    ToolBar1: TToolBar;
    tbPrimeiro: TToolButton;
    tbAnterior: TToolButton;
    btProximo: TToolButton;
    btUltimo: TToolButton;
    btIncluir: TToolButton;
    btEditar: TToolButton;
    btDelete: TToolButton;
    btGravar: TToolButton;
    btCancela: TToolButton;
    btLocalizar: TToolButton;
    btFechar: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    PagControle: TPageControl;
    tsBasico: TTabSheet;
    Label1: TLabel;
    dsClientes: TDataSource;
    Label2: TLabel;
    dbeNMFUNC: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBText1: TDBText;
    cmbUF: TDBComboBox;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    cmbSexo: TDBComboBox;
    tsEmprego: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    Label23: TLabel;
    DBComboBox1: TDBComboBox;
    tsJuridico: TTabSheet;
    Label26: TLabel;
    DBText2: TDBText;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    Label28: TLabel;
    DBEdit23: TDBEdit;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    Label30: TLabel;
    DBEdit25: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit26: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit27: TDBEdit;
    Label33: TLabel;
    DBEdit28: TDBEdit;
    Label34: TLabel;
    DBEdit29: TDBEdit;
    Label35: TLabel;
    DBEdit30: TDBEdit;
    Label36: TLabel;
    DBEdit31: TDBEdit;
    dbcPessoaJuridica: TDBCheckBox;
    GridFunc: TDBGrid;
    ckbJuridica2: TDBCheckBox;
    bsConjuge: TTabSheet;
    Label24: TLabel;
    DBEdit20: TDBEdit;
    Label25: TLabel;
    DBEdit21: TDBEdit;
    Label37: TLabel;
    DBEdit32: TDBEdit;
    Label38: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label39: TLabel;
    DBEdit35: TDBEdit;
    Label40: TLabel;
    DBEdit36: TDBEdit;
    Label41: TLabel;
    cmbESTCIV: TDBComboBox;
    Label42: TLabel;
    DBEdit37: TDBEdit;
    Label43: TLabel;
    DBEdit38: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit39: TDBEdit;
    Image1: TImage;
    DBText3: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsClientesStateChange(Sender: TObject);
    procedure dsClientesDataChange(Sender: TObject; Field: TField);
    procedure tbPrimeiroClick(Sender: TObject);
    procedure tbAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbeNMFUNCExit(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure GridFuncKeyPress(Sender: TObject; var Key: Char);
    procedure GridFuncKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridFuncCellClick(Column: TColumn);
    procedure GridFuncDblClick(Sender: TObject);
    procedure dbcPessoaJuridicaClick(Sender: TObject);
    procedure ckbJuridica2Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;
   M_LETRAS : String;

implementation

Uses uNetImo,uBD,Funcoes, uPequisa1;

{$R *.DFM}

procedure TfrmCadCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dmBD.tbClientes.Close;
     dmBD.tbParametros.CLose;
     frmNetImo.mnuNavegacao.Enabled := False;
     //
     Action := caFree;
end;

procedure TfrmCadCliente.dsClientesStateChange(Sender: TObject);
begin
    tbPrimeiro.Enabled := dsClientes.State in [dsBrowse];
    tbAnterior.Enabled := dsClientes.State in [dsBrowse];
    btProximo.Enabled  := dsClientes.State in [dsBrowse];
    btUltimo.Enabled   := dsClientes.State in [dsBrowse];
    btLocalizar.Enabled:= dsClientes.State in [dsBrowse];
    btFechar.Enabled   := dsClientes.State in [dsBrowse];
    //
    btIncluir.Enabled := dsClientes.State in [dsBrowse];
    btEditar.Enabled  := dsClientes.State in [dsBrowse];
    btDelete.Enabled  := (dsClientes.State in [dsBrowse])
     and (DmBD.tbClientes.RecordCount > 0);
    //
    btGravar.Enabled  := dsClientes.State in [dsInsert,dsEdit];
    btCancela.Enabled := dsClientes.State in [dsInsert,dsEdit];
    // barra de status
     If dsClientes.State in [dsInsert] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de inser��o';
     If dsClientes.State in [dsEdit] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de edi��o';
     If dsClientes.State in [dsBrowse] Then
         frmNetImo.barStatus.Panels[3].Text := 'Modo de navega��o';
     // menus principal
     frmNetImo.mnuPrimeiroItem.Enabled := dsClientes.State in [dsBrowse];
     frmNetImo.mnuAnteriorItem.Enabled := dsClientes.State in [dsBrowse];
     frmNetImo.mnuProximoItem.Enabled  := dsClientes.State in [dsBrowse];
     frmNetImo.mnuUltimoItem.Enabled   := dsClientes.State in [dsBrowse];
     //
     frmNetImo.mnuAdicionarItem.Enabled := dsClientes.State in [dsBrowse];
     frmNetImo.mnuEditarItem.Enabled    := dsClientes.State in [dsBrowse];
     frmNetImo.mnuExcluirItem.Enabled   := dsClientes.State in [dsBrowse];
     //
     frmNetImo.mnuGravarItem.Enabled   := dsClientes.State in [dsInsert,dsEdit];
     frmNetImo.mnuCancelarItem.Enabled := dsClientes.State in [dsInsert,dsEdit];

end;

procedure TfrmCadCliente.dsClientesDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmNetImo.barStatus.Panels[2].Text := ' Registro: ' + IntToStr(dsClientes.DataSet.RecNo) +
                          ' de ' + IntToStr(dsClientes.DataSet.RecordCount);
     //
{     If (dmBD.tbClientesCLI_TPPESS.Value = True) Then
     begin
          tsBasico.TabVisible  := True;
          tsEmprego.TabVisible := True;
          //
          tsJuridico.TabVisible := False;
     End
     else
     begin
          tsJuridico.TabVisible := True;
          //
          tsBasico.TabVisible  := False;
          tsEmprego.TabVisible := False;
     End;}
end;

procedure TfrmCadCliente.tbPrimeiroClick(Sender: TObject);
begin
     If not(dmBD.tbClientes.Bof) Then
         dmBD.tbClientes.First;
end;

procedure TfrmCadCliente.tbAnteriorClick(Sender: TObject);
begin
     If not(dmBD.tbClientes.Bof) Then
         dmBD.tbClientes.Prior;
end;

procedure TfrmCadCliente.btProximoClick(Sender: TObject);
begin
     If not(dmBD.tbClientes.Eof) Then
         dmBD.tbClientes.Next;
end;

procedure TfrmCadCliente.btUltimoClick(Sender: TObject);
begin
     If not(dmBD.tbClientes.Eof) Then
         dmBD.tbClientes.Last;
end;

procedure TfrmCadCliente.btDeleteClick(Sender: TObject);
begin
    If Application.MessageBox('Deseja eliminar este registro:', 'Exclus�o de Cliente',
                  MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
         dmBD.tbClientes.delete;             // Apagar o regitro atual.
end;

procedure TfrmCadCliente.btFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmCadCliente.btEditarClick(Sender: TObject);
begin
  Try
     GridFunc.Visible := False;
     dmBD.tbClientes.edit;
     //
     If (dmBD.tbClientesCLI_TPPESS.Value = True) Then
     begin
          tsBasico.TabVisible  := False;
          bsConjuge.TabVisible := False;
          tsEmprego.TabVisible := False;
          //
          tsJuridico.TabVisible  := True;
          PagControle.ActivePage := tsJuridico;
     End
     else
     begin
          tsJuridico.TabVisible := False;
          //
          tsBasico.TabVisible  := True;
          bsConjuge.TabVisible := True;
          tsEmprego.TabVisible := True;
          PagControle.ActivePage := tsBasico;
     End;
  Except
       ShowMessage('Error ao tentar editar registro.');
  End;
end;

procedure TfrmCadCliente.btIncluirClick(Sender: TObject);
// Incluir novo registro
begin
    Try
       GridFunc.Visible := False;
       //
       tsJuridico.TabVisible := False;
       //
       tsBasico.TabVisible  := True;
       bsConjuge.TabVisible := True;
       tsEmprego.TabVisible := True;
       PagControle.ActivePage := tsBasico;
       //
       dmBD.tbClientes.Append;
       dmBD.tbClientesCLI_TPPESS.Value := False;
       dmBD.tbClientesCLI_CDUSUA.Value := uNetImo.M_CDUSUA;
       dbeNMFUNC.SetFocus; 
    Except
       ShowMessage('Error ao tentar incluir cliente.');
    End;
end;

procedure TfrmCadCliente.btGravarClick(Sender: TObject);
begin
  Try
     If (dsClientes.State in [dsInsert]) Then
     Begin
         dmBD.tbParametros.Edit;
         dmBD.tbParametrosPAR_CDCLIE.Value :=
             (dmBD.tbParametrosPAR_CDCLIE.Value+1);
         dmBD.tbParametros.Post;
        //
        dmBD.tbClientesCLI_CDCLIE.Value := funcoes.StrZero(FloattoStr(dmBD.tbParametrosPAR_CDCLIE.Value),7);
     End;
     //
     dmBD.tbClientes.Post;
     GridFunc.Visible := True;
     GridFunc.SetFocus;
  Except
       ShowMessage('Error ao tentar Gravar registro.');
  End;
end;

procedure TfrmCadCliente.btCancelaClick(Sender: TObject);
begin
  Try
     dmBD.tbClientes.Cancel;
     GridFunc.Visible := True;
     GridFunc.SetFocus;
  Except
       ShowMessage('Error ao tentar cancelar altera��es.');
  End;
end;

procedure TfrmCadCliente.FormActivate(Sender: TObject);
begin
     If (dmBD.tbClientes.Active=False) Then
         dmBD.tbClientes.Open;
     If (dmBD.tbParametros.Active=False) Then
         dmBD.tbParametros.Open;
     //
     uNetImo.JanelaAtiva := 'CADCLIE';
     frmNetImo.mnuNavegacao.Enabled := True;
     //
     GridFunc.Align := alClient;
     GridFunc.SetFocus;
end;

procedure TfrmCadCliente.dbeNMFUNCExit(Sender: TObject);
begin
     If (dsClientes.State in [dsInsert]) Then
     begin
          // Se nome do cliente estiver vazio
          If Funcoes.Empty(dbeNMFUNC.Text) Then
          begin
          Application.MessageBox('Digite o nome do Clientes.',
                                 'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          dbeNMFUNC.SetFocus;
          Exit;
          End;
          //
          If (dmBD.ValidaCampo(DmBD.tbClientes ,'CLI_NMCLIE',dbeNMFUNC.Text)) Then
          begin
               Application.MessageBox('Funcion�rio j� cadastrado.',
                               'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeNMFUNC.Clear;
               dbeNMFUNC.SetFocus;
               Exit;
          End;
     End;
end;

procedure TfrmCadCliente.btLocalizarClick(Sender: TObject);
begin
     Application.CreateForm(TfrmLocalizar, frmLocalizar);
     frmLocalizar.Caption := 'Clientes';
     frmLocalizar.ShowModal;
     frmLocalizar.Free;
end;

procedure TfrmCadCliente.GridFuncKeyPress(Sender: TObject; var Key: Char);
begin
      M_LETRAS := M_LETRAS+uppercase(key); // acumula as letras digitadas
      dmBD.tbClientes.LOCATE('CLI_NMCLIE',M_LETRAS,[loPartialKey]); // Efetua a procura
end;

procedure TfrmCadCliente.GridFuncKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF (KEY=38) or (key=40) then // avalio se � seta para cima ou para baixo;
          M_LETRAS :='';
end;

procedure TfrmCadCliente.GridFuncCellClick(Column: TColumn);
begin
       M_LETRAS := '';
end;

procedure TfrmCadCliente.GridFuncDblClick(Sender: TObject);
begin
     btEditarClick(Sender);
end;

procedure TfrmCadCliente.dbcPessoaJuridicaClick(Sender: TObject);
begin
    If (dbcPessoaJuridica.Checked = True) Then
    Begin
          tsJuridico.TabVisible := True;
          //
          tsBasico.TabVisible  := False;
          bsConjuge.TabVisible    := False;
          tsEmprego.TabVisible := False;
     End
     else
     begin
          tsBasico.TabVisible  := True;
          bsConjuge.TabVisible := True;
          tsEmprego.TabVisible := True;
          //
          tsJuridico.TabVisible := False;
    End;
end;

procedure TfrmCadCliente.ckbJuridica2Click(Sender: TObject);
begin
    If (ckbJuridica2.Checked = True) Then
    Begin
          tsJuridico.TabVisible := True;
          //
          tsBasico.TabVisible  := False;
          bsConjuge.TabVisible    := False;
          tsEmprego.TabVisible := False;
     End
     else
     begin
          tsBasico.TabVisible  := True;
          bsConjuge.TabVisible    := True;
          tsEmprego.TabVisible := True;
          //
          tsJuridico.TabVisible := False;
    End;
end;

procedure TfrmCadCliente.DBEdit4Exit(Sender: TObject);
begin
    If (dsClientes.State in [dsInsert,dsEdit]) Then
       dmBD.tbClientesCLI_NRCGC.Value := dmBD.tbClientesCLI_CPFCGC.Value;
end;

procedure TfrmCadCliente.DBEdit27Exit(Sender: TObject);
begin
    If (dsClientes.State in [dsInsert,dsEdit]) Then
       dmBD.tbClientesCLI_CPFCGC.Value := dmBD.tbClientesCLI_NRCGC.Value;
end;

procedure TfrmCadCliente.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If (dsClientes.State in [dsInsert,dsEdit]) Then
     begin
         If Application.MessageBox('Salvar altera��es?',
                  'ATEN��O', MB_YESNO+MB_ICONQUESTION+MB_APPLMODAL) = idYes then
             dmBD.tbClientes.Post
         Else
             dmBD.tbClientes.Cancel;
     End;
end;

procedure TfrmCadCliente.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8] ) then
         key:=#0;
end;

end.
