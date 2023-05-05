defmodule PROV.Attribution do
  @moduledoc """
  A Grax schema struct for `prov:Attribution`s.

  This is the qualified class form of the property `prov:wasAttributedTo`.

  See <http://www.w3.org/TR/prov-o/#Attribution>.
  """

  use Grax.Schema

  schema PROV.Attribution < PROV.AgentInfluence do
  end
end
