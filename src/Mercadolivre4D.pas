unit Mercadolivre4D;

interface

uses
  Mercadolivre4D.Interfaces,
  Mercadolivre4D.Configuration;

type
  iMercadolivre4D = interface
    function Configuration : iConfiguration;
  end;

  TMercadolivre4D = class(TInterfacedObject, iMercadolivre4D)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iMercadolivre4D;
      function Configuration : iConfiguration;
  end;

implementation

function TMercadolivre4D.Configuration: iConfiguration;
begin
  Result := TConfiguration.New;
end;

constructor TMercadolivre4D.Create;
begin

end;

destructor TMercadolivre4D.Destroy;
begin

  inherited;
end;

class function TMercadolivre4D.New : iMercadolivre4D;
begin
  Result := Self.Create;
end;

end.
