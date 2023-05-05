defmodule PROV.EntityInfluence do
  @moduledoc """
  A Grax schema struct for `prov:EntityInfluence`s.

  It is not intended to build structs of this Grax schema directly.
  It serves as a base class for more specific entity influences.
  Its most specific subclasses should be preferred.

  See <http://www.w3.org/TR/prov-o/#EntityInfluence>.
  """

  use Grax.Schema

  schema PROV.EntityInfluence < PROV.Influence do
    link entity: PROV.entity(), type: list_of(PROV.Entity)
  end
end
