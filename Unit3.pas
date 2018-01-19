unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Buttons, StdCtrls, IniFiles, Math;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    TrackBar1: TTrackBar;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Timer1: TTimer;
    Label3: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  pathINI:string;
  sIniFile: TIniFile;
implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  OpenDialog1.InitialDir:=pathINI;
  if OpenDialog1.Execute   then
  begin
      edt1.Clear;
      edt1.Text:= OpenDialog1.FileName ;// OpenDialog1.Destroy
  end;
end;


procedure TForm3.FormCreate(Sender: TObject);
begin
   pathINI:=extractfilepath(application.ExeName)+'\config.ini';
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
  if    Length(OpenDialog1.FileName) >= 5 then
      begin
         sIniFile := TIniFile.Create(pathINI);
         sIniFile.WriteString('ALLCONFIG_YBEEX', 'Dirbd', edt1.Text);
         sIniFile.WriteInteger('ALLCONFIG_YBEEX', 'Sin', TrackBar1.Position);
         //-------------------------------------------------------------------
         sIniFile.Free;
      end
      else
      begin
      Beep;
      edt1.SetFocus;
      end;

end;

procedure TForm3.Timer1Timer(Sender: TObject);
var
  Post:Integer;
begin
  post:=Round(TrackBar1.Position/1000);
 Label3.Caption:=IntToStr(post) + ' сек' ;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.FormShow(Sender: TObject);
begin

if FileExists(pathINI) then
   begin
     sIniFile := TIniFile.Create(pathINI);
     edt1.Text:=sIniFile.ReadString('ALLCONFIG_YBEEX', 'Dirbd', ' ');
     TrackBar1.Position:=sIniFile.readInteger('ALLCONFIG_YBEEX', 'Sin', 0);
     sIniFile.Free;
   end
else showmessage('Error -001');
end;

end.
