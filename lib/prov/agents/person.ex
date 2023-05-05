defmodule PROV.Person do
  @moduledoc """
  A Grax schema struct for `prov:Person`s.

  See <http://www.w3.org/TR/prov-o/#Person>.
  """

  use Grax.Schema

  schema PROV.Person < PROV.Agent do
  end
end
