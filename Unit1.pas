unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, ComCtrls, ComObj;

type
  TForm1 = class(TForm)
    SpeedButton: TSpeedButton;
    ComboBox: TComboBox;
    ComboBox1: TComboBox;
    GroupBox: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StatusBar: TStatusBar;
    MainMenu: TMainMenu;
    N3: TMenuItem;
    procedure Label3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm1.Label3Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  Excel: Variant;
begin

  Excel := CreateOleObject('Excel.Application');
  Excel.Workbooks.Open[form3.edt1.Text, 0, True];
  Excel.Visible := False;


                   ComboBox.Items.Add(Excel.Range['G80']);


  Excel.ActiveWorkbook.Close;
  Excel.Application.Quit;
end;

procedure TForm1.ComboBoxChange(Sender: TObject);
begin
//sd
end;

end.
