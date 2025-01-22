unit Unit_OneInstanceAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

const
  WM_MY_MESSAGE = WM_USER + 1;

type
  TMainForm = class(TForm)
    Btn_RunAdmin: TButton;
    Label_Text: TLabel;
    procedure Btn_RunAdminClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  ShellAPI;

function IsRunAsAdmin: Boolean;
var
  hToken: THandle;
  TokenInformation: TTokenElevation;
  ReturnLength: DWORD;
begin
  Result := False;

  if OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, hToken) then
    try
      if GetTokenInformation(hToken, TokenElevation, @TokenInformation,
        SizeOf(TTokenElevation), ReturnLength) then
        Result := TokenInformation.TokenIsElevated <> 0;
    finally
      CloseHandle(hToken);
    end;
end;

procedure TMainForm.Btn_RunAdminClick(Sender: TObject);
begin
  ShellExecute(Handle, 'runas', 'OneInstanceAdmin.exe', nil, nil, SW_SHOWNORMAL);

  MainForm.Close;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  if IsRunAsAdmin then
  begin
    Label_Text.Caption := 'The program is running as Administrator';
    Label_Text.Font.Color:= clGreen;
  end
  else
  begin
    Label_Text.Caption := 'The program is NOT running as Administrator';
    Label_Text.Font.Color:= clRed;
  end;
end;

end.
