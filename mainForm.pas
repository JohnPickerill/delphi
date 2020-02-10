unit mainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Comp_TLB;

type
  TDocObj = record
    uuid: string;
    size: integer;
  end;

  pTDocObj = ^TDocObj;


  TForm1 = class(TForm)
    btnTitles: TButton;
    btnVersions: TButton;
    Memo1: TMemo;
    btnObject: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnTitlesClick(Sender: TObject);
    procedure btnVersionsClick(Sender: TObject);
    procedure btnObjectClick(Sender: TObject);
  private
    { Private declarations }
  public
    DotNetClass: OleVariant;
    jo : _ComClassExample;
  end;

var
  Form1: TForm1;

implementation

uses
  ComObj;
{$R *.dfm}



procedure TForm1.btnVersionsClick(Sender: TObject);
var
  versions : array of string;
  version : string;
begin
    Memo1.Lines.Clear;
    versions := DotNetClass.getTitles;
    for version in versions do
      begin
        Memo1.Lines.Add(version);
      end;
end;

procedure TForm1.btnObjectClick(Sender: TObject);
var
  _object : pTDocObj;
begin
    Memo1.Lines.Clear;
    _object := jo.getObject('title1','doc1','1000','1');
end;


procedure TForm1.btnTitlesClick(Sender: TObject);
var
  i : Integer;
  titles : OleVariant;
  title : string;
begin
  titles := DotNetClass.getTitles;
  Memo1.Lines.Clear;
  for i := VarArrayLowBound(titles, 1) to VarArrayHighBound(titles, 1) do
    begin
      Memo1.Lines.Add(titles[i]);
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   DotNetClass := CreateOleObject('ComP.ComClassExample');
   jo := CoComClassExample.Create() as _ComClassExample;
end;

end.
