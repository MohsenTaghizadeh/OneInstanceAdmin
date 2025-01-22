program OneInstanceAdmin;

uses
  Forms,
  Windows,
  Vcl.Dialogs,
  Unit_OneInstanceAdmin in 'Unit_OneInstanceAdmin.pas' {MainForm};

{$R *.res}

var
  Mutex: THandle;
  MyMsg: Cardinal;
  Txt_RegisterWindowMessage: pwidechar;

begin
  try
    Txt_RegisterWindowMessage := 'My Program Register Window Message';

    MyMsg := RegisterWindowMessage(Txt_RegisterWindowMessage);
    Mutex := CreateMutex(nil, False, Txt_RegisterWindowMessage);

    if GetLastError = ERROR_ALREADY_EXISTS then
    begin
      ShowMessage('The application is running !' + #13 +
        'Can''t run the second instance of application.');

      SendMessage(HWND_BROADCAST,
        RegisterWindowMessage(Txt_RegisterWindowMessage), 0, 0);

      ReleaseMutex(Mutex);
      CloseHandle(Mutex);
      Application.Terminate;
      Exit;
    end
    else
    begin
      Application.Initialize;
      Application.CreateForm(TMainForm, MainForm);
  Application.Run;
    end;
  finally
    if Mutex <> 0 then
    begin
      ReleaseMutex(Mutex);
      CloseHandle(Mutex);
    end;
  end;

end.
