unit u_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tform_principal = class(TForm)
    nome: TEdit;
    nota1: TEdit;
    nota2: TEdit;
    nota3: TEdit;
    nota4: TEdit;
    btn_calcular: TButton;
    procedure btn_calcularClick(Sender: TObject);
    procedure nota1Exit(Sender: TObject);
    procedure nota2Exit(Sender: TObject);
    procedure nota3Exit(Sender: TObject);
    procedure nota4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;
    n1,n2,n3,n4,media : Double;
implementation

{$R *.dfm}

procedure Tform_principal.btn_calcularClick(Sender: TObject);
var
  n1,n2,n3,n4,media : Double;
begin
   n1 := StrToFloat( nota1.Text );
   n2 := StrToFloat( nota2.Text );
   n3 := StrToFloat( nota3.Text );
   n4 := StrToFloat( nota4.Text );

   media := ( n1 + n2 + n3 + n4 ) / 4;

   showMessage(nome.Text + ' sua média é ' + FloatToStr(media));
end;

procedure Tform_principal.nota1Exit(Sender: TObject);
begin
n1 := StrToFloat( nota1.Text );
if (n1 < 0) or (n1 > 10) then
showmessage ('Nota 1 não pode ser menor que 0 nem maior que 10.');

if (n1 <0) or (n1 > 10) then
nota1.Text := '0';
end;

procedure Tform_principal.nota2Exit(Sender: TObject);
begin
n2 := StrToFloat( nota2.Text );
if (n2 < 0) or (n2 > 10) then
showmessage ('Nota 2 não pode ser menor que 0 nem maior que 10.');

if (n2 < 0) or (n2 > 10) then
nota2.Text := '0';
end;

procedure Tform_principal.nota3Exit(Sender: TObject);
begin
n3 := StrToFloat( nota3.Text );
if (n3 < 0) or (n3 > 10) then
showmessage ('Nota 3 não pode ser menor que 0 nem maior que 10.');

if (n3 < 0) or (n3 > 10) then
nota3.Text := '0';
end;

procedure Tform_principal.nota4Exit(Sender: TObject);
begin
n4 := StrToFloat( nota4.Text );
if (n4 < 0) or (n4 > 10) then
showmessage ('Nota 4 não pode ser menor que 0 nem maior que 10.');

if (n4 < 0) or (n4 > 10) then
nota4.Text := '0';
end;

end.
