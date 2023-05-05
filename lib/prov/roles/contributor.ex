defmodule PROV.Contributor do
  @moduledoc """
  A Grax schema struct for `prov:Contributor`s.
  """

  use Grax.Schema

  schema PROV.Contributor < PROV.Role do
  end
end
