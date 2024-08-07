defmodule PROV.Agent do
  @moduledoc """
  A Grax schema struct for `prov:Agent`s.

  See <http://www.w3.org/TR/prov-o/#Agent>.
  """

  use Grax.Schema

  schema PROV.Agent < PROV.Resource do
    link at_location: PROV.atLocation(), type: list_of(PROV.Location)

    # influences
    link was_influenced_by: PROV.wasInfluencedBy(), type: list_of(PROV.Resource)
    link acted_on_behalf_of: PROV.actedOnBehalfOf(), type: list_of(PROV.Agent)

    # qualification properties
    link qualified_influence: PROV.qualifiedInfluence(), type: list_of(PROV.Influence), depth: +1

    link qualified_delegation: PROV.qualifiedDelegation(),
         type: list_of(PROV.Delegation),
         depth: +1
  end
end
