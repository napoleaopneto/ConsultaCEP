program ConsultaCEP;

uses
  Vcl.Forms,
  View.FormPrincipal in 'src\view\View.FormPrincipal.pas' {FormConsultaCep},
  Interfaces.Conexao in 'src\interfaces\Interfaces.Conexao.pas',
  Model.Conexao in 'src\model\Model.Conexao.pas',
  Interfaces.Controller.Conexao in 'src\interfaces\Interfaces.Controller.Conexao.pas',
  Controller.Conexao in 'src\controller\Controller.Conexao.pas',
  uFuncoes in 'src\Biblioteca\uFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormConsultaCep, FormConsultaCep);
  Application.Run;
end.
