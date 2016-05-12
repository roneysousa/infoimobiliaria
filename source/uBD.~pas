unit uBD;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables,DBIProcs;

type
  TdmBD = class(TDataModule)
    tbClientes: TTable;
    tbParametros: TTable;
    tbClientesCLI_CDCLIE: TStringField;
    tbClientesCLI_NMCLIE: TStringField;
    tbClientesCLI_DTATUA: TDateField;
    tbClientesCLI_DTNASC: TDateField;
    tbClientesCLI_ENCLIE: TStringField;
    tbClientesCLI_BAIRRO: TStringField;
    tbClientesCLI_NMCONJ: TStringField;
    tbClientesCLI_NRFONE: TStringField;
    tbClientesCLI_NUMFAX: TStringField;
    tbClientesCLI_CONT01: TStringField;
    tbClientesCLI_FONE01: TStringField;
    tbClientesCLI_CIDADE: TStringField;
    tbClientesCLI_CEPCLI: TStringField;
    tbClientesCLI_IDEINS: TStringField;
    tbClientesCLI_NRCGC: TStringField;
    tbClientesCLI_NRINS: TStringField;
    tbClientesCLI_OREMIS: TStringField;
    tbClientesCLI_UFEMIS: TStringField;
    tbClientesCLI_UFCLIE: TStringField;
    tbClientesCLI_NOMEMP: TStringField;
    tbFornecedores: TTable;
    tbTiposImovel: TTable;
    tbImoveis: TTable;
    BancoDados: TDatabase;
    Session1: TSession;
    tbFornecedoresFOR_CDFORN: TStringField;
    tbFornecedoresFOR_NMFORN: TStringField;
    tbFornecedoresFOR_RAFORN: TStringField;
    tbFornecedoresFOR_CGCFOR: TStringField;
    tbFornecedoresFOR_ENDERE: TStringField;
    tbFornecedoresFOR_BAIRRO: TStringField;
    tbFornecedoresFOR_NRFONE: TStringField;
    tbFornecedoresFOR_FAXFOR: TStringField;
    tbFornecedoresFOR_NRRAMA: TStringField;
    tbFornecedoresFOR_NRTELE: TStringField;
    tbFornecedoresFOR_CIDADE: TStringField;
    tbFornecedoresFOR_UFFORN: TStringField;
    tbFornecedoresFOR_CEPFOR: TStringField;
    tbFornecedoresFOR_INESTA: TStringField;
    tbImoveisIMO_TPIMOV: TStringField;
    tbImoveisIMO_ENDIMO: TStringField;
    tbImoveisIMO_CIDADE: TStringField;
    tbImoveisIMO_UFIMOV: TStringField;
    tbImoveisIMO_CEDPIMO: TStringField;
    tbImoveisIMO_NRQUAR: TSmallintField;
    tbImoveisIMO_NRBANH: TSmallintField;
    tbImoveisIMO_DTTERM: TDateField;
    tbImoveisIMO_FLGARA: TBooleanField;
    tbImoveisIMO_AREA: TFloatField;
    tbImoveisIMO_OBSERV: TMemoField;
    tbTiposImovelTPI_CDTIPO: TStringField;
    tbClientesCLI_NOMPAI: TStringField;
    tbClientesCLI_NOMMAE: TStringField;
    tbClientesCLI_NOMFUN: TStringField;
    tbClientesCLI_ENDEMP: TStringField;
    tbClientesCLI_BAIEMP: TStringField;
    tbClientesCLI_CIDEMP: TStringField;
    tbClientesCLI_UFEMPR: TStringField;
    tbClientesCLI_FONEMP: TStringField;
    tbClientesCLI_VLREND: TCurrencyField;
    tbClientesCLI_DTCADA: TDateField;
    tbParametrosPAR_NMEMPR: TStringField;
    tbParametrosPAR_ENEMPR: TStringField;
    tbParametrosPAR_BAEMPR: TStringField;
    tbParametrosPAR_CIEMPR: TStringField;
    tbParametrosPAR_CEPEMP: TStringField;
    tbParametrosPAR_UFEMPR: TStringField;
    tbParametrosPAR_CGCEMP: TStringField;
    tbParametrosPAR_INSEST: TStringField;
    tbParametrosPAR_NRFONE: TStringField;
    tbParametrosPAR_NUMFAX: TStringField;
    tbParametrosPAR_CDFORN: TFloatField;
    tbParametrosPAR_CDCLIE: TFloatField;
    tbParametrosPAR_NRSEQU: TFloatField;
    tbParametrosPAR_DTATUA: TDateField;
    tbClientesCLI_DTADMI: TDateField;
    tbClientesCLI_DTSAID: TDateField;
    tbClientesCLI_SEXO: TStringField;
    tbClientesCLI_TPPESS: TBooleanField;
    tbParametrosPAR_CDIMOV: TFloatField;
    tbContPagar: TTable;
    tbContReceber: TTable;
    tbContPagarPAG_NRCOMP: TStringField;
    tbContPagarPAG_CDLOJA: TStringField;
    tbContPagarPAG_NRPEDI: TStringField;
    tbContPagarPAG_NRPARC: TStringField;
    tbContPagarPAG_DTCOMP: TDateField;
    tbContPagarPAG_DTVENC: TDateField;
    tbContPagarPAG_DTPAGA: TDateField;
    tbContPagarPAG_CDFORN: TStringField;
    tbContPagarPAG_TMGARA: TStringField;
    tbContPagarPAG_NRNOTA: TStringField;
    tbContPagarPAG_NRSERI: TStringField;
    tbContPagarPAG_CDNATU: TStringField;
    tbContPagarPAG_NMDESC: TStringField;
    tbContPagarPAG_VLCOMP: TCurrencyField;
    tbContPagarPAG_VLPARC: TCurrencyField;
    tbContPagarPAG_VLJURO: TCurrencyField;
    tbContPagarPAG_VLDESC: TCurrencyField;
    tbContPagarPAG_VLDEAN: TCurrencyField;
    tbContPagarPAG_FLSITU: TStringField;
    tbContPagarPAG_CDUSUA: TStringField;
    tbContPagarPAG_CDPAGA: TStringField;
    tbContPagarPAG_CDBANC: TStringField;
    tbContPagarPAG_NRAGEN: TStringField;
    tbContPagarPAG_NRCONT: TStringField;
    tbContPagarPAG_NRCHEQ: TStringField;
    tbContReceberREC_NRSEQU: TStringField;
    tbContReceberREC_NRPARC: TStringField;
    tbContReceberREC_CDLOJA: TStringField;
    tbContReceberREC_CDUSUA: TStringField;
    tbContReceberREC_CDCLIE: TStringField;
    tbContReceberREC_DTCADA: TDateField;
    tbContReceberREC_DTVENC: TDateField;
    tbContReceberREC_DTRECE: TDateField;
    tbContReceberREC_HORECE: TStringField;
    tbContReceberREC_VLTOTA: TCurrencyField;
    tbContReceberREC_VLPARC: TCurrencyField;
    tbContReceberREC_VLDESC: TCurrencyField;
    tbContReceberREC_VLJURO: TCurrencyField;
    tbContReceberREC_VLPAGO: TCurrencyField;
    tbContReceberREC_CDMODA: TStringField;
    tbContReceberREC_VLMODA: TCurrencyField;
    tbContReceberREC_VLDEBI: TCurrencyField;
    tbContReceberREC_NRAUTE: TStringField;
    tbContReceberREC_FLCAIX: TStringField;
    tbContReceberREC_NRCONC: TStringField;
    tbContReceberREC_LJORIG: TStringField;
    tbEscritorio: TTable;
    tbEscritorioLOJ_CDLOJA: TStringField;
    tbEscritorioLOJ_NMLOJA: TStringField;
    tbEscritorioLOJ_NMRAZA: TStringField;
    tbEscritorioLOJ_CGCLOJ: TStringField;
    tbEscritorioLOJ_ENDERE: TStringField;
    tbEscritorioLOJ_BAIRRO: TStringField;
    tbEscritorioLOJ_CIDADE: TStringField;
    tbEscritorioLOJ_UFLOJA: TStringField;
    tbEscritorioLOJ_CEPLOJ: TStringField;
    tbEscritorioLOJ_NRFONE: TStringField;
    tbEscritorioLOJ_INESTA: TStringField;
    tbEscritorioLOJ_NRSEQU: TStringField;
    tbEscritorioLOJ_DTCAIX: TDateField;
    tbEscritorioLOJ_NRVEND: TStringField;
    tbEscritorioLOJ_CDCAIX: TStringField;
    tbParametrosPAR_CDPROD: TFloatField;
    tbParametrosPAR_CDPAGA: TSmallintField;
    tbParametrosPAR_CDCOMP: TStringField;
    tbParametrosPAR_NRCOMP: TFloatField;
    tbContPagarPAG_CDCOMP: TStringField;
    tbContPagarPAG_ANOTAC: TMemoField;
    tbContPagarPAG_NMFORN: TStringField;
    tbContPagarPAG_DIASAT: TIntegerField;
    tbBancos: TTable;
    tbBancosBAN_CDBANC: TStringField;
    tbContPagarPAG_FLPRED: TBooleanField;
    tbContPagarPAG_DTPRED: TDateField;
    tbCheques: TTable;
    tbChequesCHE_NRVEND: TStringField;
    tbChequesCHE_CDLOJA: TStringField;
    tbChequesCHE_CDRESP: TStringField;
    tbChequesCHE_CDBANC: TStringField;
    tbChequesCHE_NRAGEN: TStringField;
    tbChequesCHE_NRCONT: TStringField;
    tbChequesCHE_NRDOCU: TStringField;
    tbChequesCHE_VLDOCU: TCurrencyField;
    tbChequesCHE_VLDESC: TCurrencyField;
    tbChequesCHE_VLACRE: TCurrencyField;
    tbChequesCHE_VLJURO: TCurrencyField;
    tbChequesCHE_NMSACA: TStringField;
    tbChequesCHE_DTRECE: TDateField;
    tbChequesCHE_DTVENC: TDateField;
    tbChequesCHE_DTPAGA: TDateField;
    tbChequesCHE_QTDIAS: TSmallintField;
    tbChequesCHE_FLSITU: TStringField;
    tbChequesCHE_FLBLOQ: TStringField;
    tbChequesCHE_DTDEV1: TDateField;
    tbChequesCHE_CDDEV1: TStringField;
    tbChequesCHE_DTDEV2: TDateField;
    tbChequesCHE_CDDEV2: TStringField;
    tbChequesCHE_DTPROR: TDateField;
    tbChequesCHE_CDUSUA: TStringField;
    tbParametrosPAR_NRRECE: TFloatField;
    tbContReceberREC_FLRECE: TStringField;
    tbContReceberREC_NMDESC: TStringField;
    tbContReceberREC_NMCLIE: TStringField;
    tbContReceberREC_DIASAT: TIntegerField;
    tbContReceberREC_CDBANC: TStringField;
    tbContReceberREC_NRAGEN: TStringField;
    tbContReceberREC_NRCONT: TStringField;
    tbContReceberREC_NRCHEQ: TStringField;
    tbContReceberREC_FLPRED: TBooleanField;
    tbContReceberREC_DTPRED: TDateField;
    tbChequesCHE_CDCLIE: TStringField;
    tbCheqCli: TTable;
    tbCheqCliCLC_CDCLIE: TStringField;
    tbCheqCliCLC_NMCLIE: TStringField;
    tbCheqCliCLC_ENCLIE: TStringField;
    tbCheqCliCLC_BAIRRO: TStringField;
    tbCheqCliCLC_CIDADE: TStringField;
    tbCheqCliCLC_NRFONE: TStringField;
    tbCheqCliCLC_NRIDEN: TStringField;
    tbCheqCliCLC_OREMIS: TStringField;
    tbCheqCliCLC_UFEMIS: TStringField;
    tbCheqCliCLC_NRCPF: TStringField;
    tbCheqCliCLC_NRCGC: TStringField;
    tbCheqCliCLC_FLSITU: TStringField;
    tbCheqCliCLC_QTDEVO: TSmallintField;
    tbCheqCliCLC_CDBANC: TStringField;
    tbCheqCliCLC_NRAGEN: TStringField;
    tbCheqCliCLC_NRCONT: TStringField;
    tbCheqCliCLC_FLPREF: TStringField;
    tbImoveisIMO_NMTIPO: TStringField;
    tbBoletos: TTable;
    tbMovBoleto: TTable;
    tbMovBoletoBOM_NRFATU: TStringField;
    tbMovBoletoBOM_CDCLIEN: TStringField;
    tbMovBoletoBOM_DTREFE: TStringField;
    tbMovBoletoBOM_NMCRED: TStringField;
    tbMovBoletoBOM_NMPLAN: TStringField;
    tbMovBoletoBOM_VLPARC: TCurrencyField;
    tbMovBoletoBOM_TPMOVI: TStringField;
    tbBoletosBOL_NRFATU: TStringField;
    tbBoletosBOL_CDCLIE: TStringField;
    tbBoletosBOL_LOCPAG: TStringField;
    tbBoletosBOL_DTVENC: TDateField;
    tbBoletosBOL_NMCEDE: TStringField;
    tbBoletosBOL_DTDOCU: TDateField;
    tbBoletosBOL_NRDOCU: TStringField;
    tbBoletosBOL_ACEITE: TStringField;
    tbBoletosBOL_VLDOCU: TCurrencyField;
    tbBoletosBOL_NMSACA: TStringField;
    tbBoletosBOL_ENDERE: TStringField;
    tbBoletosBOL_CEPSAC: TStringField;
    tbBoletosBOL_BAIRRO: TStringField;
    tbBoletosBOL_CIDADE: TStringField;
    tbBoletosBOL_UFSACA: TStringField;
    tbBoletosBOL_NRCPF: TStringField;
    tbBoletosBOL_NRCGC: TStringField;
    tbBoletosBOL_TPPESS: TStringField;
    tbBoletosBOL_VLDESC: TCurrencyField;
    tbBoletosBOL_VLJURO: TCurrencyField;
    tbBoletosBOL_NRRECE: TStringField;
    tbParametrosPAR_NMCEDE: TStringField;
    tbParametrosPAR_CONTA: TStringField;
    tbParametrosPAR_NRAGEN: TStringField;
    tbParametrosPAR_LOCPAG: TStringField;
    tbParametrosPAR_NRDOCU: TFloatField;
    tbClientesCLI_CPFCGC: TStringField;
    tbClientesCLI_TPSITU: TStringField;
    tbClientesCLI_NMSITU: TStringField;
    tbImoveisIMO_BAIRRO: TStringField;
    tbImoveisIMO_FLIMOV: TStringField;
    tbContratos: TTable;
    tbEmpredim: TTable;
    tbIndices: TTable;
    tbContratosCTC_CDCONT: TStringField;
    tbContratosCTC_CDEMPR: TStringField;
    tbContratosCTC_CDIMOV: TStringField;
    tbContratosCTC_VLIMOV: TCurrencyField;
    tbContratosCTC_CDCLIEN: TStringField;
    tbContratosCTC_VLENTR: TCurrencyField;
    tbContratosCTC_DTENTR: TDateField;
    tbContratosCTC_QTBALO: TSmallintField;
    tbContratosCTC_QTPRES: TSmallintField;
    tbContratosCTC_DTPRES: TDateField;
    tbContratosCTC_DTCONT: TDateField;
    tbContratosCTC_DTENTG: TDateField;
    tbContratosCTC_CDUSUA: TStringField;
    tbEmpredimEMP_CDEMPR: TStringField;
    tbEmpredimEMP_NMEMPR: TStringField;
    tbEmpredimEMP_QTIMOV: TSmallintField;
    tbEmpredimEMP_LOCAL: TStringField;
    tbIndicesIND_CDINDI: TStringField;
    tbIndicesIND_NMDESC: TStringField;
    tbIndicesIND_VLPERC: TCurrencyField;
    tbIndicesIND_VLCORR: TCurrencyField;
    tbIndicesIND_JUACUM: TBooleanField;
    tbEmpredimEMP_QTATUL: TSmallintField;
    tbEmpredimEMP_QTREST: TSmallintField;
    tbParametrosPAR_CDCONT: TFloatField;
    tbParametrosPAR_CDEMPR: TFloatField;
    tbParametrosPAR_CDINDI: TFloatField;
    tbBaloes: TTable;
    tbBaloesBAL_CDSEQU: TFloatField;
    tbBaloesBAL_CDCONT: TStringField;
    tbBaloesBAL_CDCLIE: TStringField;
    tbBaloesBAL_VLBALA: TCurrencyField;
    tbBaloesBAL_DTCADA: TDateField;
    tbBaloesBAL_DTVENC: TDateField;
    tbContratosCTC_VLPRES: TCurrencyField;
    tbContratosCTC_CDINDI: TStringField;
    tbContratosCTC_INDENT: TStringField;
    tbContratosCTC_VLIMOV2: TCurrencyField;
    tbContratosCTC_NMEMPR: TStringField;
    tbBaloesBAL_NRBALA: TSmallintField;
    tbContratosCTC_TOBALO: TCurrencyField;
    tbParametrosPAR_CDBALA: TFloatField;
    tbImoveisIMO_CDEMPR: TStringField;
    tbImoveisIMO_CDIMOV: TStringField;
    tbBaloesBAL_DTPAGA: TDateField;
    tbBaloesBAL_FLSITU: TStringField;
    tbCorrecInd: TTable;
    tbCorrecIndCOR_NRCORR: TStringField;
    tbCorrecIndCOR_CDINDI: TStringField;
    tbCorrecIndCOR_VLPERC: TCurrencyField;
    tbCorrecIndCOR_VLCORR: TCurrencyField;
    tbCorrecIndCOR_DTCORR: TDateField;
    tbCorrecIndCOR_CDUSUA: TStringField;
    tbParametrosPAR_CDCORR: TFloatField;
    tbCorrecIndCOR_NMINDI: TStringField;
    tbPrestacoes: TTable;
    tbParametrosPAR_CDPRES: TFloatField;
    tbImoveisIMO_CDCLIE: TStringField;
    tbImoveisIMO_NMCLIE: TStringField;
    tbTiposImovelTPI_NMDESC: TStringField;
    tbImoveisIMO_NRIMOV: TStringField;
    tbClientesCLI_NMCONJUGUE: TStringField;
    tbClientesCLI_RGCONJ: TStringField;
    tbClientesCLI_CPFCON: TStringField;
    tbClientesCLI_OECONJ: TStringField;
    tbClientesCLI_EMAIL: TStringField;
    tbClientesCLI_NACION: TStringField;
    tbClientesCLI_NATURA: TStringField;
    tbClientesCLI_ESTCIV: TStringField;
    tbImoveisIMO_NMEMPR: TStringField;
    tbImoveisIMO_VLIMOV: TCurrencyField;
    tbContratosCTC_VLSALD: TCurrencyField;
    tbContratosCTC_FLADIT: TBooleanField;
    tbContReceberREC_CDEMPR: TStringField;
    tbCorrecIndCOR_VLJURO: TCurrencyField;
    tbCorrecIndCOR_PEJURO: TCurrencyField;
    tbIndicesIND_PECORR: TCurrencyField;
    tbIndicesIND_VLJURO: TCurrencyField;
    tbIndicesIND_PEJURO: TCurrencyField;
    tbIndicesIND_CDUSUA: TStringField;
    tbContratosCTC_DTVENC: TDateField;
    tbImoveisIMO_QTCOMO: TSmallintField;
    tbImoveisIMO_DTINIC: TDateField;
    tbImoveisIMO_QTMESE: TSmallintField;
    tbImoveisIMO_QTVAGA: TSmallintField;
    tbImoveisIMO_CDUSUA: TStringField;
    tbImoveisIMO_MEFRET: TFloatField;
    tbImoveisIMO_MEFUND: TFloatField;
    tbEmpredimEMP_AREMPE: TFloatField;
    tbEmpredimEMP_PEEMPR: TFloatField;
    tbEmpredimEMP_LINORT: TStringField;
    tbEmpredimEMP_LIMSUL: TStringField;
    tbEmpredimEMP_LILEST: TStringField;
    tbEmpredimEMP_LIOEST: TStringField;
    tbEmpredimEMP_CDUSUA: TStringField;
    tbContratosCTC_VLPAGA: TCurrencyField;
    tbContratosCTC_QTPAGA: TSmallintField;
    tbContratosCTC_QTPRAD: TSmallintField;
    tbContratosCTC_VLPRAD: TCurrencyField;
    tbContratosCTC_DTADIT: TDateField;
    tbContratosCTC_QTADPG: TSmallintField;
    tbContratosCTC_VLCHAV: TCurrencyField;
    tbContratosCTC_VLMULT: TCurrencyField;
    tbContratosCTC_JUROS: TCurrencyField;
    tbPrestacoesPRE_CDPRES: TStringField;
    tbPrestacoesPRE_CDCONT: TStringField;
    tbPrestacoesPRE_CDCLIE: TStringField;
    tbPrestacoesPRE_CDEMPR: TStringField;
    tbPrestacoesPRE_CDIMOV: TStringField;
    tbPrestacoesPRE_NRPRES: TStringField;
    tbPrestacoesPRE_CDINDI: TStringField;
    tbPrestacoesPRE_VLPRES: TCurrencyField;
    tbPrestacoesPRE_JUANTE: TCurrencyField;
    tbPrestacoesPRE_INDANT: TCurrencyField;
    tbPrestacoesPRE_VLANTE: TCurrencyField;
    tbPrestacoesPRE_PECORR: TCurrencyField;
    tbPrestacoesPRE_VLCORR: TCurrencyField;
    tbPrestacoesPRE_VLSUBT: TCurrencyField;
    tbPrestacoesPRE_PEJURO: TCurrencyField;
    tbPrestacoesPRE_VLJURO: TCurrencyField;
    tbPrestacoesPRE_FLJUAC: TBooleanField;
    tbPrestacoesPRE_VLJUAC: TCurrencyField;
    tbPrestacoesPRE_TOTAL: TCurrencyField;
    tbPrestacoesPRE_SALDDE: TCurrencyField;
    tbPrestacoesPRE_DTCADA: TDateField;
    tbPrestacoesPRE_DTVENC: TDateField;
    tbPrestacoesPRE_DTPAGA: TDateField;
    tbPrestacoesPRE_FLSITU: TStringField;
    tbPrestacoesPRE_OBSERV: TMemoField;
    tbPrestacoesPRE_FLADIT: TBooleanField;
    tbPrestacoesPRE_DTADIT: TDateField;
    tbPrestacoesPRE_PRADIT: TSmallintField;
    tbPrestacoesPRE_VLPRAD: TCurrencyField;
    tbPrestacoesPRE_DTVCAD: TDateField;
    tbPrestacoesPRE_CDUSUA: TStringField;
    tbPrestacoesPRE_USAREC: TStringField;
    tbPrestacoesPRE_NMCLIE: TStringField;
    tbPrestacoesPRE_NMINDI: TStringField;
    tbPrestacoesPRE_NMEMPR: TStringField;
    tbContReceberREC_CDCONT: TStringField;
    tbContReceberREC_CDPRES: TStringField;
    tbContReceberREC_NRRECE: TStringField;
    tbContratosCTC_INDATU: TStringField;
    tbContratosCTC_VLINDI: TCurrencyField;
    tbContratosCTC_VLIND2: TCurrencyField;
    tbPrestacoesPRE_VLIMOV: TCurrencyField;
    tbContratosCTC_FLACUM: TBooleanField;
    tbContratosCTC_FLACU2: TBooleanField;
    tbPrestacoesPRE_PREST: TSmallintField;
    tbContratosCTC_NMCLIE: TStringField;
    qryAtualizar: TQuery;
    qryAtualizarPRE_CDPRES: TStringField;
    qryAtualizarPRE_CDCONT: TStringField;
    qryAtualizarPRE_CDCLIE: TStringField;
    qryAtualizarPRE_CDEMPR: TStringField;
    qryAtualizarPRE_NRPRES: TStringField;
    qryAtualizarPRE_VLIMOV: TCurrencyField;
    qryAtualizarPRE_VLPRES: TCurrencyField;
    qryAtualizarPRE_VLANTE: TCurrencyField;
    qryAtualizarPRE_PECORR: TCurrencyField;
    qryAtualizarPRE_VLCORR: TCurrencyField;
    qryAtualizarPRE_VLSUBT: TCurrencyField;
    qryAtualizarPRE_PEJURO: TCurrencyField;
    qryAtualizarPRE_VLJURO: TCurrencyField;
    qryAtualizarPRE_FLJUAC: TBooleanField;
    qryAtualizarPRE_VLJUAC: TCurrencyField;
    qryAtualizarPRE_TOTAL: TCurrencyField;
    qryAtualizarPRE_FLSITU: TStringField;
    tbContratosCTC_ENDIMO: TStringField;
    tbContratosCTC_NRIMOV: TIntegerField;
    tbContratosCTC_BAIRRO: TStringField;
    tbSitImovel: TTable;
    tbSitImovelSIT_CDSITU: TStringField;
    tbSitImovelSIT_NMDESC: TStringField;
    tbSitImovelSIT_DTRESE: TDateField;
    tbParametrosPAR_CDBANC: TStringField;
    tbParametrosPAR_CDSTIM: TStringField;
    tbPrestacoesPRE_VLMULT: TCurrencyField;
    tbPrestacoesPRE_DIASAT: TFloatField;
    tbPrestacoesPRE_JURVCT: TFloatField;
    tbParametrosPAR_NRVEND: TFloatField;
    tbParametrosPAR_CDUSUA: TFloatField;
    tbPrestacoesPRE_TPPRES: TStringField;
    tbContratosCTC_DTPREE: TDateField;
    tbContratosCTC_DTMUIN: TDateField;
    tbUsuarios: TTable;
    tbUsuariosSEN_CDUSUA: TStringField;
    tbUsuariosSEN_NMUSUA: TStringField;
    tbUsuariosSEN_SNATUA: TStringField;
    tbUsuariosSEN_NMCARG: TStringField;
    tbUsuariosSEN_NMTERM: TStringField;
    tbCorrecIndCOR_MES: TStringField;
    tbHistorico: TTable;
    tbHistoricoHIS_CDHIST: TAutoIncField;
    tbHistoricoHIS_CDCLIE: TStringField;
    tbHistoricoHIS_CDCONT: TStringField;
    tbHistoricoHIS_CDRECE: TStringField;
    tbHistoricoHIS_TPPRES: TStringField;
    tbHistoricoHIS_NRPRES: TFloatField;
    tbHistoricoHIS_DTPAGA: TDateField;
    tbHistoricoHIS_HOPAGA: TTimeField;
    tbHistoricoHIS_VLPAGO: TCurrencyField;
    tbHistoricoHIS_VLREST: TCurrencyField;
    tbHistoricoHIS_CDMODA: TStringField;
    tbHistoricoHIS_CDUSUA: TStringField;
    tbContReceberREC_TPPRES: TStringField;
    tbContReceberREC_FLPARC: TBooleanField;
    tbContReceberREC_VLANTE: TCurrencyField;
    tbContPagarPAG_QTDIAS: TFloatField;
    tbContReceberREC_QTDIAS: TFloatField;
    tbPrestacoesPRE_VLSUBT_CALC: TCurrencyField;
    tbPrestacoesPRE_VLCORR_CALC: TCurrencyField;
    tbPrestacoesPRE_TOTAL_CALC: TCurrencyField;
    tbPrestacoesPRE_VLJURO_CALC: TCurrencyField;
    tbPrestacoesPRE_QTDIAS_CALC: TFloatField;
    tbPrestacoesPRE_FLATRA: TStringField;
    qryPrestacoes: TQuery;
    qryPrestacoesPRE_CDPRES: TStringField;
    qryPrestacoesPRE_CDCONT: TStringField;
    qryPrestacoesPRE_CDCLIE: TStringField;
    qryPrestacoesPRE_CDEMPR: TStringField;
    qryPrestacoesPRE_CDIMOV: TStringField;
    qryPrestacoesPRE_NRPRES: TStringField;
    qryPrestacoesPRE_PREST: TSmallintField;
    qryPrestacoesPRE_CDINDI: TStringField;
    qryPrestacoesPRE_VLIMOV: TCurrencyField;
    qryPrestacoesPRE_VLPRES: TCurrencyField;
    qryPrestacoesPRE_INDANT: TCurrencyField;
    qryPrestacoesPRE_VLANTE: TCurrencyField;
    qryPrestacoesPRE_PECORR: TCurrencyField;
    qryPrestacoesPRE_VLCORR: TCurrencyField;
    qryPrestacoesPRE_VLSUBT: TCurrencyField;
    qryPrestacoesPRE_PEJURO: TCurrencyField;
    qryPrestacoesPRE_VLJURO: TCurrencyField;
    qryPrestacoesPRE_JURVCT: TFloatField;
    qryPrestacoesPRE_FLJUAC: TBooleanField;
    qryPrestacoesPRE_VLJUAC: TCurrencyField;
    qryPrestacoesPRE_VLMULT: TCurrencyField;
    qryPrestacoesPRE_TOTAL: TCurrencyField;
    qryPrestacoesPRE_SALDDE: TCurrencyField;
    qryPrestacoesPRE_DTCADA: TDateField;
    qryPrestacoesPRE_DTVENC: TDateField;
    qryPrestacoesPRE_DTPAGA: TDateField;
    qryPrestacoesPRE_UTDTVE: TDateField;
    qryPrestacoesPRE_DIASAT: TFloatField;
    qryPrestacoesPRE_FLATRA: TStringField;
    qryPrestacoesPRE_FLSITU: TStringField;
    qryPrestacoesPRE_FLADIT: TBooleanField;
    qryPrestacoesPRE_DTADIT: TDateField;
    qryPrestacoesPRE_PRADIT: TSmallintField;
    qryPrestacoesPRE_VLPRAD: TCurrencyField;
    qryPrestacoesPRE_DTVCAD: TDateField;
    qryPrestacoesPRE_TPPRES: TStringField;
    qryPrestacoesPRE_DTATUA: TDateField;
    tbPrestacoesPRE_DTATUA: TDateField;
    qryPrestacoesPRE_NMINDI: TStringField;
    tbPrestacoesPRE_HORECE: TStringField;
    tbPrestacoesPRE_VLPAGO: TCurrencyField;
    tbPrestacoesPRE_CDMODA: TStringField;
    tbPrestacoesPRE_NRAGEN: TStringField;
    tbPrestacoesPRE_NRCHEQ: TStringField;
    tbPrestacoesPRE_FLPRED: TBooleanField;
    tbPrestacoesPRE_DTPRED: TDateField;
    tbPrestacoesPRE_FLPARC: TBooleanField;
    tbPrestacoesPRE_NMDESC: TStringField;
    tbPrestacoesPRE_CDBANC: TStringField;
    tbPrestacoesPRE_NRCONT: TStringField;
    qryPrestacoesPRE_VLSUBT_CALC: TFloatField;
    qryPrestacoesPRE_VLCORR_CALC: TFloatField;
    qryPrestacoesPRE_TOTAL_CALC: TFloatField;
    qryPrestacoesPRE_VLJURO_CALC: TFloatField;
    qryPrestacoesPRE_QTDIAS_CALC: TFloatField;
    tbContratosCTC_DTATUA: TDateField;
    tbBancosBAN_NMBANC: TStringField;
    tbClientesCLI_CDUSUA: TStringField;
    tbFornecedoresFOR_CDUSUA: TStringField;
    tbContratosCTC_QTBAPG: TSmallintField;
    tbChequesCHE_NMBANC: TStringField;
    tbContPagarPAG_FLEMPR: TBooleanField;
    tbContPagarPAG_CDEMPR: TStringField;
    tbParametrosPAR_IMAGEM: TGraphicField;
    tbPrestacoesPRE_DTBASE: TDateField;
    tbCorrecIndCOR_VLACUM: TFloatField;
    tbPrestacoesPRE_VLATUAL: TFloatField;
    tbPrestacoesPRE_VLACUM: TFloatField;
    tbPrestacoesPRE_FL60DIA: TBooleanField;
    tbPrestacoesPRE_FL30DIA: TStringField;
    tbPrestacoesPRE_FL60DIA2: TStringField;
    tbPrestacoesPRE_QTDIAS: TIntegerField;
    tbPrestacoesPRE_VLBASE_CALC: TFloatField;
    tbPrestacoesPRE_DIVENC: TFloatField;
    tbPrestacoesPRE_DTLIMI: TDateField;
    procedure tbParametrosAfterPost(DataSet: TDataSet);
    procedure tbClientesAfterPost(DataSet: TDataSet);
    procedure tbFornecedoresAfterPost(DataSet: TDataSet);
    procedure tbImoveisAfterPost(DataSet: TDataSet);
    procedure tbTiposImovelAfterPost(DataSet: TDataSet);
    procedure tbContPagarCalcFields(DataSet: TDataSet);
    procedure tbContPagarAfterPost(DataSet: TDataSet);
    procedure tbContReceberAfterPost(DataSet: TDataSet);
    procedure tbEscritorioAfterPost(DataSet: TDataSet);
    procedure tbBancosAfterPost(DataSet: TDataSet);
    procedure tbChequesAfterPost(DataSet: TDataSet);
    procedure tbContReceberCalcFields(DataSet: TDataSet);
    procedure tbCheqCliAfterPost(DataSet: TDataSet);
    procedure tbContratosAfterPost(DataSet: TDataSet);
    procedure tbEmpredimAfterPost(DataSet: TDataSet);
    procedure tbIndicesAfterPost(DataSet: TDataSet);
    procedure tbBaloesAfterPost(DataSet: TDataSet);
    procedure tbBaloesBeforePost(DataSet: TDataSet);
    procedure tbCorrecIndAfterPost(DataSet: TDataSet);
    procedure tbPrestacoesAfterPost(DataSet: TDataSet);
    procedure tbSitImovelAfterPost(DataSet: TDataSet);
    procedure tbHistoricoAfterPost(DataSet: TDataSet);
    procedure tbPrestacoesCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
      function ValidaCampo(Table: TTable; Campo, Text: String): Boolean;
    { Public declarations }
  end;

var
  dmBD: TdmBD;
  M_SALVAR : Boolean;

implementation

Uses uManuPretacoes,uFormReceber, fUNCOES;

{$R *.DFM}

function TdmBD.ValidaCampo(Table: TTable; Campo, Text: String): Boolean;
Var
  Tabela : TTable;
begin
  Tabela := TTable.Create(Application);
  Tabela.DatabaseName := Table.DatabaseName;
  Tabela.TableName := Table.TableName;
  Tabela.Open;
  If Not(Tabela.Locate(Campo,Text,[])) Then
  begin
      result := False;
      Tabela.Free;
  end
  Else
  Begin
      result := True;
      Tabela.Free;
  End;
end;

procedure TdmBD.tbParametrosAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbParametros.Handle);              //Evitando Perdas de Dados.
     tbParametros.FlushBuffers;
     tbParametros.Refresh;
end;

procedure TdmBD.tbClientesAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbClientes.Handle);              //Evitando Perdas de Dados.
     tbClientes.FlushBuffers;
     tbClientes.Refresh;
end;

procedure TdmBD.tbFornecedoresAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbFornecedores.Handle);              //Evitando Perdas de Dados.
     tbFornecedores.FlushBuffers;
     tbFornecedores.Refresh;
end;

procedure TdmBD.tbImoveisAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbImoveis.Handle);              //Evitando Perdas de Dados.
     tbImoveis.FlushBuffers;
     tbImoveis.Refresh;
end;

procedure TdmBD.tbTiposImovelAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbTiposImovel.Handle);              //Evitando Perdas de Dados.
     tbTiposImovel.FlushBuffers;
     tbTiposImovel.Refresh;
end;

procedure TdmBD.tbContPagarCalcFields(DataSet: TDataSet);
begin
     tbContPagarPAG_DIASAT.Value := StrtoInt(FloattoStr(Date-tbContPagarPAG_DTVENC.Value)); 
end;

procedure TdmBD.tbContPagarAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbContPagar.Handle);              //Evitando Perdas de Dados.
     tbContPagar.FlushBuffers;
     tbContPagar.Refresh;
end;

procedure TdmBD.tbContReceberAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbContReceber.Handle);              //Evitando Perdas de Dados.
     tbContReceber.FlushBuffers;
     tbContReceber.Refresh;
end;

procedure TdmBD.tbEscritorioAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbEscritorio.Handle);              //Evitando Perdas de Dados.
     tbEscritorio.FlushBuffers;
     tbEscritorio.Refresh;
end;

procedure TdmBD.tbBancosAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbBancos.Handle);              //Evitando Perdas de Dados.
     tbBancos.FlushBuffers;
     tbBancos.Refresh;
end;

procedure TdmBD.tbChequesAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbCheques.Handle);              //Evitando Perdas de Dados.
     tbCheques.FlushBuffers;
     tbCheques.Refresh;
end;

procedure TdmBD.tbContReceberCalcFields(DataSet: TDataSet);
begin
     tbContReceberREC_DIASAT.Value := StrtoInt(FloattoStr(Date-tbContReceberREC_DTVENC.Value));
end;

procedure TdmBD.tbCheqCliAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbCheqCli.Handle);              //Evitando Perdas de Dados.
     tbCheqCli.FlushBuffers;
     tbCheqCli.Refresh;
end;

procedure TdmBD.tbContratosAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbContratos.Handle);              //Evitando Perdas de Dados.
     tbContratos.FlushBuffers;
     tbContratos.Refresh;
end;

procedure TdmBD.tbEmpredimAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbEmpredim.Handle);              //Evitando Perdas de Dados.
     tbEmpredim.FlushBuffers;
     tbEmpredim.Refresh;
end;

procedure TdmBD.tbIndicesAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbIndices.Handle);              //Evitando Perdas de Dados.
     tbIndices.FlushBuffers;
     tbIndices.Refresh;
end;

procedure TdmBD.tbBaloesAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbBaloes.Handle);              //Evitando Perdas de Dados.
     tbBaloes.FlushBuffers;
     tbBaloes.Refresh;
end;

procedure TdmBD.tbBaloesBeforePost(DataSet: TDataSet);
begin
//     If not M_Salvar then tbBaloes.Cancel;
end;

procedure TdmBD.tbCorrecIndAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbCorrecInd.Handle);              //Evitando Perdas de Dados.
     tbCorrecInd.FlushBuffers;
     tbCorrecInd.Refresh;
end;

procedure TdmBD.tbPrestacoesAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbPrestacoes.Handle);              //Evitando Perdas de Dados.
     tbPrestacoes.FlushBuffers;
     tbPrestacoes.Refresh;
end;

procedure TdmBD.tbSitImovelAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbSitImovel.Handle);              //Evitando Perdas de Dados.
     tbSitImovel.FlushBuffers;
     tbSitImovel.Refresh;
end;

procedure TdmBD.tbHistoricoAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbHistorico.Handle);              //Evitando Perdas de Dados.
     tbHistorico.FlushBuffers;
     tbHistorico.Refresh;
end;

procedure TdmBD.tbPrestacoesCalcFields(DataSet: TDataSet);
Var
   M_QTDIAS: Double;
begin
      // Quant. de dias da prestação
      tbPrestacoesPRE_QTDIAS_CALC.Value := Date()-tbPrestacoesPRE_DTVENC.Value;
      // Quant. de dias da data base
      tbPrestacoesPRE_QTDIAS.Value := StrtoInt(FloattoStr(Date()-tbPrestacoesPRE_DTBASE.Value));
      //
      If (dmBD.tbPrestacoesPRE_DTCADA.Value < Date()) Then
      begin
           If (dmBD.tbPrestacoesPRE_DTVENC.Value>= Date()) Then
           begin
               If (tbPrestacoesPRE_QTDIAS.Value = 0)
                 or (tbPrestacoesPRE_QTDIAS.Value > 30) Then
               begin
                    dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
                    dmBD.tbPrestacoesPRE_VLCORR_CALC.Value := dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                    dmBD.tbPrestacoesPRE_TOTAL_CALC.Value  := dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value,dmBD.tbPrestacoesPRE_PEJURO.Value);
                    dmBD.tbPrestacoesPRE_VLJURO_CALC.Value := dmBD.tbPrestacoesPRE_TOTAL_CALC.Value-dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value;
               End;
               //
               If (tbPrestacoesPRE_QTDIAS.Value > 0)
                 And (tbPrestacoesPRE_QTDIAS.Value <= 30) Then
               begin
                    dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,(dmBD.tbPrestacoesPRE_PECORR.Value/30*tbPrestacoesPRE_QTDIAS.Value));
                    //dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value := dmBD.tbPrestacoesPRE_VLPRES.Value+dmBD.tbPrestacoesPRE_VLACUM.Value;
                    dmBD.tbPrestacoesPRE_VLCORR_CALC.Value := dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                    //
                    dmBD.tbPrestacoesPRE_TOTAL_CALC.Value  := tbPrestacoesPRE_VLSUBT_CALC.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value,(dmBD.tbPrestacoesPRE_PEJURO.Value/30*tbPrestacoesPRE_QTDIAS.Value));
                    dmBD.tbPrestacoesPRE_VLJURO_CALC.Value := dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value*(dmBD.tbPrestacoesPRE_PEJURO.Value/100);
              End;
           End
           Else
           //
           If (dmBD.tbPrestacoesPRE_DTVENC.Value < Date()) Then
           begin
                {If (dmBD.tbPrestacoesPRE_QTDIAS_CALC.Value>0)
                   and (dmBD.tbPrestacoesPRE_QTDIAS_CALC.Value<=30) Then}
                If (dmBD.tbPrestacoesPRE_FLATRA.Value = 'S') Then
                Begin
                   If (tbPrestacoesPRE_QTDIAS_CALC.Value<=30) Then
                   begin
                     dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                     dmBD.tbPrestacoesPRE_VLCORR_CALC.Value := dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                     //
                     dmBD.tbPrestacoesPRE_TOTAL_CALC.Value  := tbPrestacoesPRE_VLSUBT_CALC.Value+Funcoes.Gerapercentual(tbPrestacoesPRE_VLSUBT_CALC.Value,(dmBD.tbPrestacoesPRE_JURVCT.Value/30*tbPrestacoesPRE_QTDIAS_CALC.Value));
                     dmBD.tbPrestacoesPRE_VLJURO_CALC.Value := dmBD.tbPrestacoesPRE_TOTAL_CALC.Value-dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value;
                  End
                  Else
                  begin
                     dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                     dmBD.tbPrestacoesPRE_VLCORR_CALC.Value := dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                     //
                     dmBD.tbPrestacoesPRE_TOTAL_CALC.Value  := tbPrestacoesPRE_VLSUBT_CALC.Value+Funcoes.Gerapercentual(tbPrestacoesPRE_VLSUBT_CALC.Value,(dmBD.tbPrestacoesPRE_JURVCT.Value/30*30));
                     dmBD.tbPrestacoesPRE_VLJURO_CALC.Value := dmBD.tbPrestacoesPRE_TOTAL_CALC.Value-dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value;
                  End
               End;
               //
               {If (dmBD.tbPrestacoesPRE_QTDIAS_CALC.Value>30)
                   and (dmBD.tbPrestacoesPRE_QTDIAS_CALC.Value<=60) Then}
               If (dmBD.tbPrestacoesPRE_FL30DIA.Value = 'S') Then
               Begin
                    dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,(dmBD.tbPrestacoesPRE_PECORR.Value/30*tbPrestacoesPRE_QTDIAS.Value));
                    //dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value := dmBD.tbPrestacoesPRE_VLPRES.Value+dmBD.tbPrestacoesPRE_VLACUM.Value;
                    dmBD.tbPrestacoesPRE_VLCORR_CALC.Value := dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                    //
                    dmBD.tbPrestacoesPRE_TOTAL_CALC.Value  := tbPrestacoesPRE_VLSUBT_CALC.Value+Funcoes.Gerapercentual(tbPrestacoesPRE_VLSUBT_CALC.Value,dmBD.tbPrestacoesPRE_PEJURO.Value/30*tbPrestacoesPRE_QTDIAS.Value);
                    dmBD.tbPrestacoesPRE_VLJURO_CALC.Value := dmBD.tbPrestacoesPRE_TOTAL_CALC.Value-dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value;
               End;
           End;
      End
      Else
      begin
           // Sub-Total
           dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
           // Valor de correção
           dmBD.tbPrestacoesPRE_VLCORR_CALC.Value := dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
           // TOTAL
           dmBD.tbPrestacoesPRE_TOTAL_CALC.Value  := dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value;
           // Valor de juros
           dmBD.tbPrestacoesPRE_VLJURO_CALC.Value := dmBD.tbPrestacoesPRE_VLSUBT_CALC.Value*(dmBD.tbPrestacoesPRE_PEJURO.Value/100);
      End;
end;

procedure TdmBD.DataModuleCreate(Sender: TObject);
begin
        { se o alias não existir... }
        If not Session.IsAlias('NETIMO') then
        begin
             { Adiciona o alias }
             Session.AddStandardAlias('NETIMO', ExtractFilePath( Application.ExeName )+'Dados', 'PARADOX');
             { Salva o arquivo de configuração do BDE }
             Session.SaveConfigFile;
        end;
end;

end.
