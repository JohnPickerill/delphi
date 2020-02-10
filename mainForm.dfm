object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnTitles: TButton
    Left = 32
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Titles'
    TabOrder = 0
    OnClick = btnTitlesClick
  end
  object btnVersions: TButton
    Left = 136
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Versions'
    ImageAlignment = iaRight
    TabOrder = 1
    OnClick = btnVersionsClick
  end
  object Memo1: TMemo
    Left = 16
    Top = 64
    Width = 489
    Height = 217
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object btnObject: TButton
    Left = 430
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Object'
    TabOrder = 3
    OnClick = btnObjectClick
  end
end
