defmodule PROV.Association do
  @moduledoc """
  A Grax schema struct for `prov:Association`s.

  This is the qualified class form of the property `prov:wasAssociatedWith`.

  See <http://www.w3.org/TR/prov-o/#Association>.
  """

  use Grax.Schema

  schema PROV.Association < PROV.AgentInfluence do
    link had_plan: PROV.hadPlan(), type: list_of(PROV.Plan)
  end
end
