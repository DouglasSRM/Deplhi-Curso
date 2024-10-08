unit Timer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.MPlayer, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  Tf_timer = class(TForm)
    lb_minutos: TLabel;
    lb_segundos: TLabel;
    lb_1: TLabel;
    t_tempo: TTimer;
    MediaPlayer1: TMediaPlayer;
    btn_play: TSpeedButton;
    btn_abrir: TButton;
    OpenDialog1: TOpenDialog;
    txt_tempo: TEdit;
    procedure t_tempoTimer(Sender: TObject);
    procedure btn_playClick(Sender: TObject);
    procedure btn_abrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_timer: Tf_timer;

implementation

{$R *.dfm}

procedure Tf_timer.btn_abrirClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    MediaPlayer1.FileName := OpenDialog1.FileName;
    btn_play.Enabled := true;
  end;
end;

procedure Tf_timer.btn_playClick(Sender: TObject);
begin
  t_tempo.Enabled := true;
end;

procedure Tf_timer.t_tempoTimer(Sender: TObject);
  var seg, min, cont: Integer;
begin
  seg := strToInt(lb_segundos.Caption);
  min := strToInt(lb_minutos.Caption);
  cont := seg + 1;

  lb_segundos.Caption := intToStr(cont);

  if (lb_segundos.Caption = '60') then
  begin
    lb_segundos.Caption := '0';
    lb_minutos.Caption := intToStr(strToInt(lb_minutos.Caption)+1);
  end;

  if lb_segundos.Caption = txt_tempo.Text then
  begin
    t_tempo.Enabled := false;
    MediaPlayer1.Open;
    MediaPlayer1.Play;
    btn_play.Enabled := false;
    lb_segundos.Caption := '0';
    lb_minutos.Caption := '0';
    txt_tempo.Text := '';
  end;

end;

end.
