unit uConfRelPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, Db, DBCtrls;

type
  TfrmConfPagar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtDTINIC: TMaskEdit;
    edtDTFINA: TMaskEdit;
    dsFornecedor: TDataSource;
    cmbFLSITU: TComboBox;
    Label4: TLabel;
    cmbSaida: TComboBox;
    btGerar: TButton;
    btFechar: TButton;
    cmbForn: TComboBox;
    procedure edtDTINICKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFecharClick(Sender: TObject);
    procedure btGerarClick(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfPagar: TfrmConfPagar;

implementation

uses uBD, uNetImo, uRelContPagar;

{$R *.DFM}

procedure TfrmConfPagar.edtDTINICKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8] ) then
          key:=#0;
end;

procedure TfrmConfPagar.FormActivate(Sender: TObject);
begin
     //
     cmbFLSITU.ItemIndex := 0;
     cmbSaida.ItemIndex  := 0;
     cmbForn.ItemIndex   := 0;
end;

procedure TfrmConfPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      cmbForn.Items.Clear; 
      dmBD.tbFornecedores.Close;
      //
      Action := caFree;
end;

procedure TfrmConfPagar.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmConfPagar.btGerarClick(Sender: TObject);
Var
    M_CDFORN:String;
begin
          Application.CreateForm(TfrmRelContPagar, frmRelContPagar);{Carrega form na memória}
          Try
              //
              With frmRelContPagar Do
              begin
                   txtEmpresa.Caption := frmNetImo.NMEMPRE();
                   txtUsuario.Caption := uNetImo.M_NMUSUA;
              End;
              //
              With frmRelContPagar.qryPagar do
              begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACPAG');
                   Sql.Add('WHERE PAG_DTVENC >=:pInicial and PAG_DTVENC<=:pFinal');
                   ParamByName('pInicial').AsDateTime := StrToDate(edtDTINIC.Text);
                   ParamByName('pFinal').AsDateTime   := StrToDate(edtDTFINA.Text);
                   // fornecedor
                   If (cmbForn.Text<>'TODOS') Then
                   begin
                        dmBD.tbFornecedores.Locate('FOR_NMFORN',cmbForn.Text,[]);
                        M_CDFORN := dmBD.tbFornecedoresFOR_CDFORN.Value;
                        //
                        Sql.Add('And PAG_CDFORN='+QuotedStr(M_CDFORN));
                   End;
                   // Situação da Conta
                   If (cmbFLSITU.Text <> 'TODAS') Then
                   begin
                         If (cmbFLSITU.Text = 'Abertas') Then
                         begin
                             Sql.Add('And PAG_FLSITU='+QuotedStr('A'));
                             frmRelContPagar.txtNMRELA.Caption :=
                                 frmRelContPagar.txtNMRELA.Caption + ' - ABERTAS';
                         End;
                         //
                         If (cmbFLSITU.Text = 'Atrasadas') Then
                         Begin
                              Sql.Add('And PAG_FLSITU="A" And PAG_DTVENC<:pDTATUAL');
                              ParamByName('pDTATUAL').AsDateTime := Date();
                              frmRelContPagar.txtNMRELA.Caption :=
                                 frmRelContPagar.txtNMRELA.Caption + ' - ATRASADAS';
                         End;
                         //
                         If (cmbFLSITU.Text = 'Pagas') Then
                         BEGIN
                             Sql.Add('And PAG_FLSITU='+QuotedStr('P'));
                              frmRelContPagar.txtNMRELA.Caption :=
                                 frmRelContPagar.txtNMRELA.Caption + ' - PAGAS';
                         End;
                   End;
                   //
            {       If (cmbOrdem.Text = 'Codigo') Then
                       Sql.Add('ORDER BY CLI_CDCLIE')
                   Else
                       Sql.Add('ORDER BY CLI_NMCLIE');}
                   //
                   Prepare;
                   Open;
              End;
              //
              frmRelContPagar.txtNMRELA.Caption :=
                frmRelContPagar.txtNMRELA.Caption + ' - entre: '+edtDTINIC.Text + ' à '+ edtDTFINA.Text;
              //
              If (cmbSaida.Text = 'Video') Then
                    frmRelContPagar.qrContPagar.Preview
              Else
                    frmRelContPagar.qrContPagar.Print;
          Finally
              frmRelContPagar.Free;     {Libera Memória}
         End;
end;

procedure TfrmConfPagar.edtDTINICExit(Sender: TObject);
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

procedure TfrmConfPagar.edtDTFINAExit(Sender: TObject);
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

procedure TfrmConfPagar.FormCreate(Sender: TObject);
begin
     If (dmBD.tbFornecedores.Active = False) Then
         dmBD.tbFornecedores.Open;
     //
     dmBD.tbFornecedores.First;
     While not (dmBD.tbFornecedores.Eof) Do
     Begin
         cmbForn.Items.Add(dmBD.tbFornecedoresFOR_NMFORN.Value); 
         dmBD.tbFornecedores.Next;
     End;
end;

end.
