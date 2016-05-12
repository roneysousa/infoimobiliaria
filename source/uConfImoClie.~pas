unit uConfImoClie;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, Mask, DBCtrls, StdCtrls;


type
  TfrmConfImoClie = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Clientes: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dsImovel: TDataSource;
    cmbSaida: TComboBox;
    btGerar: TButton;
    btFechar: TButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfImoClie: TfrmConfImoClie;

implementation

uses uBD, uRelImoCli, uNetImo;

{$R *.DFM}

procedure TfrmConfImoClie.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmConfImoClie.FormActivate(Sender: TObject);
begin
      If (dmBD.tbClientes.Active = False) Then
          dmBD.tbClientes.Open;
      If (dmBD.tbImoveis.Active = False) Then
          dmBD.tbImoveis.Open;
      //
      cmbSaida.ItemIndex := 0;
end;

procedure TfrmConfImoClie.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbClientes.Close;
     dmBD.tbImoveis.Close;
     //
     Action:= caFree;
end;

procedure TfrmConfImoClie.btGerarClick(Sender: TObject);
Var
    M_CDCLIE:String;
begin
     {dmBD.tbClientes.Edit;
     M_CDCLIE := dmBD.tbClientesCLI_CDCLIE.Value;
     dmBD.tbClientes.Cancel;}
     dmBD.tbImoveis.Edit;
     M_CDCLIE := dmBD.tbImoveisIMO_CDCLIE.Value;
     dmBD.tbImoveis.Cancel;
     //
     Application.CreateForm(TfrmRelImoClie,frmRelImoClie);{Carrega form na memória}
          Try
              //
              With frmRelImoClie Do
              begin
                   txtEmpresa.Caption := frmNetImo.NMEMPRE();
                   txtUsuario.Caption := uNetImo.M_NMUSUA;
              End;
              //
              With frmRelImoClie.qryImoCli do
              begin
                   Close;
                   Sql.Clear;
                   Sql.Add('Select * from SACIMO Where IMO_CDCLIE='+QuotedStr(M_CDCLIE));
                   Prepare;
                   Open;
              End;
              //
              If (cmbSaida.Text = 'Video') Then
                    frmRelImoClie.qrImoCli.Preview
              Else
                    frmRelImoClie.qrImoCli.Print;
          Finally
              frmRelImoClie.Free;     {Libera Memória}
         End;
end;

end.
