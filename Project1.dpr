library Project1;

uses
  ComServ,
  Lab6_TLB in 'Lab6_TLB.pas',
  Unit1 in 'Unit1.pas' {Rasch: CoClass};

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.TLB}

{$R *.RES}

begin
end.
