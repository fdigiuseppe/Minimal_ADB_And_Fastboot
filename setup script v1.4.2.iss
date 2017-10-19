; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Minimal ADB and Fastboot"
#define MyAppVersion "1.4.2"
#define MyAppPublisher "Sam Rodberg"
#define MyAppURL "https://forum.xda-developers.com/showthread.php?t=2317790"
#define MyAppExeName "cmd-here.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1901BAF7-7E78-4041-BC88-D0EE5DD1DFD9}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4.2\Disclaimer.txt
OutputDir=D:\Development Files\Minimal ADB and Fastbot Project\setups
OutputBaseFilename=minimal_adb_fastboot_v1.4.2_setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4.2\cmd-here.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4.2\adb.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4.2\AdbWinApi.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4.2\AdbWinUsbApi.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4.2\cmd-here.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4.2\Disclaimer.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\Development Files\Minimal ADB and Fastbot Project\resources\Version 1.4.2\fastboot.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

