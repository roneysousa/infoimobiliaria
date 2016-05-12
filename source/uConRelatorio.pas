unit uConRelatorio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, DB;

type
  TfrmConfRelatorio = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edtDTINIC: TMaskEdit;
    Label4: TLabel;
    edtDTFINA: TMaskEdit;
    cmbSaida: TComboBox;
    Button1: TButton;
    Button2: TButton;
    cmbINDICES: TComboBox;
    procedure edtDTINICKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfRelatorio: TfrmConfRelatorio;

implementation

uses uBD, uRelCorrInd, uNetImo;

{$R *.DFM}

procedure TfrmConfRelatorio.edtDTINICKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8] ) then
          key:=#0;
end;

procedure TfrmConfRelatorio.edtDTINICExit(Sender: TObject);
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

procedure TfrmConfRelatorio.edtDTFINAExit(Sender: TObject);
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

procedure TfrmConfRelatorio.Button2Click(Sender: TObject);
begin
     Close;
end;

procedure TfrmConfRelatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbIndices.Close;
     //
     Action:= caFree;
end;

procedure TfrmConfRelatorio.FormActivate(Sender: TObject);
begin
     If (dmBD.tbIndices.Active = False) Then
          dmBD.tbIndices.Open;
     //
     cmbINDICES.Items.Clear;
     cmbINDICES.Items.Add ('TODOS');
     //
     dmBD.tbIndices.First;
     While not (dmBD.tbIndices.Eof) do
     begin
          cmbINDICES.ItemS.Add(dmBD.tbIndicesIND_NMDESC.Value);
          dmBD.tbIndices.Next;
     End;
     //
     cmbINDICES.ItemIndex := 0;
     cmbSaida.ItemIndex := 0;
end;

procedure TfrmConfRelatorio.Button1Click(Sender: TObject);
Var
    M_CDINIC:String;
begin
      Try
          Application.CreateForm(TfrmRelCorrecaoIndices, frmRelCorrecaoIndices);{Carrega form na mem�ria}
          //
           With frmRelCorrecaoIndices Do
           begin
                   txtEmpresa.Caption := frmNetImo.NMEMPRE();
                   txtUsuario.Caption := uNetImo.M_NMUSUA;
                   txtNMRELA1.Caption  := txtNMRELA1.Caption+edtDTINIC.Text+' e '+edtDTFINA.Text ;
           End;
           //
           With frmRelCorrecaoIndices.qryCorrIndices do
           begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACCOR');
                   Sql.Add('WHERE COR_DTCORR >=:pInicial and COR_DTCORR<=:pFinal');
                   // Indice
                   If (cmbINDICES.Text <> 'TODOS') Then
                   begin
                        //                                                  loCaseInsensitive
                        If (dmBD.tbIndices.Locate('IND_NMDESC',cmbINDICES.Text,[])) tHEN
                             M_CDINIC := dmBD.tbIndicesIND_CDINDI.Value
                        Else
                             ShowMessage('N�o encontrado...');
                        //           COR_CDINDI
                        Sql.Add('And COR_CDINDI='+QuotedStr(M_CDINIC));
                   End;
                   //
                   ParamByName('pInicial').AsDateTime := StrToDate(edtDTINIC.Text);
                   ParamByName('pFinal').AsDateTime   := StrToDate(edtDTFINA.Text);
                   Prepare;
                   Open;
              End;
              //
              If (cmbSaida.Text = 'Video') Then
                    frmRelCorrecaoIndices.qrImovel.Preview
              Else
                    frmRelCorrecaoIndices.qrImovel.Print;
          Finally
              frmRelCorrecaoIndices.Free;     {Libera Mem�ria}
         End;
end;

end.

