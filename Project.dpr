program Project;

uses
  Vcl.Forms,
  unt in 'unt.pas' {Frm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm, Frm);
  Application.Run;
end.
