# OneInstanceAdmin
A Delphi project to ensure single-instance execution with administrator privileges

## Features
- Restricts the application to a single running instance.
- Verifies if the application is running with administrator privileges.
- Prompts for administrator rights if not already running as admin.

## How It Works
- A mutex is used to prevent multiple instances of the program from running simultaneously.
- Windows API functions are utilized to check if the program is running with elevated (admin) privileges.


## Usage
1. Run OneInstanceAdmin.exe
2.1. Clone the repository.
2.2. Open the project in your Delphi IDE.
2.3. Build and run the application.
