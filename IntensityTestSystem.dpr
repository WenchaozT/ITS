program IntensityTestSystem;

uses
  Forms,
  LTSMAIN in 'LTSMAIN.PAS' {SDIAppForm},
  About in 'ABOUT.PAS' {AboutBox},
  Setting in 'Setting.pas' {SettingForm},
  Data in 'Data.pas' {DataForm},
  chartf2 in 'chartf2.pas' {form2},
  CommonMethods in 'CommonMethods.pas',
  Calibrate in 'Calibrate.pas' {calibform},
  Unit1 in 'Unit1.pas' {Form1},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TSDIAppForm, SDIAppForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TDataForm, DataForm);
  Application.CreateForm(Tform2, form2);
  Application.CreateForm(TSettingForm, SettingForm);
  Application.CreateForm(Tcalibform, calibform);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
 
