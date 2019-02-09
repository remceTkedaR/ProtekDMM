unit GraphEkran;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, IAeverLiquidIndicator;

type
  TSecondForm2 = class(TForm)
    IAeverLiquidIndicator1: TIAeverLiquidIndicator;
    Memo1: TMemo;
    Bagraf: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SecondForm2: TSecondForm2;

implementation

uses Unit1, KonfiguracjaCOM;

{$R *.DFM}


end.
