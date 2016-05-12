unit Funcoes;

interface

uses
Windows, Dialogs, Messages, SysUtils, Classes, Controls,
StdCtrls, Mask,Db, DBTables,DBIProcs,uNetImo,uBD, Variants,
WinProcs, ExtCtrls,uSelCliente;


// Funcões e procedures para o sistema.

Function StrZero(Zeros:string;Quant:integer):String;
Procedure Limpar_Status;
function Empty(inString:String): Boolean;
Function Codifica( const Str1: string): String;
Function SysComputerName: string;
Function ContaCaracs(Edit:String): integer;
Function Replicate( Caracter:String; Quant:Integer ): String;
Function Localizar_NMLOJA(nLOJA:String):String;
function Localizar_NMVEICULO(nPlaca:String):String;
function Localizar_NMFORN(cdFORN:String):String;
function Localizar_NMCLIE(cdCLIE:String):String;
Procedure FECHAR_TABELAS;
function Justifica(mCad:string;mMAx:integer):string;
function StrToPChar(const Str: string): PChar;
function StrIsTime(const S: string): boolean;
function extenso (valor: real): string;
Function DataExtenso2(Data:TDateTime): String;
Function Caixa_Aberto(nCDUSUA:String): Boolean;
Function SubData(DataEmprestimo: TDateTime) : Integer;
Function ArredontaFloat(x : Real): Real;
Function OnLine(Porta:Word):Boolean;
Function AnoBiSexto(Ayear: Integer): Boolean;
Function DiasPorMes(Ayear, AMonth: Integer): Integer;
Function Gerapercentual(valor:real;Percent:Real):real;
Procedure ATUALIZAR;
Procedure ATUALIZACAO_DIARIA;
Procedure AUTO_ATUALIZACAO;
Procedure TESTA_VENCIDAS;
Procedure ATUALIZAR_CLIENTE_ATUAL;
Procedure PRESTACAO;
Procedure BALOES;
Procedure ENTRADA;
Procedure CHAVE;
Procedure UPDATE;
Procedure EntreDatas(DataFinal,DataInicial : TDate ; var Anos,Meses,Dias : Integer) ;

implementation

function StrZero(Zeros:string;Quant:integer):String;
{Insere Zeros à frente de uma string}
var
I,Tamanho:integer;
aux: string;
begin
  aux := zeros;
  Tamanho := length(ZEROS);
  ZEROS:='';
  for I:=1 to quant-tamanho do
  ZEROS:=ZEROS + '0';
  aux := zeros + aux;
  StrZero := aux;
end;

Procedure Limpar_Status;
begin
     frmNetImo.barStatus.Panels[2].Text := ' ';
     frmNetImo.barStatus.Panels[3].Text := '';
end;

function Empty(inString:String): Boolean;
{Testa se a variavel está vazia ou não}
Var
  index : Byte;
Begin
  index := 1;
  Empty := True;
  while (index <= Length(inString))and (index <> 0) do
  begin
  if inString[index] = ' ' Then
  begin
inc(index)
  end
  else
Begin
  Empty := False;
  index := 0
end;
  end;
end;

Function Codifica( const Str1: string): String;
{Encripta uma string}
var
Mascara,Str2: String;
PonM, PonS: Byte;
begin
Mascara := '#$%$'#13#12;
Str2 := '';
PonM := 1;
for PonS:=1 to length(Str1) do
  begin
  AppendStr( Str2, Chr( Ord(Str1[PonS]) Xor Ord(Mascara[PonM])));
  Inc( PonM);
  if PonM>Length(Mascara) then
  begin
  PonM:=1;
  end;
  Result := Str2;
  end;
end;

{ Sys }
function SysComputerName: string;
var
  I: DWord;
begin
  I := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(Result, I);
  Windows.GetComputerName(PChar(Result), I);
  Result := string(PChar(Result));
end;

Function ContaCaracs(Edit: String): integer;
{Retorna quantos caracteres tem um Edit especificado}
begin
     Result := Length(Edit);
end;

function Replicate(Caracter: String; Quant: Integer): String;
{Repete o mesmo caractere várias vezes}
var I : Integer;
begin
Result := '';
  for I := 1 to Quant do
  Result := Result + Caracter;
end;

function Localizar_NMLOJA(nLOJA: String): String;
begin
{     If (dmBD.tbLOJA.Locate('LOJ_CDLOJA',nLoja,[])) Then
           Result := dmDados.tbLojaLOJ_NMLOJA.Value;}
end;

Function Localizar_NMVEICULO(nPlaca:String):String;
begin
{     If (dmDados.tbVeiculo.Locate('UNI_NRPLAC',nPlaca,[])) Then
           Result := dmDados.tbVeiculoUNI_MODELO.Value;}
end;

Function Localizar_NMFORN(cdFORN:String):String;
begin
{     If (dmDados.tbFornecedor.Locate('FOR_CDFORN',cdFORN,[])) Then
           Result := dmDados.tbFornecedorFOR_NMFORN.Value;}
end;

function Localizar_NMCLIE(cdCLIE:String):String;
begin
{     If (dmDados.tbClientes.Locate('CLI_CDCLIE',cdCLIE,[])) Then
           Result := dmDados.tbClientesCLI_NMCLIE.Value;}
end;

Procedure FECHAR_TABELAS;
var
i: integer;
begin
with uBD.dmBD.Session1 do
for i:= 0 to DatabaseCount - 1 do
Databases[I].Close;
End;

function Justifica(mCad:string;mMAx:integer):string;
//  Justificar Texto
var
mPos,mPont,mTam,mNr,mCont:integer;
mStr:string;
begin
     mTam:=Length(mCad);
     If mTam>=mMax then
          Result:=copy(mCad,1,mMax)
     else
          mStr:='';
     mCont:=0;
     mPont:=1;
     mNr:=mMax-mTam;
     While mCont<mNr do
     begin
          mPos:=pos(mStr,copy(mCad,mPont,100));
          if mPos=0 then
          begin
               mStr:=mStr+' ';
               mPont:=1;
               continue;
          end
          else
          begin
               mCont:=mCont+1;
               Insert(' ',mCad,mPos+mPont);
               mPont:=mPont+mPos+length(mStr);
          end;
          Result:=mCad;
     end;
end;

Function StrToPChar(const Str: string): PChar;
{Converte String em Pchar}
type
  TRingIndex = 0..7;
var
  Ring: array[TRingIndex] of PChar;
  RingIndex: TRingIndex;
  Ptr: PChar;
begin
  Ptr := @Str[Length(Str)];
  Inc(Ptr);
  if Ptr^ = #0 then
  begin
  Result := @Str[1];
  end
  else
  begin
  Result := StrAlloc(Length(Str)+1);
  RingIndex := (RingIndex + 1) mod (High(TRingIndex) + 1);
  StrPCopy(Result,Str);
  StrDispose(Ring[RingIndex]);
  Ring[RingIndex]:= Result;
  end;
end;

function StrIsTime(const S: string): boolean;
begin
  try
  StrToTime(S);
  Result := true;
  except
  Result := false;
  end;
end;

Function extenso (valor: real): string;
// Gera número por extenso
var
Centavos, Centena, Milhar, Milhao, Texto, msg: string;
const
Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco', 'Seis', 'Sete', 'Oito', 'Nove');
Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta', 'Noventa');
Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos', 'Quatrocentos', 'Quinhentos', 'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');
function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
begin
if Expressao
then Result:=CasoVerdadeiro
else Result:=CasoFalso;
end;

function MiniExtenso (trio: string): string;
var
Unidade, Dezena, Centena: string;
begin
Unidade:='';
Dezena:='';
Centena:='';
if (trio[2]='1') and (trio[3]<>'0') then
  begin
  Unidade:=Dez[strtoint(trio[3])];
  Dezena:='';
end
else
 begin
  if trio[2]<>'0' then Dezena:=Dezenas[strtoint(trio[2])];
  if trio[3]<>'0' then Unidade:=Unidades[strtoint(trio[3])];
 end;
if (trio[1]='1') and (Unidade='') and (Dezena='')
 then Centena:='cem'
else
 if trio[1]<>'0'
  then Centena:=Centenas[strtoint(trio[1])]
  else Centena:='';
 Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')
  + Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;
end;
begin
if (valor>999999.99) or (valor<0) then
 begin
  msg:='O valor está fora do intervalo permitido.';
  msg:=msg+'O número deve ser maior ou igual a zero e menor que 999.999,99.';
  msg:=msg+' Se não for corrigido o número não será escrito por extenso.';
  showmessage(msg);
  Result:='';
  exit;
 end;
if valor=0 then
 begin
  Result:='';
  Exit;
 end;
Texto:=formatfloat('000000.00',valor);
Milhar:=MiniExtenso(Copy(Texto,1,3));
Centena:=MiniExtenso(Copy(Texto,4,3));
Centavos:=MiniExtenso('0'+Copy(Texto,8,2));
Result:=Milhar;
if Milhar<>'' then
  if copy(texto,4,3)='000' then
  Result:=Result+' Mil Reais'
  else
  Result:=Result+' Mil, ';
if (((copy(texto,4,2)='00') and (Milhar<>'')
  and (copy(texto,6,1)<>'0')) or (centavos=''))
  and (Centena<>'') then Result:=Result+' e ';
if (Milhar+Centena <>'') then Result:=Result+Centena;
if (Milhar='') and (copy(texto,4,3)='001') then
  Result:=Result+' Real'
 else
  if (copy(texto,4,3)<>'000') then Result:=Result+' Reais';
if Centavos='' then
 begin
  Result:=Result+'.';
  Exit;
 end
else
 begin
  if Milhar+Centena='' then
  Result:=Centavos
  else
  Result:=Result+', e '+Centavos;
if (copy(texto,8,2)='01') and (Centavos<>'') then
  Result:=Result+' Centavo.'
 else
  Result:=Result+' Centavos.';
end;
end;

Function DataExtenso2(Data:TDateTime): String;
{Retorna uma data por extenso}
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String;
  Meses : array [1..12] of String;
  Dia, Mes, Ano : Word;
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'domingo';
  DiaDasemana [2]:= 'segunda-feira';
  DiaDasemana [3]:= 'terça-feira';
  DiaDasemana [4]:= 'quarta-feira';
  DiaDasemana [5]:= 'quinta-feira';
  DiaDasemana [6]:= 'sexta-feira';
  DiaDasemana [7]:= 'sábado';
{ Meses do ano }
  Meses [1] := 'janeiro';
  Meses [2] := 'fevereiro';
  Meses [3] := 'março';
  Meses [4] := 'abril';
  Meses [5] := 'maio';
  Meses [6] := 'junho';
  Meses [7] := 'julho';
  Meses [8] := 'agosto';
  Meses [9] := 'setembro';
  Meses [10]:= 'outubro';
  Meses [11]:= 'novembro';
  Meses [12]:= 'dezembro';
  DecodeDate (Data, Ano, Mes, Dia);
  NoDia := DayOfWeek (Data);
  Result := DiaDaSemana[NoDia] + ', ' +
  IntToStr(Dia) + ' de ' + Meses[Mes]+ ' de ' + IntToStr(Ano);
end;

Function Caixa_Aberto(nCDUSUA:String): Boolean;
Begin
{    dmdados.tbUsuarios.Open;
    dmdados.tbUsuarios.IndexFieldNames := 'SEN_CDUSUA';
    dmDados.tbUsuarios.FindKey([nCDUSUA]);
    //
    dmDados.tbUsuarios.Edit;
    // Se estiver aberto
    If (dmDados.tbUsuariosSEN_FLCAIX.Value = 'S') Then
        result := True
    else  // Senao
        result := False;
    //
    dmdados.tbUsuarios.Close;}
End;

Function SubData(DataEmprestimo: TDateTime) : Integer;
begin
  result := StrtoInt(FloattoStr(Date - DataEmprestimo));
end;

Function ArredontaFloat(x : Real): Real;
{Arredonda um número float para convertê-lo em String}
Begin
  if x > 0 Then
  begin
  if Frac(x) > 0.5 Then
  begin
  x := x + 1 - Frac(x);
  end
  else
  begin
  x := x - Frac(x);
  end;
  end
  else
  begin
  x := x - Frac(x);
  end;
  result := x
end;

Function OnLine(Porta:Word):Boolean;
// Verificar se Impressora esta Conectada
Const 
Portas :Byte = $02;
Var 
Res :Byte;
Begin 
{ Código em Assembler }
Asm
mov ah,Portas; {Requisita o acesso as portas}
mov dx,Porta;{Define a porta de teste}
Int $17; {Chama a interrupção de Impressora}
mov Res,ah; {Guarda em Res o resultado da operação }
end;
Result := (Res and $80) = $80; {Testa o valor de saída}
End; 

Function AnoBiSexto(Ayear: Integer): Boolean;
begin
// Verifica se o ano é Bi-Sexto
Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or
(AYear mod 400 = 0));
end;

Function DiasPorMes(Ayear, AMonth: Integer): Integer;
const DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
Result := DaysInMonth[AMonth];
if (AMonth = 2) and AnoBiSexto(AYear) then
Inc(Result);
end;

function Gerapercentual(valor:real;Percent:Real):real;
// Retorna a porcentagem de um valor
begin
percent := percent / 100;
try
  valor := valor * Percent;
finally
  result := valor;
end;
end;

Procedure ATUALIZAR;
Var
    M_VLANTE,M_VLSUBT,M_VLTOTAL,M_PECORR : Double;
    M_VLJURO,M_VLPRES,M_PEJURO, M_VLMULT : Double;
    M_VLCORR, M_VLANTE1,M_ULSUBT, M_ULTOTA : Double;
    M_DIAVECT,M_QTDIAS : Double;
    M_DIACON, M_JUVECT : Double;
    M_FLACUM2 : Boolean;
    Data: TDateTime;
    dia, mes, ano: Word;
Begin
   Try
     // Inicia um transação no BD
     //frmNetImo.barStatus.Panels[1].Text := 'Aguarde!!! Atualizado prestações...';
     dmBD.BancoDados.StartTransaction;
     DecodeDate( Date(), ano, mes, dia);
     // Dia atual
     //M_DIATUAL := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
     If (dmBD.tbPrestacoes.Active= False) Then
         dmBD.tbPrestacoes.Open;
     If (dmBD.tbContratos.Active = False) then
         dmBD.tbContratos.Open;
     //
     dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais}
     //
     M_VLSUBT  := 0;
     M_VLTOTAL := 0;
     M_VLCORR  := 0;
     M_VLANTE1 := 0;
     M_ULSUBT  := 0;
     M_ULTOTA  := 0;
     M_JUVECT  := 0;
     //
     dmBD.tbContratos.First;
     While not (dmBD.tbContratos.Eof) do
     begin
          dmBD.tbContratos.Edit;
          // se for entrada
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES',VarArrayOf([dmBD.tbContratosCTC_CDCONT.Value,'A','E']),[])) then
          begin
              dmBD.tbPrestacoes.Edit;
              If (dmBD.tbPrestacoesPRE_DTCADA.Value<Date()) then
              begin
              // dias de atraso
              dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              // dias da data do contrato
              M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
              M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTCADA.Value;
              //(Date()-dmBD.tbPrestacoesPRE_DTVENC.Value)+30;
              M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
              // Se quantidade de dias menor que zero.
              {If (Date()- dmBD.tbPrestacoesPRE_DTCADA.Value > 0) Then
              begin}
                   //
                   M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                   M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                   M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                   M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                   M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                   M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                   // Primeira formula
                   M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                   M_VLCORR  := M_VLSUBT-M_VLANTE;
                   M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                   //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                    // repassa os valores para BD
                    dmBD.tbPrestacoes.Edit;
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
              End
              Else
              begin
                    // repassa os valores para BD
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := 0;
              End;
              //
              dmBD.tbPrestacoes.Post;
              //dmBD.tbPrestacoes.Filtered := False;
       //        End;
          End;  // fim-se se for entrada
          // se for chave
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES',VarArrayOf([dmBD.tbContratosCTC_CDCONT.Value,'A','C']),[])) then
          begin
              dmBD.tbPrestacoes.Edit;
              If (dmBD.tbPrestacoesPRE_DTCADA.Value<Date()) then
              begin
              // dias de atraso
              dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              // dias da data do contrato
              M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
              M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
              // Se quantidade de dias menor que zero.
              If (Date()- dmBD.tbPrestacoesPRE_DTCADA.Value > 0) Then
              begin
                   //
                   M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                   M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                   M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                   M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                   M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                   M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                   // Primeira formula
                   M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_DIAVECT);
                   M_VLCORR  := M_VLSUBT-M_VLANTE;
                   M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_DIAVECT);
                   //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                    // repassa os valores para BD
                    dmBD.tbPrestacoes.Edit;
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
              End
              Else
              begin
                    // repassa os valores para BD
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := 0;
              End;
              dmBD.tbPrestacoes.Post;
               //
               //dmBD.tbPrestacoes.Filtered := False;
               End;
          End;  // fim-se se for chave
          // Se for prestação e não estiver atrasado
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES;PRE_FLATRA',VarArrayOf([dmBD.tbContratosCTC_CDCONT.Value,'A','P','N']),[])) then
          begin
              dmBD.tbPrestacoes.Edit;
              If (dmBD.tbPrestacoesPRE_DTCADA.Value<Date()) then
              begin
              // dias de atraso
              dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              // dias da data do contrato
              M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
              //M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              M_QTDIAS  := Date()-dmBD.tbPrestacoesPRE_DTBASE.Value;
              //dmBD.tbPrestacoesPRE_DTVENC.Value-Date()+30;
              M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
              //
                     M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                     M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                     M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                     M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                     M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                     M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                     // Primeira formula
                     M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                     M_VLCORR  := M_VLSUBT-M_VLANTE;
                     M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                    //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                     M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                   //
                   dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(dmBD.tbContratosCTC_CDCONT.Value)+' AND PRE_FLSITU='+QuotedStr('A')+' and PRE_TPPRES='+QuotedStr('P')+ 'and PRE_FLATRA='+QuotedStr('N');
                   dmBD.tbPrestacoes.Filtered := True;
                   dmBD.tbPrestacoes.First;
                   While not (dmBD.tbPrestacoes.Eof) do
                   begin
                       // repassa os valores para BD
                       dmBD.tbPrestacoes.Edit;
                       //  se estiver em dias
                       dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                       dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                       dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                       dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                       dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
                       //
                       dmBD.tbPrestacoes.Next;
                   End;
                   //
              End
              Else
              begin
                    // repassa os valores para BD
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := 0;
              End;
          End;  // fim-se se for prestação
          // se for balão e não estiver atrasado
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES;PRE_FLATRA',VarArrayOf([dmBD.tbContratosCTC_CDCONT.Value,'A','B','N']),[])) then
          begin
              dmBD.tbPrestacoes.Edit;
              If (dmBD.tbPrestacoesPRE_DTCADA.Value<Date()) then
              begin
              // dias de atraso
              dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              // dias da data do contrato
              M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
              M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTBASE.Value;
              //Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
                   //
                   M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                   M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                   M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                   M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                   M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                   M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                   // Primeira formula
                   M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                   M_VLCORR  := M_VLSUBT-M_VLANTE;
                   M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                   //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                   //
                   dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(dmBD.tbContratosCTC_CDCONT.Value)+' AND PRE_FLSITU='+QuotedStr('A')+' and PRE_TPPRES='+QuotedStr('B')+ 'and PRE_FLATRA='+QuotedStr('N');
                   dmBD.tbPrestacoes.Filtered := True;
                   dmBD.tbPrestacoes.First;
                   While not (dmBD.tbPrestacoes.Eof) do
                   begin
                       // repassa os valores para BD
                       dmBD.tbPrestacoes.Edit;
                       //  se estiver em dias
                       dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                       dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                       dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                       dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                       dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
                       //
                       dmBD.tbPrestacoes.Next;
                    End;
                       //
              End
              Else
              begin
                    // repassa os valores para BD
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := 0;
              End;
          End;  // fim-se se for prestação
              //
              dmBD.tbContratos.next;       // proximo contrato
     End;
     //
     dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
     dmBD.tbPrestacoes.Close;
     dmBD.tbContratos.Close;
     frmNetImo.barStatus.Panels[1].Text := ' ';
     dmBD.BancoDados.Commit;
     ShowMessage('Atualização completa!!!');
   Except
        ShowMessage('Erro ao tentar atualizar prestações!!!');
        dmBD.BancoDados.Rollback;
   End;
End;

Procedure ATUALIZACAO_DIARIA;
Var
    M_VLANTE,M_VLSUBT,M_VLTOTAL,M_PECORR : Double;
    M_VLJURO,M_VLPRES,M_PEJURO, M_VLMULT : Double;
    M_VLCORR, M_VLANTE1,M_ULSUBT, M_ULTOTA : Double;
    M_DIATUAL,M_QTDIAS : Integer;
    M_FLACUM2 : Boolean;
    Data: TDateTime;
    dia, mes, ano: Word;
Begin
   Try
     // Inicia um transação no BD
     dmBD.BancoDados.StartTransaction;
     DecodeDate( Date(), ano, mes, dia);
     // Dia atual
     M_DIATUAL := dia;
     If (dmBD.tbPrestacoes.Active= False) Then
         dmBD.tbPrestacoes.Open;
     //
     dmBD.tbPrestacoes.Filter   := 'PRE_FLSITU='+QuotedStr('A');
     dmBD.tbPrestacoes.Filtered := True;
     dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
     dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
     //
     M_VLSUBT  := 0;
     M_VLTOTAL := 0;
     M_VLCORR  := 0;
     M_VLANTE1 := 0;
     M_ULSUBT  := 0;
     M_ULTOTA  := 0;
     //
     While not (dmBD.tbPrestacoes.Eof) Do
     begin
         dmBD.tbPrestacoes.edit;
         dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
         //
         If (dmBD.tbPrestacoesPRE_PREST.Value > 1 )  Then
         begin
               If (M_FLACUM2 = False) and (dmBD.tbPrestacoesPRE_FLJUAC.Value = True) Then
                    dmBD.tbPrestacoesPRE_VLANTE.Value := M_ULTOTA;
               //
               If (M_FLACUM2 = False) and (dmBD.tbPrestacoesPRE_FLJUAC.Value = False) Then
                    dmBD.tbPrestacoesPRE_VLANTE.Value := M_ULTOTA;
               //
               If (M_FLACUM2 = True) and (dmBD.tbPrestacoesPRE_FLJUAC.Value = True) Then
                    dmBD.tbPrestacoesPRE_VLANTE.Value := M_ULSUBT;
               //
               {If (M_FLACUM2 = True) and (dmBD.tbPrestacoesPRE_FLJUAC.Value = False) Then
                    dmBD.tbPrestacoesPRE_VLANTE.Value := M_ULSUBT;}
              //
         End;
         //
         M_QTDIAS  := StrtoInt(FloattoStr(dmBD.tbPrestacoesPRE_DIASAT.Value));
         //StrtoInt(FloattoStr(Date()-dmBD.tbPrestacoesPRE_VLMULT.Value));
         // Se quantidade de dias menor que zero.
         If M_QTDIAS <= 0 Then
         begin
              //   Calcular Sub-Total e TOTAL
              dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
              //dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLANTE1+Funcoes.Gerapercentual(M_VLANTE1,dmBD.tbPrestacoesPRE_PECORR.Value);
              dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
              dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              //
              If (dmBD.tbPrestacoesPRE_FLJUAC.Value= True) Then
              begin
                  dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value*(dmBD.tbPrestacoesPRE_PEJURO.Value/100);
                  //Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLSUBT.Value,dmBD.tbPrestacoesPRE_PEJURO.Value)/100;
                  dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value;
              End
              Else
              begin
                  dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value*(dmBD.tbPrestacoesPRE_PEJURO.Value/100);
                  //dmBD.tbPrestacoesPRE_VLSUBT.Value*0.01;
                  dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value;
              End;
         End
         Else                   // Se não, quantidade de dias for maior que 0.
         begin
              M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
              M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
              M_VLJURO  := dmBD.tbPrestacoesPRE_JURVCT.Value;
              M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
              //M_VLMULT  := dmBD.tbPrestacoesPRE_VLMULT.Value;
              M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
             // Se vencimento maoir igual a data atual
           {If ((dmBD.tbPrestacoesPRE_DTVENC.Value >= Date())
              And (M_QTDIAS <= 30)) Then}
           If (M_QTDIAS > 0 ) and (M_QTDIAS <= 30) Then
           begin
                   // Se juros acumulativo
                   If (dmBD.tbPrestacoesPRE_FLJUAC.Value= True) Then
                   begin
                        //
                        M_VLSUBT := M_VLANTE+M_VLMULT;
                        M_VLCORR := M_VLSUBT-M_VLANTE;
                        //
                        M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                        //M_VLTOTAL := M_VLSUBT+M_VLMULT+(M_VLJURO/30*M_QTDIAS);
                        //M_VLTOTAL := M_VLSUBT+M_VLMULT+(M_VLJURO/30*M_DIATUAL);
                        M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                   End
                   Else
                   begin
                        //
                        M_VLSUBT := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                        M_VLCORR := M_VLSUBT-M_VLANTE;
                        M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                        M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                  End;
              //
              //
           End;
           // Vencimento apos 30 dias
           //If (dmBD.tbPrestacoesPRE_DTVENC.Value+30 <= Date())Then
           If (M_QTDIAS > 30) and (M_QTDIAS <= 60) Then
           begin
              M_VLSUBT := M_VLANTE+M_VLMULT;
              //Funcoes.Gerapercentual(M_VLANTE,M_VLMULT);
              M_VLCORR := M_VLSUBT-M_VLANTE;
              //
              {If (dmBD.tbPrestacoesPRE_FLJUAC.Value= True) Then
              begin
                   M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                   //M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                   //Funcoes.Gerapercentual(M_VLSUBT,M_PEJURO)*100;
              End
              Else
              begin}
                   M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                   //Funcoes.Gerapercentual(M_VLSUBT,M_PEJURO)*100;
             // End;
           End;
           // Vencimento apos 60 dias
           //If (dmBD.tbPrestacoesPRE_DTVENC.Value+60 <= Date())Then
           If (M_QTDIAS > 60)Then
           begin
              //
              If (dmBD.tbPrestacoesPRE_FLJUAC.Value= True) Then
              begin
                   M_VLSUBT := M_VLANTE+M_VLMULT;
                   M_VLCORR := M_VLSUBT-M_VLANTE;
                   M_VLTOTAL := M_VLSUBT+M_VLMULT+(M_PEJURO/30*M_QTDIAS);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
              End
              Else
              begin
                   M_VLSUBT := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                   M_VLCORR := M_VLSUBT-M_VLANTE;
                   M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
              End;
              //
           End;
           //
              dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
              dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
              dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLJURO;
              dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
         End;
         //
         If (dmBD.tbPrestacoesPRE_FLJUAC.Value= True) Then
             M_FLACUM2 := True
         Else
             M_FLACUM2 := False;
         //
         M_ULSUBT  := dmBD.tbPrestacoesPRE_VLSUBT.Value;
         M_ULTOTA  := dmBD.tbPrestacoesPRE_TOTAL.Value;
         {Else
         Begin
             M_VLANTE1 := dmBD.tbPrestacoesPRE_TOTAL.Value;
             M_UTSUBT  := dmBD.tbPrestacoesPRE_VLSUBT.Value;
             M_ULTOTA  := dmBD.tbPrestacoesPRE_TOTAL.Value;
         End;}
         // Proximo registro
         dmBD.tbPrestacoes.Next;
     End;               //Fim-do-enquanto
     // Libera Filtro
     dmBD.tbPrestacoes.Filtered := False;
     dmBD.tbPrestacoes.EnableConstraints;
     dmBD.BancoDados.Commit;
     ShowMessage('Atualização completa.');
     frmNetImo.barStatus.Panels[0].Text := ' ';
   Except
        ShowMessage('Erro ao tentar atualizar prestações!!!');
        dmBD.tbPrestacoes.Cancel;
        dmBD.tbPrestacoes.Close;
        //
        dmBD.BancoDados.Rollback;
   End;
End;

Procedure TESTA_VENCIDAS;
Var
    W_VLANTE : Double;
    W_CDCONT : String;
    M_VLANTE,M_PECORR,M_VLJURO : dOUBLE;
    M_JUVECT,M_PEJURO,M_VLMULT : dOUBLE;
    M_VLSUBT ,M_VLCORR,M_VLTOTAL :dOUBLE;
    M_QTDIAS :dOUBLE;
    M_FLANTE, M_TPPRES: string;
Begin
   Try
     // Inicia um transação no BD
     dmBD.BancoDados.StartTransaction;
     If (dmBD.tbPrestacoes.Active= False) Then
         dmBD.tbPrestacoes.Open;
     //
     dmBD.tbPrestacoes.Filter   := 'PRE_FLSITU='+QuotedStr('A')+ 'And PRE_DTVENC<'+DatetoStr(date());
     dmBD.tbPrestacoes.Filtered := True;
     dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
     dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
     //
     While not (dmBD.tbPrestacoes.Eof) Do
     begin
          M_FLANTE := 'N';
          dmBD.tbPrestacoes.Edit;
          M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
          // Se estiver vencida a prestação
          If (dmBD.tbPrestacoesPRE_DTVENC.Value < Date()) AND (dmBD.tbPrestacoesPRE_FLATRA.Value = 'N') Then
          begin
               M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
               M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
               M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
               M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
               M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
               M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
               //
               M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_QTDIAS);
               M_VLCORR  := M_VLSUBT-M_VLANTE;
               M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
               M_VLJURO  := M_VLTOTAL-M_VLSUBT;
               //
               If (M_QTDIAS>0) Then
               begin
                    // Segunda  formula
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := (M_VLTOTAL+M_VLMULT);
                    dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := (M_VLTOTAL+M_VLMULT)+(M_PEJURO/30*M_QTDIAS);
                    dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_TOTAL.Value-dmBD.tbPrestacoesPRE_VLSUBT.Value;
                    M_FLANTE := 'S';
                    M_TPPRES := dmBD.tbPrestacoesPRE_TPPRES.Value;
               End;
               //
               If (M_QTDIAS > 60) Then
               begin
                    // Terceira formula
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLTOTAL+(M_PECORR/30*M_QTDIAS);
                    dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL+(M_PECORR/30*M_QTDIAS)+(M_PEJURO/30*M_QTDIAS);
                    dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_TOTAL.Value-dmBD.tbPrestacoesPRE_VLSUBT.Value;
               End;
               //
               dmBD.tbPrestacoesPRE_FLATRA.Value := 'S';
               dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
               dmBD.tbPrestacoes.Post;
               //
               W_CDCONT := dmBD.tbPrestacoesPRE_CDCONT.Value;
               //
               If (dmBD.tbPrestacoesPRE_FLJUAC.Value = True) Then
                    W_VLANTE := dmBD.tbPrestacoesPRE_VLSUBT.Value
               Else
                    W_VLANTE := dmBD.tbPrestacoesPRE_TOTAL.Value;
               //
               If (M_FLANTE = 'S') and ((M_TPPRES = 'B') or (M_TPPRES = 'P'))Then
               begin
                    If (M_TPPRES = 'B') Then
                         dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+W_CDCONT+' and PRE_FLSITU='+QuotedStr('A')+ 'and PRE_TPPRES='+QuotedStr('B');
                    If (M_TPPRES = 'P') Then
                         dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+W_CDCONT+' and PRE_FLSITU='+QuotedStr('A')+ 'and PRE_TPPRES='+QuotedStr('P');
                    dmBD.tbPrestacoes.Filtered := True;
                    dmBD.tbPrestacoes.First;
                     While not (dmBD.tbPrestacoes.Eof) Do
                     begin
                        dmBD.tbPrestacoes.Edit;
                        dmBD.tbPrestacoesPRE_VLANTE.Value := W_VLANTE;
                        dmBD.tbPrestacoes.Next;
                    End;
                    dmBD.tbPrestacoes.Filtered := False;
               End;
             //End;
          End;
          dmBD.tbPrestacoes.Next;
     End;
     //
     dmBD.BancoDados.Commit;
     dmBD.tbPrestacoes.Filtered := False;
     dmBD.tbPrestacoes.Close;
   Except
        ShowMessage('Erro ao tentar atualizar prestações!!!');
        dmBD.tbPrestacoes.Cancel;
        dmBD.tbPrestacoes.Close;
        dmBD.BancoDados.Rollback;
   End;
End;


Procedure AUTO_ATUALIZACAO;
Var
    M_VLANTE,M_VLSUBT,M_VLTOTAL,M_PECORR : Double;
    M_VLJURO,M_VLPRES,M_PEJURO, M_VLMULT : Double;
    M_VLCORR, M_VLANTE1,M_ULSUBT, M_ULTOTA : Double;
    M_DIAVECT,M_QTDIAS : Double;
    M_DIACON, M_JUVECT : Double;
    M_FLACUM2 : Boolean;
    Data: TDateTime;
    dia, mes, ano: Word;
Begin
   Try
     // Inicia um transação no BD
     dmBD.BancoDados.StartTransaction;
     DecodeDate( Date(), ano, mes, dia);
     // Dia atual
     //M_DIATUAL := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
     If (dmBD.tbPrestacoes.Active= False) Then
         dmBD.tbPrestacoes.Open;
     //
     dmBD.tbPrestacoes.Filter   := 'PRE_FLSITU='+QuotedStr('A');
     dmBD.tbPrestacoes.Filtered := True;
     dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
     dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
     //
     M_VLSUBT  := 0;
     M_VLTOTAL := 0;
     M_VLCORR  := 0;
     M_VLANTE1 := 0;
     M_ULSUBT  := 0;
     M_ULTOTA  := 0;
     M_JUVECT  := 0;
     //
     While not (dmBD.tbPrestacoes.Eof) Do
     begin
           dmBD.tbPrestacoes.edit;
           // dias de atraso
           dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
           // dias da data do contrato
           M_DIACON  := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
           M_QTDIAS  := dmBD.tbPrestacoesPRE_DTVENC.Value-Date()+30;
           //Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
           M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
           //ShowMessage('Dias: '+Floattostr(M_QTDIAS));
           //
           If (M_DIACON <= 0) Then               // se quant. dias maior que a do contrato
           begin
               // repassa os valores para BD
               dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
               dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
               dmBD.tbPrestacoesPRE_VLANTE.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
               dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
               dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
               dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLPRES.Value;
               dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_TOTAL.Value-dmBD.tbPrestacoesPRE_VLSUBT.Value;
           End;
           // Se quantidade de dias menor que zero.
           //
           If (Date()- dmBD.tbPrestacoesPRE_DTCADA.Value > 0) Then
           begin
                   {If (dmBD.tbPrestacoesPRE_TPPRES.Value = 'B') Then

                   If (dmBD.tbPrestacoesPRE_TPPRES.Value = 'P') Then
                      M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                      M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();}
                      //
                      M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                      M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                      M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                      M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                      M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                      M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                      // Primeira formula
                          M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                          M_VLCORR  := M_VLSUBT-M_VLANTE;
                          M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                          //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                          M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                      // Se vencimento menor que a data atual
                      {If (M_QTDIAS <= 30 )  Then
                      begin
                          //
                      End;}
                      // se atrasa prestação
                      //If (M_QTDIAS > 30) Then
                      If (Date()> dmBD.tbPrestacoesPRE_DTVENC.Value) Then
                      begin
                           // Segunda  formula
                           M_VLSUBT  := (M_VLTOTAL+M_VLMULT);
                           M_VLCORR  := M_VLSUBT-M_VLANTE;
                           M_VLTOTAL := (M_VLTOTAL+M_VLMULT)+(M_PEJURO/30*M_QTDIAS);
                           M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                           {M_VLSUBT  := dmBD.tbPrestacoesPRE_VLSUBT.Value+M_VLMULT+
                           M_VLCORR  := dmBD.tbPrestacoesPRE_VLSUBT.Value-M_VLANTE;
                           M_VLTOTAL := dmBD.tbPrestacoesPRE_VLSUBT.Value+(M_PEJURO/30*M_QTDIAS);
                           M_VLJURO  := M_VLTOTAL-dmBD.tbPrestacoesPRE_VLSUBT.Value;}
                      End;
                      //
                      If (M_QTDIAS > 60) Then
                      begin
                           // Terceira formula
                           M_VLSUBT  := M_VLTOTAL+(M_PECORR/30*M_QTDIAS);
                           M_VLCORR  := M_VLSUBT-M_VLANTE;
                           M_VLTOTAL := M_VLTOTAL+(M_PECORR/30*M_QTDIAS)+(M_PEJURO/30*M_QTDIAS);
                           M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                      End;
                      // repassa os valores para BD
                      dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                      dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                      dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                      dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                      dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
                // End;
            End;
          // Proximo registro
         dmBD.tbPrestacoes.Next;
     End;               //Fim-do-enquanto
     // Libera Filtro
     dmBD.tbPrestacoes.Filtered := False;
     dmBD.tbPrestacoes.EnableConstraints;
     dmBD.BancoDados.Commit;
     ShowMessage('Atualização completa.');
     //ShowMessage('Dias  '+FloattoStr(M_DIACON));
     frmNetImo.barStatus.Panels[0].Text := ' ';
   Except
        ShowMessage('Erro ao tentar atualizar prestações!!!');
        dmBD.tbPrestacoes.Cancel;
        dmBD.tbPrestacoes.Close;
        //
        dmBD.BancoDados.Rollback;
   End;
End;

Procedure ATUALIZAR_CLIENTE_ATUAL;
Var
    M_VLANTE,M_VLSUBT,M_VLTOTAL,M_PECORR : Double;
    M_VLJURO,M_VLPRES,M_PEJURO, M_VLMULT : Double;
    M_VLCORR, M_VLANTE1,M_ULSUBT, M_ULTOTA : Double;
    M_DIAVECT,M_QTDIAS : Double;
    M_DIACON, M_JUVECT : Double;
    M_FLACUM2 : Boolean;
    M_CDCONT : String;
Begin
   Try
     //
     If (dmBD.tbPrestacoes.Active= False) Then
         dmBD.tbPrestacoes.Open;
     //
     dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais}
     dmBD.tbPrestacoes.First;
     //
     M_VLSUBT  := 0;
     M_VLTOTAL := 0;
     M_VLCORR  := 0;
     M_VLANTE1 := 0;
     M_ULSUBT  := 0;
     M_ULTOTA  := 0;
     M_JUVECT  := 0;
     //
    { While not (dmBD.tbPrestacoes.Eof) do
     begin
          dmBD.tbPrestacoes.Edit;}
          M_CDCONT := uSelCliente.W_CDCONT;
          {dmBD.tbPrestacoesPRE_CDCONT.Value;
          dmBD.tbPrestacoes.cancel;}
          // se for entrada e estiver em dias
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES',VarArrayOf([M_CDCONT,'A','E']),[])) then
          begin
               If (dmBD.tbPrestacoesPRE_FLATRA.Value ='N') then
                   //and (dmBD.tbPrestacoesPRE_DTATUA.Value <Date())then
               begin
                  dmBD.tbPrestacoes.Edit;
                  // dias da data do contrato
                  M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
                  M_QTDIAS := dmBD.tbPrestacoesPRE_DTBASE.Value-Date()+30;
                  M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
                  //
                  M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                  M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                  M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                  M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                  M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                  M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                   // Primeira formula
                   M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                   M_VLCORR  := M_VLSUBT-M_VLANTE;
                   M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                   //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                   // repassa os valores para BD
                   dmBD.tbPrestacoes.Edit;
                   dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                   dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                   dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                   dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                   dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
                   //dmBD.tbPrestacoesPRE_DTATUA.Value := Date();
                   dmBD.tbPrestacoes.post;
               End;  // fim-se se for entrada
          End;
          // se for chave e estiver em dias
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES',VarArrayOf([M_CDCONT,'A','C']),[])) then
          begin
               If (dmBD.tbPrestacoesPRE_FLATRA.Value ='N') Then
                   //and (dmBD.tbPrestacoesPRE_DTATUA.Value <Date()) then
               begin
                  dmBD.tbPrestacoes.Edit;
                  // dias da data do contrato
                  M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
                  M_QTDIAS := dmBD.tbPrestacoesPRE_DTBASE.Value-Date()+30;
                  M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
                  //
                  M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                  M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                  M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                  M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                  M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                  M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                   // Primeira formula
                   M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_DIAVECT);
                   M_VLCORR  := M_VLSUBT-M_VLANTE;
                   M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_DIAVECT);
                   //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                   // repassa os valores para BD
                    dmBD.tbPrestacoes.Edit;
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
                    ///dmBD.tbPrestacoesPRE_DTATUA.Value := Date();
                    dmBD.tbPrestacoes.post;
               End;
          End;  // fim-se se for chave
          // Se for prestação e não estiver atrasado
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES',VarArrayOf([M_CDCONT,'A','P']),[])) then
          begin
               If (dmBD.tbPrestacoesPRE_FLATRA.Value ='N') then
                       //And (dmBD.tbPrestacoesPRE_DTATUA.Value<Date()) then
               begin
                    dmBD.tbPrestacoes.Edit;
                    // dias da data do contrato
                    M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
                    M_QTDIAS := dmBD.tbPrestacoesPRE_DTBASE.Value-Date();
                    M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
                    //
                    M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                    M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                    M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                    M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                    M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                    M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                     // Primeira formula
                     M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                     M_VLCORR  := M_VLSUBT-M_VLANTE;
                     M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                    //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                     M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                   //
                   dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(dmBD.tbContratosCTC_CDCONT.Value)+' AND PRE_FLSITU='+QuotedStr('A')+' and PRE_TPPRES='+QuotedStr('P')+ 'and PRE_FLATRA='+QuotedStr('N');
                   dmBD.tbPrestacoes.Filtered := True;
                   dmBD.tbPrestacoes.First;
                   While not (dmBD.tbPrestacoes.Eof) do
                   begin
                       // repassa os valores para BD
                       dmBD.tbPrestacoes.Edit;
                       //  se estiver em dias
                       dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                       dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                       dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                       dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                       dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
                       //dmBD.tbPrestacoesPRE_DTATUA.Value := Date();
                       //
                       dmBD.tbPrestacoes.Next;
                   End;
                   dmBD.tbPrestacoes.Filtered := False;
               End;
          End;  // fim-se se for prestação
          // se for balão e não estiver atrasado
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES',VarArrayOf([M_CDCONT,'A','B']),[])) then
          begin
               If (dmBD.tbPrestacoesPRE_FLATRA.Value ='N') Then
                       //And (dmBD.tbPrestacoesPRE_DTATUA.Value<Date()) then
               begin
                    dmBD.tbPrestacoes.Edit;
                    // dias da data do contrato
                    M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
                    M_QTDIAS := dmBD.tbPrestacoesPRE_DTBASE.Value-Date()+30;
                    M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
                    //
                    M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                    M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                    M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                    M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                    M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                    M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                   // Primeira formula
                   M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                   M_VLCORR  := M_VLSUBT-M_VLANTE;
                   M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                   //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                   //
                   dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(dmBD.tbContratosCTC_CDCONT.Value)+' AND PRE_FLSITU='+QuotedStr('A')+' and PRE_TPPRES='+QuotedStr('B')+ 'and PRE_FLATRA='+QuotedStr('N');
                   dmBD.tbPrestacoes.Filtered := True;
                   dmBD.tbPrestacoes.First;
                   While not (dmBD.tbPrestacoes.Eof) do
                   begin
                       // repassa os valores para BD
                       dmBD.tbPrestacoes.Edit;
                       //  se estiver em dias
                       dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                       dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                       dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                       dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                       dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
                       //dmBD.tbPrestacoesPRE_DTATUA.Value := Date();
                       //
                       dmBD.tbPrestacoes.Next;
                   End;
                   dmBD.tbPrestacoes.Filtered := False;
               End;
          End;  // fim-se se for prestação
              //
     {         dmBD.tbPrestacoes.next;       // proximo contrato
     End;}
     //
     dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
     frmNetImo.barStatus.Panels[1].Text := ' ';
     ShowMessage('Atualização completa!!!');
   Except
        ShowMessage('Erro ao tentar atualizar prestações do cliente!!!');
        dmBD.tbPrestacoes.Cancel;
   End;
End;

Procedure PRESTACAO;
Var
    M_VLANTE,M_VLSUBT,M_VLTOTAL,M_PECORR : Double;
    M_VLJURO,M_VLPRES,M_PEJURO, M_VLMULT : Double;
    M_VLCORR, M_VLANTE1,M_ULSUBT, M_ULTOTA : Double;
    M_DIAVECT,M_QTDIAS : Double;
    M_DIACON, M_JUVECT,W_VLANTE : Double;
    M_FLACUM2 : Boolean;
    M_FLANTE : String;
begin
      If (dmBD.tbPrestacoes.Active = false) Then
         dmBD.tbPrestacoes.open;
          // Se for prestação e não estiver atrasado
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES;PRE_FLATRA',VarArrayOf([dmBD.tbContratosCTC_CDCONT.Value,'A','P','N']),[])) then
          begin
              dmBD.tbPrestacoes.Edit;
              If (Date()>dmBD.tbPrestacoesPRE_DTCADA.Value) then
              begin
                 // se estiver em dias
                 If (dmBD.tbPrestacoesPRE_DTVENC.Value >date()) Then
                 begin
                    // dias de atraso
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    // dias da data do contrato
                    M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
                    //M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    M_QTDIAS  := Date()-dmBD.tbPrestacoesPRE_DTBASE.Value;
                    //dmBD.tbPrestacoesPRE_DTVENC.Value-Date()+30;
                    M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
                    //
                     M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                     M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                     M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                     M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                     M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                     M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                     // Primeira formula
                     M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                     M_VLCORR  := M_VLSUBT-M_VLANTE;
                     M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                     //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                     M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                   //
                   dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(dmBD.tbContratosCTC_CDCONT.Value)+' AND PRE_FLSITU='+QuotedStr('A')+' and PRE_TPPRES='+QuotedStr('P')+ 'and PRE_FLATRA='+QuotedStr('N');
                   dmBD.tbPrestacoes.Filtered := True;
                   dmBD.tbPrestacoes.First;
                   While not (dmBD.tbPrestacoes.Eof) do
                   begin
                       // repassa os valores para BD
                       dmBD.tbPrestacoes.Edit;
                       //  se estiver em dias
                       dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                       dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                       dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                       dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                       dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
                       //
                       dmBD.tbPrestacoes.Next;
                   End;
                   //
                   dmBD.tbPrestacoes.Filtered := False;
                   //
                 End;
              End            // em dias
              Else
              begin
                    // repassa os valores para BD
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := 0;
                    dmBD.tbPrestacoes.post;
              End;
         End;
End;            //fim - da - procedure

Procedure BALOES;
Var
    M_VLANTE,M_VLSUBT,M_VLTOTAL,M_PECORR : Double;
    M_VLJURO,M_VLPRES,M_PEJURO, M_VLMULT : Double;
    M_VLCORR, M_VLANTE1,M_ULSUBT, M_ULTOTA : Double;
    M_DIAVECT,M_QTDIAS : Double;
    M_DIACON, M_JUVECT,W_VLANTE : Double;
    M_FLACUM2 : Boolean;
    M_FLANTE : String;
begin
      If (dmBD.tbPrestacoes.Active = false) Then
        dmBD.tbPrestacoes.Open;
          // Se for prestação e não estiver atrasado
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES;PRE_FLATRA',VarArrayOf([dmBD.tbContratosCTC_CDCONT.Value,'A','B','N']),[])) then
          begin
              dmBD.tbPrestacoes.Edit;
              If (Date()>dmBD.tbPrestacoesPRE_DTCADA.Value) then
              begin
                 // se estiver em dias
                 If (dmBD.tbPrestacoesPRE_DTVENC.Value >date()) Then
                 begin
                    // dias de atraso
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    // dias da data do contrato
                    M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
                    //M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    M_QTDIAS  := Date()-dmBD.tbPrestacoesPRE_DTBASE.Value;
                    //dmBD.tbPrestacoesPRE_DTVENC.Value-Date()+30;
                    M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
                    //
                     M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                     M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                     M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                     M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                     M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                     M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                     // Primeira formula
                     M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                     M_VLCORR  := M_VLSUBT-M_VLANTE;
                     M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                     //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                     M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                   //
                   dmBD.tbPrestacoes.Filter   := 'PRE_CDCONT='+QuotedStr(dmBD.tbContratosCTC_CDCONT.Value)+' AND PRE_FLSITU='+QuotedStr('A')+' and PRE_TPPRES='+QuotedStr('B')+ 'and PRE_FLATRA='+QuotedStr('N');
                   dmBD.tbPrestacoes.Filtered := True;
                   dmBD.tbPrestacoes.First;
                   While not (dmBD.tbPrestacoes.Eof) do
                   begin
                       // repassa os valores para BD
                       dmBD.tbPrestacoes.Edit;
                       //  se estiver em dias
                       dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                       dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                       dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                       dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                       dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
                       //
                       dmBD.tbPrestacoes.Next;
                   End;
                   //
                   dmBD.tbPrestacoes.Filtered := False;
                   //
                 End;
              End            // em dias
              Else
              begin
                    // repassa os valores para BD
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := 0;
                    dmBD.tbPrestacoes.post;
              End;
         End;
End;            //fim - da - procedure

Procedure ENTRADA;
Var
    M_VLANTE,M_VLSUBT,M_VLTOTAL,M_PECORR : Double;
    M_VLJURO,M_VLPRES,M_PEJURO, M_VLMULT : Double;
    M_VLCORR, M_VLANTE1,M_ULSUBT, M_ULTOTA : Double;
    M_DIAVECT,M_QTDIAS : Double;
    M_DIACON, M_JUVECT,W_VLANTE : Double;
    M_FLACUM2 : Boolean;
    M_FLANTE : String;
Begin
      If (dmBD.tbPrestacoes.Active = false) Then
        dmBD.tbPrestacoes.Open;
          // se for entrada
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES',VarArrayOf([dmBD.tbContratosCTC_CDCONT.Value,'A','E']),[])) then
          begin
              dmBD.tbPrestacoes.Edit;
              If (dmBD.tbPrestacoesPRE_DTCADA.Value<Date()) then
              begin
              // dias de atraso
              dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              // dias da data do contrato
              M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
              M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTCADA.Value;
              //(Date()-dmBD.tbPrestacoesPRE_DTVENC.Value)+30;
              M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
              // Se quantidade de dias menor que zero.
              {If (Date()- dmBD.tbPrestacoesPRE_DTCADA.Value > 0) Then
              begin}
                   //
                   M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                   M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                   M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                   M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                   M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                   M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                   // Primeira formula
                   M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_QTDIAS);
                   M_VLCORR  := M_VLSUBT-M_VLANTE;
                   M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_QTDIAS);
                   //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                    // repassa os valores para BD
                    dmBD.tbPrestacoes.Edit;
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
              End
              Else
              begin
                    // repassa os valores para BD
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := 0;
              End;
              //
              dmBD.tbPrestacoes.Post;
          End;  // fim-se se for entrada
End;

Procedure CHAVE;
Var
    M_VLANTE,M_VLSUBT,M_VLTOTAL,M_PECORR : Double;
    M_VLJURO,M_VLPRES,M_PEJURO, M_VLMULT : Double;
    M_VLCORR, M_VLANTE1,M_ULSUBT, M_ULTOTA : Double;
    M_DIAVECT,M_QTDIAS : Double;
    M_DIACON, M_JUVECT,W_VLANTE : Double;
    M_FLACUM2 : Boolean;
    M_FLANTE : String;
Begin
          If (dmBD.tbPrestacoes.Locate('PRE_CDCONT;PRE_FLSITU;PRE_TPPRES',VarArrayOf([dmBD.tbContratosCTC_CDCONT.Value,'A','C']),[])) then
          begin
              dmBD.tbPrestacoes.Edit;
              If (dmBD.tbPrestacoesPRE_DTCADA.Value<Date()) then
              begin
              // dias de atraso
              dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              // dias da data do contrato
              M_DIACON := dmBD.tbPrestacoesPRE_DTCADA.Value-Date();
              M_QTDIAS := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              M_DIAVECT := dmBD.tbPrestacoesPRE_DTVENC.Value-Date();
              // Se quantidade de dias menor que zero.
              If (Date()- dmBD.tbPrestacoesPRE_DTCADA.Value > 0) Then
              begin
                   //
                   M_VLANTE  := dmBD.tbPrestacoesPRE_VLANTE.Value;
                   M_PECORR  := dmBD.tbPrestacoesPRE_PECORR.Value;
                   M_VLJURO  := dmBD.tbPrestacoesPRE_VLJURO.Value;
                   M_JUVECT  := dmBD.tbPrestacoesPRE_JURVCT.Value;
                   M_PEJURO  := dmBD.tbPrestacoesPRE_PEJURO.Value;
                   M_VLMULT  := Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value, dmBD.tbPrestacoesPRE_VLMULT.Value);
                   // Primeira formula
                   M_VLSUBT  := M_VLANTE+(M_PECORR/30*M_DIAVECT);
                   M_VLCORR  := M_VLSUBT-M_VLANTE;
                   M_VLTOTAL := M_VLSUBT+(M_PEJURO/30*M_DIAVECT);
                   //M_VLTOTAL := M_VLANTE+(M_PEJURO/30*M_DIAVECT);
                   M_VLJURO  := M_VLTOTAL-M_VLSUBT;
                    // repassa os valores para BD
                    dmBD.tbPrestacoes.Edit;
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLSUBT;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := M_VLCORR;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := M_VLTOTAL;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := M_VLTOTAL-M_VLSUBT;
              End
              Else
              begin
                    // repassa os valores para BD
                    dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
                    dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLCORR.Value := 0;
                    dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLPRES.Value;
                    dmBD.tbPrestacoesPRE_VLJURO.Value := 0;
              End;
              dmBD.tbPrestacoes.Post;
              End;
          End;  // fim-se se for chave
End;

Procedure UPDATE;
Var
    M_CDINDI,M_CDCLIE:String;
    M_JUANTE, M_JUATUA, W_PECORR,M_POCORR,M_VLANTE :Double;
    M_PECORR :Double;
    M_FLACUM : Boolean;
    M_DTATUA : Tdate;
begin
     Try
       If (dmBD.tbIndices.Active = False) Then
            dmBD.tbIndices.Open;           // Abre a tabela de Indices.
       // Localizar o registro do indice
       dmBD.tbPrestacoes.Edit;
       M_CDCLIE := dmBD.tbPrestacoesPRE_CDCLIE.Value;
       M_DTATUA := dmBD.tbPrestacoesPRE_DTATUA.Value;
       M_PECORR := dmBD.tbPrestacoesPRE_PECORR.Value;
       dmBD.tbPrestacoes.Cancel;
       //
       dmBD.tbIndices.FindKey([dmBD.tbPrestacoesPRE_CDINDI.Value]);
       dmBD.tbIndices.Edit;
       //
       If (dmBD.tbIndicesIND_VLCORR.Value<>M_PECORR) Then
       begin
             M_CDINDI := dmBD.tbIndicesIND_CDINDI.Value;
             M_POCORR := dmBD.tbIndicesIND_VLCORR.Value;
             M_FLACUM := dmBD.tbIndicesIND_JUACUM.Value;
             dmBD.tbIndices.Cancel;
             // Aplica filtro
             dmBD.tbPrestacoes.Filter   := 'PRE_CDINDI='+QuotedStr(M_CDINDI)+' AND PRE_FLSITU='+QuotedStr('A')+' AND PRE_CDCLIE='+QuotedStr(M_CDCLIE);
             dmBD.tbPrestacoes.Filtered := True;
             dmBD.tbPrestacoes.First;                  // Vai para o primeiro registro.
             dmBD.tbPrestacoes.DisableConstraints;     //Desabilita a atualização dos controles visuais
         //
         While not (dmBD.tbPrestacoes.Eof) Do
         begin
            dmBD.tbPrestacoes.edit;
            If (Date()> dmBD.tbPrestacoesPRE_DTCADA.Value) Then
            begin
              dmBD.tbPrestacoesPRE_PECORR.Value := M_POCORR;
              //   Calcular Sub-Total e TOTAL
              dmBD.tbPrestacoesPRE_VLSUBT.Value := dmBD.tbPrestacoesPRE_VLANTE.Value+Funcoes.Gerapercentual(dmBD.tbPrestacoesPRE_VLANTE.Value,dmBD.tbPrestacoesPRE_PECORR.Value);
              //dmBD.tbPrestacoesPRE_VLSUBT.Value := M_VLANTE1+Funcoes.Gerapercentual(M_VLANTE1,dmBD.tbPrestacoesPRE_PECORR.Value);
              dmBD.tbPrestacoesPRE_VLCORR.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value-dmBD.tbPrestacoesPRE_VLANTE.Value;
              dmBD.tbPrestacoesPRE_DIASAT.Value := Date()-dmBD.tbPrestacoesPRE_DTVENC.Value;
              //
              If (dmBD.tbPrestacoesPRE_FLJUAC.Value= True) Then
              begin
                  dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value*(dmBD.tbPrestacoesPRE_PEJURO.Value/100);
                  dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value;
              End
              Else
              begin
                  dmBD.tbPrestacoesPRE_VLJURO.Value := dmBD.tbPrestacoesPRE_VLSUBT.Value*(dmBD.tbPrestacoesPRE_PEJURO.Value/100);
                  dmBD.tbPrestacoesPRE_TOTAL.Value  := dmBD.tbPrestacoesPRE_VLSUBT.Value+dmBD.tbPrestacoesPRE_VLJURO.Value;
              End;
              //
              dmBD.tbPrestacoesPRE_DTATUA.Value := Date();
              //
             End;
              dmBD.tbPrestacoes.Next;
         End;
         // Libera Filtro
         dmBD.tbPrestacoes.Filtered := False;
         dmBD.tbIndices.Close;
         //
         dmBD.tbPrestacoes.EnableConstraints;           //Habilita os controles visuais
       End;
     Except
           ShowMessage('Error ao tentar atualiza prestações!!!');
           //
           dmBD.tbPrestacoes.Cancel;
     End;
End;

Procedure EntreDatas(DataFinal,DataInicial : TDate ; var Anos,Meses,Dias : Integer) ;
//
// Retorna a diferença em Dias,Meses e Anos entre 2 datas
//
  Function Calcula(Periodo : Integer) : Integer ;
  var
     intCont : Integer ;
  begin
    intCont := 0 ;
    Repeat
    Inc(intCont) ;
    DataFinal := IncMonth(DataFinal,Periodo * -1) ;
    Until DataFinal < DataInicial ;
    DataFinal := IncMonth(DataFinal,Periodo) ;
    Inc(intCont,-1) ;
    Result := intCont ;
  End ;
begin
  if DataFinal <= DataInicial then
  begin
    Anos := 0 ;
    Meses := 0 ;
    Dias := 0 ;
    exit ;
  end;
  Anos := Calcula(12) ;
  Meses := Calcula(1) ;
  Dias := Round(DataFinal - DataInicial) ;
end;

end.


