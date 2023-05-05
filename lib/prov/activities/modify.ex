defmodule PROV.Modify do
  @moduledoc """
  A Grax schema struct for `prov:Modify`s.
  """

  use Grax.Schema

  schema PROV.Modify < PROV.Activity do
  end
end
