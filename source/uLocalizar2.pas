unit uLocalizar2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, Grids, DBGrids;

type
  TfrmPesRapida1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    btFechar: TBitBtn;
    Label1: TLabel;
    dbGridPesq: TDBGrid;
    edtTEXTO: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbGridPesqDblClick(Sender: TObject);
    procedure dbGridPesqKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridPesqKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbGridPesqCellClick(Column: TColumn);
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
     Procedure ListaDados;
    { Public declarations }
  end;

var
  frmPesRapida1: TfrmPesRapida1;
  M_CDBENEF,M_NMPROC : String;
  M_LETRAS:String;

implementation

uses uBD;

{$R *.DFM}

procedure TfrmPesRapida1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TfrmPesRapida1.dbGridPesqDblClick(Sender: TObject);
begin
     // Imovel
     If (frmPesRapida1.Caption = 'Imovel') Then
     begin
          dmBD.tbImoveis.Edit;
          dmBD.tbContratosCTC_CDIMOV.Value := dmBD.tbImoveisIMO_CDIMOV.Value;
          dmBD.tbContratosCTC_VLIMOV.Value := dmBD.tbImoveisIMO_VLIMOV.Value;
          dmBD.tbImoveis.Cancel;
     End;
     // Cliente
     If (frmPesRapida1.Caption = 'Cliente') Then
     begin
          dmBD.tbClientes.Edit;
          dmBD.tbContratosCTC_CDCLIEN.Value := dmBD.tbClientesCLI_CDCLIE.Value;
          dmBD.tbContratosCTC_NMCLIE.Value  := dmBD.tbClientesCLI_NMCLIE.Value;
          dmBD.tbClientes.Cancel;
     End;
     //
     Close;
   {  // LOJA - Estoque
     If (frmPesRapida.Caption = 'Estoque : Loja') Then
     begin
          dmDados.tbLoja.Edit;
          dmDados.tbEstoqueEST_CDLOJA.Value := dmDados.tbLojaLOJ_CDLOJA.Value;
          dmDados.tbLoja.Cancel;
     End;
     // CLIENTE
     If(frmPesRapida.Caption = 'Cliente') tHEN
     begin
          dmDados.tbContClien.Edit;
          dmDados.tbMovimentoMOV_CDCLIE.Value := dmDados.tbContClienCTC_CDCLIE.Value;
          dmDados.tbMovimentoMOV_NMCLIE.Value := dmdados.tbContClienCTC_NMCLIE.Value;
          dmDados.tbContClien.Cancel;
     End;
     // Veiculo
     If (frmPesRapida.Caption = 'Veículo') Then
     begin
          dmDados.tbVeiculo.Edit;
          dmDados.tbMovimentoMOV_NRPLAC.Value  := dmDados.tbVeiculoUNI_NRPLAC.Value;
          dmDados.tbMovimentoMOV_ASSINAT.Value := dmDados.tbVeiculoUNI_NMRESP.Value; 
          dmDados.tbVeiculo.Cancel;
     End;
     // COMPRA
     If (frmPesRapida.Caption = 'Compra') then
     begin
          CODIGO := dmDados.tbContPagarPAG_NRCOMP.Value;
          dmDados.tbContPagar.Locate('PAG_NRCOMP',CODIGO,[]);
     End;
     // fornecedor
     If (frmPesRapida.Caption = 'Fornecedor') Then
     begin
          dmDados.tbFornecedor.Edit;
          dmDados.tbContPagarPAG_CDFORN.Value := dmDados.tbFornecedorFOR_CDFORN.Value;
          dmDados.tbFornecedor.Cancel;
     End;
     //  fornecedor
     If (frmPesRapida.Caption = 'Fornecedor:') Then
     begin
          dmDados.tbFornecedor.Edit;
          dmDados.tbProdutoPRO_CDFORN.Value := dmDados.tbFornecedorFOR_CDFORN.Value;
          dmDados.tbFornecedor.Cancel;
     End;
     //  fornecedor - Para consulta de conta a pagar
     If (frmPesRapida.Caption = 'Código: Fornecedor') Then
     begin
          dmDados.tbFornecedor.Edit;
          dmDados.tbContPagarPAG_CDFORN.Value := dmDados.tbFornecedorFOR_CDFORN.Value;
          dmDados.tbFornecedor.Cancel;
     End;
     //  fornecedor - Estoque
     If (frmPesRapida.Caption = 'Estoque : Fornecedor') Then
     begin
          dmDados.tbFornecedor.Edit;
          dmDados.tbEstoqueEST_CDFORN.Value := dmDados.tbFornecedorFOR_CDFORN.Value;
          dmDados.tbFornecedor.Cancel;
     End;
     //
     If (frmPesRapida.Caption = 'Cheque - Banco') Then
     begin
          dmDados.tbBancos.Edit;
          dmDados.tbChequesCHE_CDBANC.Value := dmDados.tbbancosBan_CDBANC.Value;
          dmDados.tbBancos.Cancel;
     End;
     // LOJA - cheque
     If (frmPesRapida.Caption = 'Cheque - Loja') Then
     begin
          dmDados.tbLoja.Edit;
          dmDados.tbChequesCHE_CDLOJA.Value := dmDados.tbLojaLOJ_CDLOJA.Value;
          dmDados.tbLoja.Cancel;
     End;
     // Cheque - cliente
     If (frmPesRapida.Caption = 'Cheque - Cliente') Then
     begin
          dmDados.tbClientes.Edit;
          dmDados.tbChequesCHE_CDCLIE.Value := dmDados.tbClientesCLI_CDCLIE.Value;
          dmDados.tbClientes.Cancel;
     End;
     // Cliente/Respo
     If (frmPesRapida.Caption = 'Cliente/Responsável') Then
     begin
          dmDados.tbCheqCli.Edit;
          dmDados.tbChequesCHE_CDRESP.Value := dmDados.tbCheqCliCLC_CDCLIE.Value;
          dmDados.tbCheqCli.Cancel;
     End;
     //
     If (frmPesRapida.Caption = 'Contrato - Cliente') Then
     begin
          dmDados.tbClientes.Edit;
          dmDados.tbContClienCTC_CDCLIE.Value := dmDados.tbClientesCLI_CDCLIE.Value;
          dmdados.tbContClienCTC_NMCLIE.Value := dmdados.tbClientesCLI_NMCLIE.Value;
          dmDados.tbContClienCTC_ENDCLI.Value := dmdados.tbClientesCLI_ENCLIE.Value;
          dmDados.tbContClienCTC_BAIRRO.Value := dmDados.tbClientesCLI_BAIRRO.Value;
          dmDados.tbContClienCTC_FONE.Value   := dmDados.tbClientesCLI_NRFONE.Value;
          dmDados.tbContClienCTC_CIDADE.Value := dmDados.tbClientesCLI_CIDADE.Value;
          dmDados.tbContClienCTC_CEPCLI.Value := dmDados.tbClientesCLI_CEPCLI.Value;
          dmDados.tbContClienCTC_CPFCGC.Value := dmDados.tbClientesCLI_CPFCGC.Value;
          dmDados.tbContClienCTC_IDECLI.Value := dmDados.tbClientesCLI_IDEINS.Value;
          dmDados.tbClientes.Cancel;
     End;
     //
     If (frmPesRapida.Caption = 'Veículo') Then
     Begin
          dmdados.tbVeiculo.edit;
          dmDados.tbMovimentoMOV_NRPLAC.Value :=  dmDados.tbVeiculoUNI_NRPLAC.Value;
          dmdados.tbVeiculo.Cancel;
     End;
     //  Baixa - fornecedor
     If (frmPesRapida.Caption = 'Baixa - Fornecedor') Then
     begin
          dmDados.tbFornecedor.Edit;
          dmDados.tbContPagarPAG_CDFORN.Value := dmDados.tbFornecedorFOR_CDFORN.Value;
          dmDados.tbFornecedor.Cancel;
     End;
     //
     If (frmPesRapida.Caption = 'Código:Fornecedor') Then
     begin
          dmDados.tbFornecedor.Edit;
          dmDados.qryContPagarPAG_CDFORN.Value := dmDados.tbFornecedorFOR_CDFORN.Value;
          dmDados.tbFornecedor.Cancel;
     End;
     //  Faturamento
     If (frmPesRapida.Caption = 'Faturamento - Cliente') Then
     begin
          dmDados.tbClientes.Edit;
          dmDados.tbFaturarFAT_CDCLIE.Value := dmDados.tbClientesCLI_CDCLIE.Value;
          dmdados.tbFaturarFAT_NMCLIE.Value := dmDados.tbClientesCLI_NMCLIE.Value;
          dmDados.tbClientes.Cancel;
     End;
     // Manutenção : Produto
     If (frmPesRapida.Caption = 'Manutenção : Produto') Then
     begin
         dmDados.tbEstoque.edit;
         dmdados.tbItensManuITM_CDPROD.Value := dmDados.tbEstoqueEST_CDPROD.Value;
         dmdados.tbItensManuITM_PREINT.Value := dmdados.tbEstoqueEST_VLSAID.Value;
         dmDados.tbEstoque.Cancel;
     End;
     // Estoque - Produto
     If (frmPesRapida.Caption = 'Estoque : Produto') Then
     begin
         //dmDados.tbproduto.edit;
         {codigo := dmDados.tbProdutoPRO_CDPROD.Value;
         If not (dmdados.tbEstoque.Locate('EST_CDPROD',codigo,[])) Then
         begin
              dmDados.tbEstoqueEST_CDPROD.Value := dmDados.tbProdutoPRO_CDPROD.Value;
              dmDados.tbEstoqueEST_NMPROD.Value := dmDados.tbProdutoPRO_NMPROD.Value;
              dmDados.tbEstoqueEST_VLSAID.Value := dmDados.tbProdutoPRO_VLCUST.Value;
         {End
         Else
             Application.MessageBox('Material já cadastrado no estoque.',
                   'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
             dmDados.tbproduto.Cancel;
     End;
     //
     frmPesRapida.Close;              }
end;

procedure TfrmPesRapida1.ListaDados;
Var
   M_NRCOMP:String;
   M_QTPARC: Integer;
   M_TOCOMP: Double;
begin
    //
{    dmDados.tbContPagar.Edit;
    M_NRCOMP := dmDados.tbContPagarPAG_NRCOMP.Value;
    dmDados.tbContPagar.Cancel;
    // Limpa tabela Temp
    dmdados.tbTemp.EmptyTable;
    dmDados.tbContPagar.Filter   := 'PAG_NRCOMP = '+QuotedStr(M_NRCOMP);
    dmDados.tbContPagar.Filtered := True;
    dmDados.tbContPagar.First;
    While Not(dmDados.tbContPagar.Eof) Do
    Begin
              dmdados.tbContPagar.edit;
              M_QTPARC := M_QTPARC+1;
              M_TOCOMP := M_TOCOMP + dmdados.tbContPagarPAG_VLCOMP.Value;
              //
              dmdados.tbTemp.Append;
              dmDados.tbTempTEM_DATA01.Value := DatetoStr(dmdados.tbContPagarPAG_DTVENC.Value);
              dmdados.tbTempTEM_VALO01.Value := dmDados.tbContPagarPAG_VLPARC.Value;
              dmDados.tbTempTEM_QUAN01.Value := StrtoInt(dmDados.tbContPagarPAG_NRPARC.Value);
              dmdados.tbTempTEM_SITU01.Value := dmDados.tbContPagarPAG_FLSITU.Value;
              dmdados.tbTempTEM_VALO02.Value := dmDados.tbContPagarPAG_VLDESC.Value;
              dmdados.tbTemp.Post;
         // próximo registro
         dmDados.tbContPagar.Next;
    End;
    //
    uContaPag.M_NRQUAN := M_QTPARC;
    dmDados.tbContPagar.Locate('PAG_NRCOMP',M_NRCOMP,[]);}
end;


procedure TfrmPesRapida1.dbGridPesqKeyPress(Sender: TObject; var Key: Char);
begin
     // Imovel
     If (frmPesRapida1.Caption = 'Imovel') Then
     begin
//        M_LETRAS := M_LETRAS+uppercase(key); // acumula as letras digitadas
//        dmBD.tbImoveis.LOCATE('IMO_NMLOJA',M_LETRAS,[loPartialKey]); // Efetua a procura
     End;
     // Cliente
     If (frmPesRapida1.Caption = 'Cliente') Then
     begin
        M_LETRAS := M_LETRAS+uppercase(key); // acumula as letras digitadas
        dmBD.tbClientes.LOCATE('CLI_NMCLIE',M_LETRAS,[loPartialKey]); // Efetua a procura
     End;
     //
     edtTEXTO.Text := M_LETRAS;
     // LOJA
{     If (frmPesRapida.Caption = 'Loja') Then
     begin
          M_LETRAS := M_LETRAS+uppercase(key); // acumula as letras digitadas
          dmDados.tbLoja.LOCATE('LOJ_NMLOJA',M_LETRAS,[loPartialKey]); // Efetua a procura
     End;
     // LOJA 2
     If (frmPesRapida.Caption = 'Loja:') Then
     begin
          M_LETRAS := M_LETRAS+uppercase(key); // acumula as letras digitadas
          dmDados.tbLoja.LOCATE('LOJ_NMLOJA',M_LETRAS,[loPartialKey]); // Efetua a procura
     End;
     // LOJA - Estoque
     //
     edtTEXTO.Text := M_LETRAS;}
end;

procedure TfrmPesRapida1.dbGridPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF (KEY=38) or (key=40) then // avalio se é seta para cima ou para baixo;
     Begin
          M_LETRAS      :='';
          edtTEXTO.Text := M_LETRAS;
     End;
end;

procedure TfrmPesRapida1.dbGridPesqCellClick(Column: TColumn);
begin
     M_LETRAS := '';
     edtTEXTO.Text := M_LETRAS;     
end;

procedure TfrmPesRapida1.btFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmPesRapida1.FormActivate(Sender: TObject);
begin
     dbGridPesq.SetFocus;
     M_LETRAS := '';
     edtTEXTO.Text := M_LETRAS;
end;

end.
