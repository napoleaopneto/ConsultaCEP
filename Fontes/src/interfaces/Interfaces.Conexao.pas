unit Interfaces.Conexao;

interface

  uses
   data.DB;

  type
   iRequest = interface
     ['{21FD205F-967F-4827-832E-F43936A148DF}']
     function RestRequest(aDataSet : TDataSource;  aOrigem : Integer; aCep : String) : iRequest;
   end;

implementation

end.
