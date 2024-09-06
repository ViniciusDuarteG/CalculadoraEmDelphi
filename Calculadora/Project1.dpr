program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit6 in 'Unit6.pas' {Calculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCalculadora, Calculadora);
  Application.Run;
end.
