unit Troco.Control;

interface

Uses
  Constantes;

Type

  iTroco = interface
    ['{C6054210-D946-4E9F-B4FA-19B4708F6406}']
    function GetTipo: TCedula;
    function GetQuantidade: Integer;
    function SetQuantidade(Quantidade: Integer) : iTroco;

    Function ToString : String;
  end;

  TTroco = class(TInterfacedObject, iTroco)
  private
    FTipo: TCedula;
    FQuantidade: Integer;
  public
    constructor Create(Tipo: TCedula);
    function GetTipo: TCedula;
    function GetQuantidade: Integer;
    function SetQuantidade(Quantidade: Integer) : iTroco;

    Class Function New(Tipo: TCedula) : iTroco;

    Function ToString : String; Override;
  end;

implementation

uses
  System.SysUtils;

{ TTroco }

constructor TTroco.Create(Tipo: TCedula);
begin
  FTipo := Tipo;
end;

function TTroco.GetQuantidade: Integer;
begin
  Result := FQuantidade;
end;

function TTroco.GetTipo: TCedula;
begin
  Result := FTipo;
end;

class function TTroco.New(Tipo: TCedula): iTroco;
begin
  Result := Self.Create(Tipo);
end;

function TTroco.SetQuantidade(Quantidade: Integer) : iTroco;
begin
  Result := Self;
  FQuantidade := Quantidade;
end;

function TTroco.ToString: String;
begin
  Result := FormatFloat('R$ 000.00', GetTipo.GetValor) + ' - Qtde: ' + FormatFloat('000', GetQuantidade) + ' = ' + FormatFloat('R$ 000.00', GetTipo.GetValor * GetQuantidade);
end;

end.
