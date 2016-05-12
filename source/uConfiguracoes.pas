unit uConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, ToolWin, Db, StdCtrls, Mask, DBCtrls, 
  ExtDlgs;

type
  TfrmConfiguracoes = class(TForm)
    ToolBar1: TToolBar;
    btGravar: TToolButton;
    btCancela: TToolButton;
    btFechar: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsParamentros: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBText1: TDBText;
    cmbUF: TDBComboBox;
    Label11: TLabel;
    DBImage1: TDBImage;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure dsParamentrosStateChange(Sender: TObject);
    procedure ebtAbrirClick(Sender: TObject);
    procedure btCancelaClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracoes: TfrmConfiguracoes;

implementation

uses uBD;

{$R *.DFM}

procedure TfrmConfiguracoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmBD.tbParametros.Close;
     Action := caFree;
end;

procedure TfrmConfiguracoes.FormActivate(Sender: TObject);
begin
      If (dmBD.tbParametros.Active = False) then
         dmBD.tbParametros.Open;
end;

procedure TfrmConfiguracoes.btFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmConfiguracoes.dsParamentrosStateChange(Sender: TObject);
begin
      btGravar.Enabled  := dsParamentros.State in [dsEdit];
      btCancela.Enabled := dsParamentros.State in [dsEdit];
end;

procedure TfrmConfiguracoes.ebtAbrirClick(Sender: TObject);
var
   BMP: TBitMap;
begin
     If not (dsParamentros.State in [dsEdit]) Then
            dmBD.tbParametros.Edit;
     //       
     BMP := TBitMap.Create;
     If OpenPictureDialog1.Execute then
     begin
          If dsParamentros.State in [dsEdit] then
          begin
               BMP.LoadFromFile(OpenPictureDialog1.FileName);
               dmBD.tbParametrosPAR_IMAGEM.Assign(BMP);
          end;
     end;
end;

procedure TfrmConfiguracoes.btCancelaClick(Sender: TObject);
begin
    dmBD.tbParametros.Cancel;
end;

procedure TfrmConfiguracoes.btGravarClick(Sender: TObject);
begin
     dmBD.tbParametros.post;
end;

end.
