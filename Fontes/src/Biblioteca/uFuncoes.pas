unit uFuncoes;

interface

uses
 System.SysUtils;

function MascaraCEP(aEdt: String): string;
Function OnlyNumbers(const texto: string): string;
function RemoverCaracteresEspeciais(aTexto: string): string;
Function ValidarCEP(const CEP: string): string;

implementation

Function ValidarCEP(const CEP: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(CEP) do
    if CEP[I] in ['0'..'9'] then
      Result := Result + CEP[I];
    if Length(Result) <> 8 then
      raise Exception.Create('CEP inválido.')
    else
      Result := Copy(Result, 1, 2) + '.' + Copy(Result, 3, 3) + '-' + Copy(Result, 6, 3);
end;

function RemoverCaracteresEspeciais(aTexto: string): string;
begin
  atexto := StringReplace(atexto, '-', '', [rfReplaceAll]);
  result := atexto;
end;

Function OnlyNumbers(const texto: string): string;
var
  i: Integer;
  s: string;
begin
  s := '';
  for i := 1 to Length(texto) do
  begin
    if (texto[i] in ['0' .. '9']) then
    begin
      s := s + copy(texto, i, 1);
    end;
  end;
  Result := s;
end;

function MascaraCEP(aEdt: String): string;
var
  i: Integer;
  str: string;
begin
  aedt := OnlyNumbers(aedt);
  str := '99999-999';

  for i := 1 to Length(aedt) do
  begin
    if (str[i] = '9') and not(aedt[i] in ['0' .. '9']) and (Length(aedt) = Length(str) + 1) then
      delete(aedt, i, 1);
    if (str[i] <> '9') and (aedt[i] in ['0' .. '9']) then
      insert(str[i], aedt, i);
  end;
  Result := aedt;
end;
end.
