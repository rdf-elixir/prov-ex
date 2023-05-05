defmodule PROV.Collection do
  @moduledoc """
  A Grax schema struct for `prov:Collection`s.

  See <http://www.w3.org/TR/prov-o/#Collection>.
  """

  use Grax.Schema

  schema PROV.Collection < PROV.Entity do
    link members: PROV.hadMember(), type: list_of(PROV.Entity)
  end
end
