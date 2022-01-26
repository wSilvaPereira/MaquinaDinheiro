program MaquinaDinheiro;

uses
  Vcl.Forms,
  View.Principal in 'View\View.Principal.pas' {frmPrincipal},
  MaquinaDinheiro.Control in 'Control\MaquinaDinheiro.Control.pas',
  Constantes in 'Constantes\Constantes.pas',
  Troco.Control in 'Control\Troco.Control.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
