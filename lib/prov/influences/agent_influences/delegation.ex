defmodule PROV.Delegation do
  @moduledoc """
  A Grax schema struct for `prov:Delegation`s.

  This is the qualified class form of the property `prov:actedOnBehalfOf`.

  See <http://www.w3.org/TR/prov-o/#Delegation>.
  """

  use Grax.Schema

  schema PROV.Delegation < PROV.AgentInfluence do
  end
end
