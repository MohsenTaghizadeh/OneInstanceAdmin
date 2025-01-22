# OneInstanceAdmin
A Delphi project to ensure single-instance execution with administrator privileges

## Features
- OneInstanceAdmin.dpr: Restricts the application to a single running instance.
- Unit_OneInstanceAdmin.pas: It checks if the application is running with administrator privileges and allows the program to be run as admin.

## How It Works
- A mutex is used to prevent multiple instances of the program from running simultaneously.
- Windows API functions are utilized to check if the program is running with elevated (admin) privileges.


## Usage
Run OneInstanceAdmin.exe OR Clone the repository / Open the project in your Delphi IDE / Build and run the application.
