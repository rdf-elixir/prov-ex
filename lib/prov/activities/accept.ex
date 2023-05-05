defmodule PROV.Accept do
  @moduledoc """
  A Grax schema struct for `prov:Accept`s.
  """

  use Grax.Schema

  schema PROV.Accept < PROV.Activity do
  end
end
