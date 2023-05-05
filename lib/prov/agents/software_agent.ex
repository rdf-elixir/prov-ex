defmodule PROV.SoftwareAgent do
  @moduledoc """
  A Grax schema struct for `prov:SoftwareAgent`s.

  See <http://www.w3.org/TR/prov-o/#SoftwareAgent>.
  """

  use Grax.Schema

  schema PROV.SoftwareAgent < PROV.Agent do
  end
end
