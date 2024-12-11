#pragma once

#include once "setupapi.bi"
#include once "pshpack1.bi"
#include once "poppack.bi"

const INSTALLFLAG_FORCE = &h00000001
const INSTALLFLAG_READONLY = &h00000002
const INSTALLFLAG_NONINTERACTIVE = &h00000004
const INSTALLFLAG_BITS = &h00000007
'' TODO: WINBOOL WINAPI UpdateDriverForPlugAndPlayDevicesA( HWND hwndParent, LPCSTR HardwareId, LPCSTR FullInfPath, DWORD InstallFlags, PBOOL bRebootRequired OPTIONAL);
'' TODO: WINBOOL WINAPI UpdateDriverForPlugAndPlayDevicesW( HWND hwndParent, LPCWSTR HardwareId, LPCWSTR FullInfPath, DWORD InstallFlags, PBOOL bRebootRequired OPTIONAL);
#define UpdateDriverForPlugAndPlayDevices UpdateDriverForPlugAndPlayDevicesA
const DIIDFLAG_SHOWSEARCHUI = &h00000001
const DIIDFLAG_NOFINISHINSTALLUI = &h00000002
const DIIDFLAG_INSTALLNULLDRIVER = &h00000004
const DIIDFLAG_BITS = &h00000007
const DIIRFLAG_INF_ALREADY_COPIED = &h00000001
const DIIRFLAG_FORCE_INF = &h00000002
const DIIRFLAG_HW_USING_THE_INF = &h00000004
const DIIRFLAG_HOTPATCH = &h00000008
const DIIRFLAG_NOBACKUP = &h00000010
const DIIRFLAG_BITS = DIIRFLAG_FORCE_INF or DIIRFLAG_HOTPATCH
const DIIRFLAG_SYSTEM_BITS = (((DIIRFLAG_INF_ALREADY_COPIED or DIIRFLAG_FORCE_INF) or DIIRFLAG_HW_USING_THE_INF) or DIIRFLAG_HOTPATCH) or DIIRFLAG_NOBACKUP
const ROLLBACK_FLAG_NO_UI = &h00000001
const ROLLBACK_BITS = &h00000001

'' TODO: WINBOOL WINAPI DiInstallDevice( HWND hwndParent OPTIONAL, HDEVINFO DeviceInfoSet, PSP_DEVINFO_DATA DeviceInfoData, PSP_DRVINFO_DATA DriverInfoData OPTIONAL, DWORD Flags, PBOOL NeedReboot OPTIONAL);
'' TODO: WINBOOL WINAPI DiShowUpdateDevice( HWND hwndParent OPTIONAL, HDEVINFO DeviceInfoSet, PSP_DEVINFO_DATA DeviceInfoData, DWORD Flags, PBOOL NeedReboot OPTIONAL);
'' TODO: WINBOOL WINAPI DiRollbackDriver( HDEVINFO DeviceInfoSet, PSP_DEVINFO_DATA DeviceInfoData, HWND hwndParent OPTIONAL, DWORD Flags, PBOOL NeedReboot OPTIONAL);
'' TODO: WINBOOL WINAPI DiInstallDriverW( HWND hwndParent OPTIONAL, LPCWSTR InfPath, DWORD Flags, PBOOL NeedReboot OPTIONAL);
'' TODO: WINBOOL WINAPI DiInstallDriverA( HWND hwndParent OPTIONAL, LPCSTR InfPath, DWORD Flags, PBOOL NeedReboot OPTIONAL);
#define DiInstallDriver DiInstallDriverA
'' TODO: WINBOOL WINAPI DiUninstallDevice( HWND hwndParent, HDEVINFO DeviceInfoSet, PSP_DEVINFO_DATA DeviceInfoData, DWORD Flags, PBOOL NeedReboot OPTIONAL);