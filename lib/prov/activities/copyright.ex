defmodule PROV.Copyright do
  @moduledoc """
  A Grax schema struct for `prov:Copyright`s.
  """

  use Grax.Schema

  schema PROV.Copyright < PROV.Activity do
  end
end
