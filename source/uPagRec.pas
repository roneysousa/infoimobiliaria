unit uPagRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask;

type
  TfrmConfrontoPAGREC = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtDTINIC: TMaskEdit;
    edtDTFINA: TMaskEdit;
    cmbSaida: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDTINICKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfrontoPAGREC: TfrmConfrontoPAGREC;

implementation

{$R *.DFM}

procedure TfrmConfrontoPAGREC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      Action := caFree;
end;

procedure TfrmConfrontoPAGREC.edtDTINICKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8] ) then
          key:=#0;
end;

procedure TfrmConfrontoPAGREC.edtDTINICExit(Sender: TObject);
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

procedure TfrmConfrontoPAGREC.edtDTFINAExit(Sender: TObject);
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

procedure TfrmConfrontoPAGREC.Button2Click(Sender: TObject);
begin
      Close;
end;

procedure TfrmConfrontoPAGREC.FormActivate(Sender: TObject);
begin
      cmbSaida.ItemIndex := 0;
end;

end.
