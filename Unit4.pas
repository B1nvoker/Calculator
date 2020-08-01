unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    ListBox1: TListBox;
    CheckBox1: TCheckBox;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Getresult1: TMenuItem;
    Exit1: TMenuItem;
    Help1: TMenuItem;
    Aboutus1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Aboutus1Click(Sender: TObject);
    procedure Help1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1, Unit3;




procedure TForm4.Button1Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
  begin
  Label1.Caption := 'Result = ' + FloatToStr(StrToFloat(Edit1.Text) + StrToFloat(Edit2.Text));
  if (CheckBox1.Checked = true) then
  begin
  ListBox1.Items.Add(Label1.Caption);
  end;
  end;
  if RadioButton2.Checked = true then
  begin
  Label1.Caption := 'Result = ' + FloatToStr(StrToFloat(Edit1.Text) - StrToFloat(Edit2.Text));
  if (CheckBox1.Checked = true) then
  begin
  ListBox1.Items.Add(Label1.Caption);
  end;
  end;
  if RadioButton3.Checked = true then
  begin
  Label1.Caption := 'Result = ' + FloatToStr(StrToFloat(Edit1.Text) * StrToFloat(Edit2.Text));
  if (CheckBox1.Checked = true) then
  begin
  ListBox1.Items.Add(Label1.Caption);
  end;
  end;
  if RadioButton4.Checked = true then
  begin
  Label1.Caption := 'Result = ' + FloatToStr(StrToFloat(Edit1.Text) / StrToFloat(Edit2.Text));
  if (CheckBox1.Checked = true) then
  begin
  ListBox1.Items.Add(Label1.Caption);
  end;
  end;

end;

procedure TForm4.Exit1Click(Sender: TObject);
begin
  Form4.close;
end;
procedure TForm4.Aboutus1Click(Sender: TObject);
begin
  Form1.show;
end;
procedure TForm4.Help1Click(Sender: TObject);
begin
  Form3.Show;
end;

end.
