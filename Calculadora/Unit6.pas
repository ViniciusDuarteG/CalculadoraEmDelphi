unit Unit6;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TCalculadora = class(TForm)
    btn_0zero: TButton;
    btn_1um: TButton;
    btn_3tres: TButton;
    btn_5cinco: TButton;
    btn_4quatro: TButton;
    btn_6seis: TButton;
    btn_7sete: TButton;
    btn_8oito: TButton;
    btn_9nove: TButton;
    btn_2dois: TButton;
    btn_igual: TButton;
    btn_ponto: TButton;
    btn_soma: TButton;
    btn_subtrair: TButton;
    btn_multi: TButton;
    btn_dividir: TButton;
    caixa_botoes: TLayout;
    caixa_topo: TLayout;
    lb_operador: TLabel;
    lb_num1: TLabel;
    lb_num2: TLabel;
    lb_resultado: TLabel;
    lb_igual: TLabel;
    btn_limpar: TButton;
    btn_limpar_td: TButton;
    btn_limpar1: TButton;
    procedure btn_somaClick(Sender: TObject);
    procedure btn_subtrairClick(Sender: TObject);
    procedure btn_multiClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1umClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_limpar_tdClick(Sender: TObject);
    procedure btn_2doisClick(Sender: TObject);
    procedure btn_3tresClick(Sender: TObject);
    procedure btn_4quatroClick(Sender: TObject);
    procedure btn_5cincoClick(Sender: TObject);
    procedure btn_6seisClick(Sender: TObject);
    procedure btn_7seteClick(Sender: TObject);
    procedure btn_8oitoClick(Sender: TObject);
    procedure btn_9noveClick(Sender: TObject);
    procedure btn_0zeroClick(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure btn_limpar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calculadora: TCalculadora;

implementation

{$R *.fmx}

procedure TCalculadora.btn_0zeroClick(Sender: TObject);
  begin
  if lb_operador.Text = '.' then
    begin
        lb_num1.text := lb_num1.Text +  '0'
    end

  else
    begin
        lb_num2.text := lb_num2.Text +  '0'
    end;
end;

procedure TCalculadora.btn_1umClick(Sender: TObject);
  begin
  if lb_operador.Text = '.' then
    begin
        lb_num1.text := lb_num1.Text +  '1'
    end

  else
    begin
        lb_num2.text := lb_num2.Text +  '1'
    end;
end;

procedure TCalculadora.btn_2doisClick(Sender: TObject);
  begin
  if lb_operador.Text = '.' then
    begin
        lb_num1.text := lb_num1.Text +  '2'
    end

  else
    begin
        lb_num2.text := lb_num2.Text +  '2'
    end;
end;

procedure TCalculadora.btn_3tresClick(Sender: TObject);
  begin
  if lb_operador.Text = '.' then
    begin
        lb_num1.text := lb_num1.Text +  '3'
    end

  else
    begin
        lb_num2.text := lb_num2.Text +  '3'
    end;
end;

procedure TCalculadora.btn_4quatroClick(Sender: TObject);
  begin
  if lb_operador.Text = '.' then
    begin
        lb_num1.text := lb_num1.Text +  '4'
    end

  else
    begin
        lb_num2.text := lb_num2.Text +  '4'
    end;
end;

procedure TCalculadora.btn_5cincoClick(Sender: TObject);
  begin
  if lb_operador.Text = '.' then
    begin
        lb_num1.text := lb_num1.Text +  '5'
    end

  else
    begin
        lb_num2.text := lb_num2.Text +  '5'
    end;
end;

procedure TCalculadora.btn_6seisClick(Sender: TObject);
  begin
  if lb_operador.Text = '.' then
    begin
        lb_num1.text := lb_num1.Text +  '6'
    end

  else
    begin
        lb_num2.text := lb_num2.Text +  '6'
    end;
end;

procedure TCalculadora.btn_7seteClick(Sender: TObject);
  begin
  if lb_operador.Text = '.' then
    begin
        lb_num1.text := lb_num1.Text +  '7'
    end

  else
    begin
        lb_num2.text := lb_num2.Text +  '7'
    end;
end;

procedure TCalculadora.btn_8oitoClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
    begin
        lb_num1.text := lb_num1.Text +  '8'
    end

  else
    begin
        lb_num2.text := lb_num2.Text +  '8'
    end;
  end;

  procedure TCalculadora.btn_9noveClick(Sender: TObject);
  begin
  if lb_operador.Text = '.' then
    begin
        lb_num1.text := lb_num1.Text +  '9'
    end

  else
    begin
        lb_num2.text := lb_num2.Text +  '9'
    end;
end;

procedure TCalculadora.btn_dividirClick(Sender: TObject);
begin
    lb_operador.Text:='/';
    btn_soma.Enabled:=True;
    btn_subtrair.Enabled := True;
    btn_multi.Enabled := True;
    btn_dividir.Enabled := False;
end;

procedure TCalculadora.btn_igualClick(Sender: TObject);
  var n1, n2:double;
  var char_operador: char;
  begin
  n1:=strToFloat(lb_num1.Text);
  n2:=strToFloat(lb_num2.Text);

  char_operador := lb_operador.Text[1];

  case char_operador of
    '+' :
    begin
        lb_resultado.Text := FloatToStr(n1 + n2);
    end;
      '-' :
    begin
        lb_resultado.Text :=  FloatToStr(n1 - n2);
    end;
      'x' :
    begin
        lb_resultado.Text := floattostr(n1 * n2);
    end;
      '/' :
    begin
        lb_resultado.Text := floattostr(n1 / n2);
    end;
  end;
  lb_num1.Text:='';
  lb_num2.Text:='';
  lb_operador.Text:='.';
  btn_soma.Enabled:=True;
  btn_subtrair.Enabled := True;
  btn_multi.Enabled := True;
  btn_dividir.Enabled := True;
end;

procedure TCalculadora.btn_limpar1Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_num1.Text  :=  '';
  end
  else
  begin
     lb_num2.Text  :=  '';
  end;
end;

procedure TCalculadora.btn_limparClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_num1.Text  :=  copy(lb_num1.Text, 0, length(lb_num1.Text)-1);
  end
  else
  begin
     lb_num2.Text  :=  copy(lb_num2.Text, 0, length(lb_num2.Text)-1);
  end;
  btn_soma.Enabled:=True;
  btn_subtrair.Enabled := True;
  btn_multi.Enabled := True;
  btn_dividir.Enabled := True;
end;

procedure TCalculadora.btn_limpar_tdClick(Sender: TObject);
begin
    lb_num1.Text  :=  '';
    lb_num2.Text  :=  '';
    lb_operador.Text:='.';
    lb_resultado.Text:='';
    btn_soma.Enabled:=True;
    btn_subtrair.Enabled := True;
    btn_multi.Enabled := True;
    btn_dividir.Enabled := True;
end;

procedure TCalculadora.btn_multiClick(Sender: TObject);
  begin
      lb_operador.Text:='x';
      btn_soma.Enabled:=True;
      btn_subtrair.Enabled := True;
      btn_multi.Enabled := False;
      btn_dividir.Enabled := True;
end;

procedure TCalculadora.btn_pontoClick(Sender: TObject);
  begin
  if lb_operador.Text = '.' then
    begin
        lb_num1.text := lb_num1.Text +  ','
    end

  else
    begin
        lb_num2.text := lb_num2.Text +  ','
    end;
end;

procedure TCalculadora.btn_somaClick(Sender: TObject);
  begin
      lb_operador.Text:='+';
      btn_soma.Enabled:=False;
      btn_subtrair.Enabled := True;
      btn_multi.Enabled := True;
      btn_dividir.Enabled := True;
end;

procedure TCalculadora.btn_subtrairClick(Sender: TObject);
  begin
    lb_operador.Text:='-';
    btn_soma.Enabled:=True;
    btn_subtrair.Enabled := False;
    btn_multi.Enabled := True;
    btn_dividir.Enabled := True;
  end;

end.
