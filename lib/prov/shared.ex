defmodule PROV.Shared do
  @moduledoc !"Shared helper functions."

  @prov_resource %{
    PROV.Entity => PROV.Entity,
    PROV.Agent => PROV.Agent,
    PROV.Person => PROV.Person,
    PROV.Organization => PROV.Organization,
    PROV.SoftwareAgent => PROV.SoftwareAgent,
    PROV.Activity => PROV.Activity,
    PROV.Accept => PROV.Accept,
    PROV.Contribute => PROV.Contribute,
    PROV.Copyright => PROV.Copyright,
    PROV.Create => PROV.Create,
    PROV.Modify => PROV.Modify,
    PROV.Publish => PROV.Publish,
    PROV.Replace => PROV.Replace,
    PROV.RightsAssignment => PROV.RightsAssignment,
    PROV.Submit => PROV.Submit
  }

  def prov_resource, do: @prov_resource
end
