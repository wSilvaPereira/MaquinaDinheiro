unit MaquinaDinheiro.Control;

interface

uses
  System.Classes,
  System.SysUtils;

type

  IMaquina = interface
    ['{647E851A-4E21-41F3-BDD1-1B1A4851A14B}']
    function MontarTroco(Troco: Extended): TInterfaceList;
  end;

  TMaquina = Class(TInterfacedObject, IMaquina)
  Private
    fLista : TInterfaceList;
  Public
    Constructor Create;
    Destructor Destroy; Override;
    function MontarTroco(Troco: Extended): TInterfaceList;

    Class Function New : IMaquina;
  End;

implementation

uses
  Constantes,
  Dialogs,
  System.Math,
  Troco.Control;

{ TMaquina }

constructor TMaquina.Create;
begin
  fLista := TInterfaceList.Create;
end;

destructor TMaquina.Destroy;
begin
  fLista.Free;
  inherited;
end;

function TMaquina.MontarTroco(Troco: Extended): TInterfaceList;
var
  vValor : Extended;

  Cedulas : TCedula;

  procedure GetCedulas(pCedula : TCedula);
  var
    vQuantidade : Integer;
  begin
    vQuantidade := Trunc(vValor / pCedula.GetValor);
    if vQuantidade > 0 then
      fLista.Add(TTroco.new(pCedula).SetQuantidade(vQuantidade));

    vValor := RoundTo(vValor - (vQuantidade * pCedula.GetValor), -2);
  end;

begin
  Result := fLista;
  vValor := Troco;

  for Cedulas := Low(TCedula) to high(TCedula) do
    GetCedulas(Cedulas);
end;

class function TMaquina.New: IMaquina;
begin
  Result := Self.Create;
end;

end.
