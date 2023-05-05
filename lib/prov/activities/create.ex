defmodule PROV.Create do
  @moduledoc """
  A Grax schema struct for `prov:Create`s.
  """

  use Grax.Schema

  schema PROV.Create < PROV.Contribute do
  end
end
