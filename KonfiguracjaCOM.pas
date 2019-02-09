unit KonfiguracjaCOM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, LED, ExtCtrls, Grids, Calendar, DsLed, Buttons;

type
  TMainForm = class(TForm)
    Konfiguracja: TMainMenu;
    Port: TMenuItem;
    COM: TMenuItem;
    Wyswietlacz: TMenuItem;
    Digital: TMenuItem;
    Graf: TMenuItem;
    LabelPort: TLabel;
    LabelData: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    Break: TBitBtn;
    TimerPomiaru: TMenuItem;
    Start: TBitBtn;
    MenuFile: TMenuItem;
    MenuExit: TMenuItem;
    MenuClose: TMenuItem;
    Label2DataTime: TLabel;
    Bevel2: TBevel;

    procedure COMClick(Sender: TObject);
    procedure GrafClick(Sender: TObject);
    procedure DigitalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BreakClick(Sender: TObject);
    procedure TimerPomiaruClick(Sender: TObject);
    procedure OnClose(Sender: TObject);
    procedure StartClick(Sender: TObject);
    procedure MenuCloseClick(Sender: TObject);

  private

    { Private declarations }
  public
    { Public declarations }
  end;
  {Zmienne globalne programu}
   const
  Format = ' yyyy mm dd hh nn ss';  // Format daty i czasu
  //------Dtr--Controll--------
  DTR_Control_Enable =$0010;
  DTR_Control_Handshake = $0020;

  var
  MainForm: TMainForm;
  COM              :String[4];
  hCOM             :THandle;
  DateTime   :TDateTime;
  Result,Wynik     :string;
  nrWrit,nrRead,Errors : DWORD;
Dcb                  : TDcb;
ComStat              :TComStat;
buf                  :array[0..14] of Char;
i                    :Integer;
Stop                 :Boolean;
lpFileName          :PChar;

  implementation

uses OpenCOM1_3, Unit1, DihgitalEkran, GraphEkran, Timer;


{$R *.DFM}

procedure TMainForm.FormCreate(Sender: TObject);
begin Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
DateTime:=Now;{Do zmiennej DateTime przypisano nowy Czas i Date}
DateTimeToString(Result,Format,DateTime);{ Konwersja wartosci data czas na string}
              {wyswietlenia na etykiecie}
MainForm.LabelData.Caption :='Data/Czas'+ Result;
Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow

  end;




procedure TMainForm.OnClose(Sender: TObject);
begin
 Stop:=True;
 ComStat.cbInQue:=0;
 Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
 CloseHandle(hCOM);
 MainForm.LEDLabel.Color:=lcGreen;
MainForm.LEDLabel.Caption:='CLOSE';
Application.MainForm.Close;
end;




procedure TMainForm.MenuCloseClick(Sender: TObject);
begin
Stop:= True;
ComStat.cbInQue:=0;


Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
SecondForm1.Close;
MainForm.LEDLabel.Color:=lcGreen;
MainForm.LEDLabel.Caption:='CLOSE';
MainForm.Label1.Caption:='Koniec Pomiaru ';
Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
  CloseHandle(hCOM);
  Application.Terminate();
end;




procedure TMainForm.BreakClick(Sender: TObject);


begin

   Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
   Stop:= True;

   ComStat.cbInQue:=0;

    Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
   MainForm.Break.Visible:=False;
   MainForm.Start.Visible:=True;

end;

procedure TMainForm.StartClick(Sender: TObject);
begin

 Stop:= False;
Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
 MainForm.Break.Visible:=True;
 MainForm.Start.Visible:=False;
Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
end;

procedure TMainForm.COMClick(Sender: TObject);



begin
       {Otwarcie Forma z wyborem COM-a}

       SecondForm1.Show;
CloseHandle(hCOM);
Start.Visible:=False;
Break.Visible:=True;

end;



 {Otwarcie Forma Graph - pomiar w formie wykresu}
procedure TMainForm.GrafClick(Sender: TObject);
begin
SecondForm3.Show;
end;
{Otwarcie Forma Digital - pomiar widoczny na wyswietlaczu}
procedure TMainForm.DigitalClick(Sender: TObject);
begin
SecondForm2.Show ;
end;




procedure TMainForm.TimerPomiaruClick(Sender: TObject);
begin
SecondFormTime.show;
end;






end.
