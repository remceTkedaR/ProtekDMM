unit Timer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TSecondFormTime = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    EditCzas: TEdit;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    Label2: TLabel;
    Bevel2: TBevel;
    procedure BitBtnOkClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SecondFormTime: TSecondFormTime;

implementation

uses KonfiguracjaCOM, DihgitalEkran, GraphEkran, OpenCOM1_3;

{$R *.DFM}

procedure TSecondFormTime.BitBtnOkClick(Sender: TObject);
var
EditTime :String;
begin
EditTime:= EditCzas.Text;
i:= StrToInt(EditTime);

Application.ProcessMessages;
SecondFormTime.Close;
end;

procedure TSecondFormTime.BitBtnCancelClick(Sender: TObject);
begin
SecondFormTime.Close;

end;

end.
