unit Lab6_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 01.06.2016 9:11:19 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\kedko\Desktop\ghdxjtyfdk,hyjgyuj\Project1 (1)
// LIBID: {3E40BD92-4422-4484-85A7-EF5536951FB8}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Lab6MajorVersion = 1;
  Lab6MinorVersion = 0;

  LIBID_Lab6: TGUID = '{3E40BD92-4422-4484-85A7-EF5536951FB8}';

  IID_IRasch: TGUID = '{7F75B039-A616-4D51-9B81-28B8AC2749D1}';
  CLASS_Rasch: TGUID = '{43436526-5A10-4DB1-8015-9A955F8B3062}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IRasch = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  Rasch = IRasch;


// *********************************************************************//
// Interface: IRasch
// Flags:     (256) OleAutomation
// GUID:      {7F75B039-A616-4D51-9B81-28B8AC2749D1}
// *********************************************************************//
  IRasch = interface(IUnknown)
    ['{7F75B039-A616-4D51-9B81-28B8AC2749D1}']
    function GetA(x: Single; y: Single; z: Single): Single; stdcall;
    function GetB(x: Single; y: Single; z: Single): Single; stdcall;
  end;

// *********************************************************************//
// The Class CoRasch provides a Create and CreateRemote method to
// create instances of the default interface IRasch exposed by
// the CoClass Rasch. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoRasch = class
    class function Create: IRasch;
    class function CreateRemote(const MachineName: string): IRasch;
  end;

implementation

uses System.Win.ComObj;

class function CoRasch.Create: IRasch;
begin
  Result := CreateComObject(CLASS_Rasch) as IRasch;
end;

class function CoRasch.CreateRemote(const MachineName: string): IRasch;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Rasch) as IRasch;
end;

end.

