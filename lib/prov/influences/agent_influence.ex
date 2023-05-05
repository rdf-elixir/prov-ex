defmodule PROV.AgentInfluence do
  @moduledoc """
  A Grax schema struct for `prov:AgentInfluence`s.

  It is not intended to build structs of this Grax schema directly.
  It serves as a base class for more specific agent influences.
  Its most specific subclasses should be preferred.

  See <http://www.w3.org/TR/prov-o/#AgentInfluence>.
  """

  use Grax.Schema

  schema PROV.AgentInfluence < PROV.Influence do
    link agent: PROV.agent(), type: list_of(PROV.Agent)
  end
end
