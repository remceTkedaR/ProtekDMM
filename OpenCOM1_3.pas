unit OpenCOM1_3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,DsLed,LED, ExtCtrls;

type
  TSecondForm1 = class(TForm)
    RadioButtonCOM1: TRadioButton;
    RadioButtonCOM2: TRadioButton;
    RadioButtonCOM3: TRadioButton;
    OK: TButton;
    LabelWskazCom: TLabel;
    Bevel1: TBevel;
    procedure OKClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  SecondForm1: TSecondForm1;

implementation

uses KonfiguracjaCOM, Timer, DihgitalEkran, GraphEkran;

{$R *.DFM}

procedure TSecondForm1.OKClick(Sender: TObject);
 begin
if RadioButtonCOM1.Checked=true then
begin
SecondForm1.Visible:=False;
lpFileName :='COM1';
 end;


if RadioButtonCOM2.Checked= true then
begin
SecondForm1.Visible:=False;
lpFileName:='COM2';
end ;


if RadioButtonCOM3.Checked= true then
begin
SecondForm1.Visible:=False;
lpFileName:='COM3';
end ;


  begin

 {Otrarcie ³¹cza COM}
 hCOM:= CreateFile(lpFileName,GENERIC_WRITE OR GENERIC_READ,0,NIL,OPEN_EXISTING,FILE_FLAG_OVERLAPPED,0);
  {USTAWIENIE PARAMETROW TRANSMISJI -JAK MODE W DOS-ie}
  if hCOM <> INVALID_HANDLE_VALUE then
  begin

 MainForm.LEDLabel.Color:=lcRed;
 MainForm.LEDLabel.Caption:= 'OPEN  '+lpFileName;
 Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow

    //Odczytanie nastaw z COM-a
 GetCommState(hCOM,Dcb);

  //Ladowanie nowych ustawien  COM-a do rekordu Dcb
  with Dcb do
  begin
   Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
  BaudRate := 1200;
  ByteSize:=7;
  Parity := 0;
  StopBits := 2;
  EOFChar :=#10;
  SetCommState(hCOM,Dcb); //Zapisanie zmian do COM-a

   end;
  end
  else
  begin
  ShowMessage('B³¹d otwarcia portu COM: '+IntToStr(GetLastError()));
  Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
  Exit;
  end;
(****************************************************************)
(**************************************************)
begin
 ZeroMemory(@buf,SizeOf(buf));
 Stop:= False;
  Application.ProcessMessages;   //Pzwalamy na obsluzenie komunikatow
 end;



            //Rozpoczêcie petli pomiarowej
   repeat
   Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
   while not Stop do
   begin



                         if i = 0 then
            sleep(965)     //Stala czasowa probkowania jesli nie wbrano w Timie
            else  sleep(965*i); //Stala czsowa po wybraniu z Tima


            Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
              {Sprawdzenie czy cos jest w buforze COM}
          ClearCommError(hCOM,Errors,@ComStat);
    (**************************************************)
     { Gdy niema jescze nic w buforze}
           Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
           if ComStat.cbInQue =0 then

            StrCopy(buf,'Protek 506' );
            Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
             { Zapis byfora}
          if not WriteFile(hCOM,buf,StrLen(buf),nrWrit,nil)then
         ShowMessage('B³¹d zapisu do portu COM.');
 Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
 (*****************************************)
  {Gdy wykreto dane w buforze}
          {Odczyt bufora gdy sa dane}
          if ComStat.cbInQue >0 then
       MainForm.DsLed1.LEDColor:=coRed;
              Sleep(20);
           ReadFile(hCOM,buf,ComStat.cbInQue,nrRead,nil);
 Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
           WriteFile(hCOM,buf,StrLen(buf),nrWrit,nil);
Application.ProcessMessages;

 Application.ProcessMessages;
             DateTime:= Now;
             DateTimeToString(Result,Format,DateTime);
Application.ProcessMessages;
           MainForm.Label2DataTime.Caption:= Result;
           Wynik:=buf;

           MainForm.Label1.Caption :=Wynik; // Wyswietlenie wyniku
 Application.ProcessMessages;
           SecondForm2.IAeverLiquidIndicator1.Indicatorstring := Wynik;
           MainForm.DsLed1.LEDColor:=coBlue;

Application.ProcessMessages;  //Pzwalamy na obsluzenie komunikatow
           ZeroMemory(@buf,SizeOf(buf));
          end

         Until  ComStat.cbInQue <= 0 ; // Warunek zakonczenia petli


           MainForm.Label1.Caption :='Koniec Pomiaru';
Application.ProcessMessages;
                        //Zamkniecie formu  dialogowego z COM-ami
             SecondForm1.Visible:=True;     // Przywracam poczadkowa wartosc
              SecondForm1.Close;






     end;
      end;
end.

