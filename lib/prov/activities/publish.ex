defmodule PROV.Publish do
  @moduledoc """
  A Grax schema struct for `prov:Publish`s.
  """

  use Grax.Schema

  schema PROV.Publish < PROV.Activity do
  end
end
