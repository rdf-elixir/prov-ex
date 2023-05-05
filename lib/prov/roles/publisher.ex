defmodule PROV.Publisher do
  @moduledoc """
  A Grax schema struct for `prov:Publisher`s.
  """

  use Grax.Schema

  schema PROV.Publisher < PROV.Role do
  end
end
