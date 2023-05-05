defmodule PROV.KeyEntityPair do
  @moduledoc """
  A Grax schema struct for `prov:KeyEntityPair`s.

  See <http://www.w3.org/TR/prov-dictionary/#KeyEntityPair>.
  """

  use Grax.Schema

  schema PROV.KeyEntityPair do
    property key: PROV.pairKey(), type: :any, required: true
    link entity: PROV.pairEntity(), type: PROV.Entity, required: true
  end
end
