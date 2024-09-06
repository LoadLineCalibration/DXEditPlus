unit DXEditPlus.Helpers;

interface

uses
    Winapi.Windows;

function GetDPIAsRatio(): Single;


implementation

function GetDPIAsRatio(): Single;
var
    DC: HDC;
begin
    DC := GetDC(0);
    Result := GetDeviceCaps(DC, LOGPIXELSX) / 96.0;
    ReleaseDC(0, DC);
end;


end.
