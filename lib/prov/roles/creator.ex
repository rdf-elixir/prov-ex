defmodule PROV.Creator do
  @moduledoc """
  A Grax schema struct for `prov:Creator`s.
  """

  use Grax.Schema

  schema PROV.Creator < PROV.Contributor do
  end
end
