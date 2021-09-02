unit uUsuario;

interface

type
  TUsuario = class
  private
    Femail: string;
    Fpassword: string;
  public
    property email: string read Femail write Femail;
    property password: string read Fpassword write Fpassword;

    procedure buscarPorEmail();
  end;

implementation

{ TUsuario }

procedure TUsuario.buscarPorEmail;
begin
  //
end;

end.

