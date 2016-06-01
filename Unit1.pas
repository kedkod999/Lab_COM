unit Unit1;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, ComObj, Lab6_TLB, StdVcl, Math;

type
  TRasch = class(TTypedComObject, IRasch)
  protected
    function GetA(x, y, z: Single): Single; stdcall;
    function GetB(x, y, z: Single): Single; stdcall;
  end;

implementation

uses ComServ;

function TRasch.GetA(x, y, z: Single): Single;
begin
  Result:=Sin(y)*Power(z,2)-x/y*Cos(z);
end;

function TRasch.GetB(x, y, z: Single): Single;
begin
  Result:=Sin(x)*Power(y,3)-z/x*y;
end;

initialization
  TTypedComObjectFactory.Create(ComServer, TRasch, Class_Rasch,
    ciMultiInstance, tmApartment);
end.
