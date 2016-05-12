program NetImo;

uses
  Forms,
  uNetImo in 'uNetImo.pas' {frmNetImo},
  uBD in 'uBD.pas' {dmBD: TDataModule},
  uCadClientes2 in 'uCadClientes2.pas' {frmCadCliente},
  Funcoes in 'Funcoes.pas',
  uCadMoveis in 'uCadMoveis.pas' {frmCadImovel},
  uCadForn in 'uCadForn.pas' {frmCadForn},
  uCadReceber in 'uCadReceber.pas' {frmContReceber},
  uPagamContas in 'uPagamContas.pas' {frmPagamContas},
  uDescJuros in 'uDescJuros.pas' {frmDescJuros},
  uFormPagam in 'uFormPagam.pas' {frmFormaPagamento},
  uCadConPagar in 'uCadConPagar.pas' {frmContPagar},
  uCadReceber2 in 'uCadReceber2.pas' {frmCadContReceber},
  uRecebimento in 'uRecebimento.pas' {frmRecebimentos},
  uFormReceber in 'uFormReceber.pas' {frmFormReceb},
  uContasBol in 'uContasBol.pas' {frmContBol},
  BoletoPersonalizado1 in 'BoletoPersonalizado1.pas' {repBoletoPersonalizado: TQuickRep},
  uRelClientes in 'uRelClientes.pas' {frmRelClientes},
  uConfRelCli in 'uConfRelCli.pas' {frmConfRelCli},
  uRelForn in 'uRelForn.pas' {frmRelForn},
  uRelImovel in 'uRelImovel.pas' {frmRelImovel},
  uConfRelImov in 'uConfRelImov.pas' {frmConfRelImovel},
  uConfRelPagar in 'uConfRelPagar.pas' {frmConfPagar},
  uRelContPagar in 'uRelContPagar.pas' {frmRelContPagar},
  uRelContReceber in 'uRelContReceber.pas' {frmRelContReceber},
  uCadEmpred in 'uCadEmpred.pas' {frmCadEmpred},
  uContrato in 'uContrato.pas' {frmContrato},
  uCadBaloes in 'uCadBaloes.pas' {frmBaloes},
  uCadIndices in 'uCadIndices.pas' {frmCadIndices},
  uCorrecoesInd in 'uCorrecoesInd.pas' {frmCorrecoes},
  uManuPretacoes in 'uManuPretacoes.pas' {frmManuPrestacoes},
  uConfRelReceber in 'uConfRelReceber.pas' {frmConfRelReceber},
  uConfImoClie in 'uConfImoClie.pas' {frmConfImoClie},
  uRelImoCli in 'uRelImoCli.pas' {frmRelImoClie},
  uConfRel2 in 'uConfRel2.pas' {frmConfRel2},
  uPagRec in 'uPagRec.pas' {frmConfrontoPAGREC},
  uRelPagRec in 'uRelPagRec.pas' {frmRelPagRec},
  uConRelatorio in 'uConRelatorio.pas' {frmConfRelatorio},
  uRelCorrInd in 'uRelCorrInd.pas' {frmRelCorrecaoIndices},
  uSelCliente in 'uSelCliente.pas' {frmSeleCliente},
  uAditivo in 'uAditivo.pas' {frmAditivo},
  uPequisa1 in 'uPequisa1.pas' {frmLocalizar},
  uLocalizar2 in 'uLocalizar2.pas' {frmPesRapida1},
  uRelProCompra2 in 'uRelProCompra2.pas' {frmProCompra2},
  uSeleImovel in 'uSeleImovel.pas' {frmSeleImovel},
  uCadTpImoveis in 'uCadTpImoveis.pas' {frmTipoImoveis},
  uConfiguracoes in 'uConfiguracoes.pas' {frmConfiguracoes},
  uCadSitImovel in 'uCadSitImovel.pas' {frmSitImovel},
  uBoleto in 'uBoleto.pas' {frmBoletos},
  uEntImovel in 'uEntImovel.pas' {frmEntImovel},
  uNetSobre1 in 'uNetSobre1.pas' {frmNetSobre},
  uUsuarios2 in 'uUsuarios2.pas' {frmCadUsuarios},
  uConsulta in 'uConsulta.pas' {frmConsulta},
  uCadBancos in 'uCadBancos.pas' {frmCadBancos},
  uNetLogon in 'uNetLogon.pas' {frmLogon},
  uBaixaCheque in 'uBaixaCheque.pas' {frmCheques},
  uRelBoletos in 'uRelBoletos.pas' {frmNewBoleto};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TdmBD, dmBD);
  Application.CreateForm(TfrmNetImo, frmNetImo);
  Application.CreateForm(TfrmNewBoleto, frmNewBoleto);
  Application.Run;
end.
