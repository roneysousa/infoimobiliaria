unit uNetSobre1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls;

type
  TfrmNetSobre = class(TForm)
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
  procedure imgPaintCanvas(TheCanvas : TCanvas; TheString : String;
  TheFontSize, UCorner, LCorner : Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNetSobre: TfrmNetSobre;

implementation

Uses shellapi;

{$R *.DFM}

procedure TfrmNetSobre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmNetSobre.FormActivate(Sender: TObject);
begin
    Canvas.Brush.Color := clTeal;
    Canvas.Polygon([Point(10, 10), Point(30, 10),
        Point(130, 30), Point(240, 120)]);
    //
    imgPaintCanvas(frmNetSobre.Canvas, 'NetSoft', 50, 70,70);
end;

procedure TfrmNetSobre.imgPaintCanvas(TheCanvas: TCanvas;
  TheString: String; TheFontSize, UCorner, LCorner: Integer);
begin
TheCanvas.Brush.Style := bsClear;
  TheCanvas.Font.Style := [fsBold];
  TheCanvas.Font.Name := 'Arial Black';
  TheCanvas.Font.Size := TheFontSize;
  TheCanvas.Font.Color := clBlack;
  TheCanvas.TextOut(UCorner, LCorner, TheString);
  TheCanvas.Font.Color := clGray;
  TheCanvas.TextOut(UCorner - 1, LCorner - 1, TheString);
  TheCanvas.Font.Color := clSilver;
  TheCanvas.TextOut(UCorner - 2, LCorner - 2, TheString);
  TheCanvas.Font.Color := clRed;
  TheCanvas.TextOut(UCorner - 3, LCorner - 3, TheString);
end;

procedure TfrmNetSobre.Label5Click(Sender: TObject);
var
Mail : String;
begin
     Mail := 'mailto:sac@netsoft-pi.com.br';
     ShellExecute(GetDesktopWindow,'open',pchar(Mail),nil,nil,sw_ShowNormal);
end;

procedure TfrmNetSobre.Label4Click(Sender: TObject);
var
Mail : String;
begin
     Mail := 'mailto:sac@netsoft-pi.com.br';
     ShellExecute(GetDesktopWindow,'open',pchar(Mail),nil,nil,sw_ShowNormal);
end;

procedure TfrmNetSobre.FormShow(Sender: TObject);
begin
    Memo1.Font.Color:=0;
    timer1.enabled:=true;
end;

procedure TfrmNetSobre.Timer1Timer(Sender: TObject);
begin
 if Memo1.Font.Color<$FFFFFF-$101010 then
  Memo1.Font.Color:=Memo1.Font.Color+$101010
 else
  timer1.enabled:=false;
end;

end.
