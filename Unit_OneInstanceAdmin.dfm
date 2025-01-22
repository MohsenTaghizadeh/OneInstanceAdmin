object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Main Form'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label_Text: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 20
    Width = 441
    Height = 31
    Margins.Top = 20
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 10
  end
  object Btn_RunAdmin: TButton
    AlignWithMargins = True
    Left = 20
    Top = 64
    Width = 407
    Height = 117
    Margins.Left = 20
    Margins.Top = 10
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alClient
    Caption = 'Run as Admin'
    TabOrder = 0
    OnClick = Btn_RunAdminClick
  end
end
