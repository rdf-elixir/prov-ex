defmodule PROV.Derivation do
  @moduledoc """
  A Grax schema struct for `prov:Derivation`s.

  This is the qualified class form of the property `prov:wasDerivedFrom`.

  See <http://www.w3.org/TR/prov-o/#Derivation>.
  """

  use Grax.Schema

  schema PROV.Derivation < PROV.EntityInfluence do
    link had_generation: PROV.hadGeneration(), type: list_of(PROV.Generation)
    link had_usage: PROV.hadUsage(), type: list_of(PROV.Usage)
  end
end
