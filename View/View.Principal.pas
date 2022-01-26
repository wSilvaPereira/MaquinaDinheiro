unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnGetTroco: TButton;
    edtTroco: TEdit;
    memTroco: TMemo;
    procedure btnGetTrocoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  MaquinaDinheiro.Control,
  Troco.Control;

{$R *.dfm}

procedure TfrmPrincipal.btnGetTrocoClick(Sender: TObject);
var
  vTroco : Double;
  vLista : TInterfaceList;
  Item : IInterface;
//  vTrocoItem : iTroco;
begin
  memTroco.Lines.Clear;
  if TryStrToFloat(edtTroco.Text, vTroco) then
  begin
    vLista := TMaquina.New.MontarTroco(vTroco);
    for Item in vLista do
    begin
//      vTrocoItem := iTroco(item);
      memTroco.Lines.Add(iTroco(item).ToString);
    end;
      
  end;
end;

end.
