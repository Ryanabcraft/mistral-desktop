[Setup]
AppName=Mistral Chat Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/mistral-desktop
AppSupportURL=https://github.com/Ryanabcraft/mistral-desktop/issues
DefaultDirName={localappdata}\Mistral Chat Desktop
DefaultGroupName=Mistral Chat Desktop
UninstallDisplayIcon={app}\Mistral.exe
UninstallDisplayName=Mistral Chat Desktop
OutputDir=dist_installer
OutputBaseFilename=Mistral-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Mistral.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Mistral Chat"; Filename: "{app}\Mistral.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Mistral Chat Desktop"; Filename: "{app}\Mistral.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Mistral Chat Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Mistral.exe"; Description: "Executar Mistral Chat Desktop"; Flags: postinstall nowait skipifsilent
