defmodule PROV.Submit do
  @moduledoc """
  A Grax schema struct for `prov:Submit`s.
  """

  use Grax.Schema

  schema PROV.Submit < PROV.Activity do
  end
end
