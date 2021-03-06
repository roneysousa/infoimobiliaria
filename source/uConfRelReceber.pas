unit uConfRelReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask;

type
  TfrmConfRelReceber = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cmbFLSITU: TComboBox;
    edtDTFINA: TMaskEdit;
    edtDTINIC: TMaskEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    cmbSaida: TComboBox;
    btGerar: TButton;
    btFechar: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btGerarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfRelReceber: TfrmConfRelReceber;

implementation

uses uRelContReceber, uNetImo;

//uses uRelContPagar, uNetImo, uBD;

{$R *.DFM}

procedure TfrmConfRelReceber.FormActivate(Sender: TObject);
begin
     cmbFLSITU.ItemIndex := 0;
     cmbSaida.ItemIndex  := 0;
end;

procedure TfrmConfRelReceber.btGerarClick(Sender: TObject);
begin
          Application.CreateForm(TfrmRelContReceber, frmRelContReceber);{Carrega form na mem�ria}
          Try
              //
              With frmRelContReceber Do
              begin
                   txtEmpresa.Caption := frmNetImo.NMEMPRE();
                   txtUsuario.Caption := uNetImo.M_NMUSUA;
              End;
              //
              With frmRelContReceber.qryReceber do
              begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACPRE');
                   Sql.Add('WHERE PRE_DTVENC >=:pInicial and PRE_DTVENC<=:pFinal');
                   ParamByName('pInicial').AsDateTime := StrToDate(edtDTINIC.Text);
                   ParamByName('pFinal').AsDateTime   := StrToDate(edtDTFINA.Text);
                   // Situa��o da Conta
                   If (cmbFLSITU.Text <> 'TODAS') Then
                   begin
                         If (cmbFLSITU.Text = 'Abertas') Then
                             Sql.Add('And PRE_FLSITU='+QuotedStr('A'));
                         //
                         If (cmbFLSITU.Text = 'Atrasadas') Then
                         Begin
                              Sql.Add('And PRE_DTVENC<:pDTATUAL And PRE_FLSITU='+QuotedStr('A'));
                              ParamByName('pDTATUAL').AsDateTime := Date();
                         End;
                         //
                         If (cmbFLSITU.Text = 'Recebidas') Then
                             Sql.Add('And PRE_FLSITU='+QuotedStr('P'));
                   End;
                   //
                   Prepare;
                   Open;
              End;
              //
              If (cmbSaida.Text = 'Video') Then
                    frmRelContReceber.qrContReceber.Preview
              Else
                    frmRelContReceber.qrContReceber.Print;
          Finally
              frmRelContReceber.Free;     {Libera Mem�ria}
         End;
end;

procedure TfrmConfRelReceber.btFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmConfRelReceber.edtDTINICExit(Sender: TObject);
begin
     Try
          StrToDate(edtDTINIC.Text);
     Except
          on EConvertError do
          begin
               Application.MessageBox('A data digitada n�o � v�lida.',
                                      'Data Inv�lida', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               edtDTINIC.SetFocus;
          End;
     End;
end;

procedure TfrmConfRelReceber.edtDTFINAExit(Sender: TObject);
begin
     Try
          StrToDate(edtDTFINA.Text);
     Except
          on EConvertError do
          begin
               Application.MessageBox('A data digitada n�o � v�lida.',
                                      'Data Inv�lida', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               edtDTFINA.SetFocus;
          End;
     End;
     //
     If (StrtoDate(edtDTFINA.text)<StrtoDate(edtDTINIC.Text)) Then
     begin
          Application.MessageBox('Data final menor que a in�cial!',
                      'ATEN��O', MB_OK+MB_ICONINFORMATION);
          edtDTFINA.SetFocus;
          Exit;
     End;
end;

end.
