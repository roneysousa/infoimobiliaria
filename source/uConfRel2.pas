unit uConfRel2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, Mask, Db;

type
  TfrmConfRel2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbcmbNMEMPR: TDBLookupComboBox;
    edtDTINIC: TMaskEdit;
    edtDTFINA: TMaskEdit;
    cmbSituacao: TDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cmbSaida: TComboBox;
    btGerar: TButton;
    Button2: TButton;
    dsReceber: TDataSource;
    dsEmpreend: TDataSource;
    procedure edtDTINICKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure btGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfRel2: TfrmConfRel2;

implementation

Uses uBD, uRelContReceber, uNetImo, Funcoes;

{$R *.DFM}

procedure TfrmConfRel2.edtDTINICKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8] ) then
          key:=#0;
End;

procedure TfrmConfRel2.Button2Click(Sender: TObject);
begin
    Close;
end;

procedure TfrmConfRel2.FormActivate(Sender: TObject);
begin
     If not (dmBD.tbEmpredim.Active) Then
          dmBD.tbEmpredim.Open;
     If not (dmBD.tbPrestacoes.Active) Then
         dmBD.tbPrestacoes.Open;
     //
    cmbSituacao.ItemIndex := 0;
    cmbSaida.ItemIndex := 0;
end;

procedure TfrmConfRel2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbEmpredim.Close;
     dmBD.tbPrestacoes.Close;
     //
     Action := caFree;
end;

procedure TfrmConfRel2.edtDTINICExit(Sender: TObject);
begin
     Try
          StrToDate(edtDTINIC.Text);
     Except
          on EConvertError do
          begin
               Application.MessageBox('A data digitada não é válida.',
                                      'Data Inválida', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               edtDTINIC.SetFocus;
          End;
     End;
end;

procedure TfrmConfRel2.edtDTFINAExit(Sender: TObject);
begin
     Try
          StrToDate(edtDTFINA.Text);
     Except
          on EConvertError do
          begin
               Application.MessageBox('A data digitada não é válida.',
                                      'Data Inválida', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               edtDTFINA.SetFocus;
          End;
     End;
     //
     If (StrtoDate(edtDTFINA.text)<StrtoDate(edtDTINIC.Text)) Then
     begin
          Application.MessageBox('Data final menor que a inícial!',
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
          edtDTFINA.SetFocus;
          Exit;
     End;
end;

procedure TfrmConfRel2.btGerarClick(Sender: TObject);
Var
   M_CDEMPR:String;
begin
      //
      If funcoes.Empty(dbcmbNMEMPR.Text) then
      begin
           dbcmbNMEMPR.SetFocus;
           Exit;
      End;
      //
      If funcoes.Empty(cmbSituacao.Text) then
      begin
           cmbSituacao.SetFocus;
           Exit;
      End;
      //
      M_CDEMPR := dmBD.tbPrestacoesPRE_CDEMPR.Value;
      //
      Try
          Application.CreateForm(TfrmRelContReceber, frmRelContReceber);{Carrega form na memória}
          //
           With frmRelContReceber Do
           begin
                   txtEmpresa.Caption := frmNetImo.NMEMPRE();
                   txtUsuario.Caption := uNetImo.M_NMUSUA;
                   txtNMRELA.Caption  := txtNMRELA.Caption+' - Empreendimento: '+dbcmbNMEMPR.Text + ' - Situação - '+cmbSituacao.Text;
           End;
           //
           With frmRelContReceber.qryReceber do
           begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACPRE');
                   Sql.Add('WHERE PRE_DTVENC >=:pInicial and PRE_DTVENC<=:pFinal');
                   // Empreendimento
                   Sql.Add('And PRE_CDEMPR='+QuotedStr(M_CDEMPR));
                   // Situação da Conta
                   If (cmbSituacao.Text <> 'TODAS') Then
                   begin
                         If (cmbSituacao.Text = 'ABERTAS') Then
                             Sql.Add('And PRE_FLSITU='+QuotedStr('A'));
                         //
                         If (cmbSituacao.Text = 'PAGAS') Then
                             Sql.Add('And PRE_FLSITU='+QuotedStr('P'));
                   End;
                   //
                   ParamByName('pInicial').AsDateTime := StrToDate(edtDTINIC.Text);
                   ParamByName('pFinal').AsDateTime   := StrToDate(edtDTFINA.Text);
                   Prepare;
                   Open;
              End;
              //
              If (cmbSaida.Text = 'Video') Then
                    frmRelContReceber.qrContReceber.Preview
              Else
                    frmRelContReceber.qrContReceber.Print;
          Finally
              frmRelContReceber.Free;     {Libera Memória}
         End;
end;

end.
