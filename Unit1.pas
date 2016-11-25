unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, XPMan, StdCtrls, Spin;

type
  TForm1 = class(TForm)
    lessont: TLabel;
    btn: TButton;
    lose: TLabel;
    xpmnfst1: TXPManifest;
    tlose: TTimer;
    tlesson: TTimer;
    tmr1: TTimer;
    se1: TSpinEdit;
    se2: TSpinEdit;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    m: TMemo;
    procedure tloseTimer(Sender: TObject);
    procedure tlessonTimer(Sender: TObject);
    procedure btnClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  losee,lesonn:integer;
  a:Boolean;
implementation


{$R *.dfm}

procedure TForm1.tloseTimer(Sender: TObject);
begin
losee:=losee+1;

end;

procedure TForm1.tlessonTimer(Sender: TObject);
begin
lesonn:=lesonn+1;

end;

procedure TForm1.btnClick(Sender: TObject);
begin
tlose.Enabled:=not(tlose.Enabled);
tlesson.Enabled:=not(tlesson.Enabled);
end;

procedure TForm1.tmr1Timer(Sender: TObject);
var h,m,s:Integer;
begin
h :=  lesonn div (60*60)  ;
m :=  (lesonn div 60) mod 60;
s :=  lesonn mod 60;
lessont.Caption:= IntToStr(h)+' : '+IntToStr(m)+' : '+IntToStr(s);

h :=  losee div (60*60)  ;
m :=  (losee div 60) mod 60;
s :=  losee mod 60;
lose.Caption:= IntToStr(h)+' : '+IntToStr(m)+' : '+IntToStr(s);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
lesonn:=0;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
losee:=0;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
lesonn:=se1.Value;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
losee:=se2.Value;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
if not(a) then Form1.Height:=Form1.Height+250
else Form1.Height:=form1.Height-250;
a:=not(a);
m.Visible:=not(m.Visible);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
if FileExists('x.dll') then
m.Lines.LoadFromFile('x.dll')
else m.Lines.SaveToFile('x.dll');
m.Lines.LoadFromFile('x.dll');

if m.Lines.Count >2 then begin
lesonn:=StrToInt(m.Lines[0]);
losee:=StrToInt(m.Lines[1]);
end;
m.Lines[0]:='';
m.Lines[1]:='';
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if m.Lines.Count < 2 then begin
m.Lines.Add(IntToStr(lesonn));
m.Lines.Add(IntToStr(losee));
end
else
begin
m.Lines[0]:=IntToStr(lesonn);
m.Lines[1]:=IntToStr(losee);
end;
m.Lines.Add('------------------------------');
m.Lines.Add('     ++++++++++++++++++');
m.Lines.Add('------------------------------');
m.Lines.SaveToFile('x.dll');
end;

end.
