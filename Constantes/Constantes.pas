unit Constantes;

interface

Type

  TCedula = (ceNota100,
             ceNota50,
             ceNota20,
             ceNota10,
             ceNota5,
             ceNota2,
             ceMoeda100,
             ceMoeda50,
             ceMoeda25,
             ceMoeda10,
             ceMoeda5,
             ceMoeda1);

  TCedulaHelper = record helper for TCedula
  Public
    Function GetValor : Extended;
  end;

implementation

{ TCedulaHelper }

function TCedulaHelper.GetValor: Extended;
begin
  case Self of
    ceNota100   : Result := 100;
    ceNota50    : Result := 50;
    ceNota20    : Result := 20;
    ceNota10    : Result := 10;
    ceNota5     : Result := 5;
    ceNota2     : Result := 2;
    ceMoeda100  : Result := 1;
    ceMoeda50   : Result := 0.5;
    ceMoeda25   : Result := 0.25;
    ceMoeda10   : Result := 0.10;
    ceMoeda5    : Result := 0.05;
    ceMoeda1    : Result := 0.01;
    else
      Result := 0;
  end;
end;

end.
