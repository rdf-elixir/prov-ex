defmodule PROV.Organization do
  @moduledoc """
  A Grax schema struct for `prov:Organization`s.

  See <http://www.w3.org/TR/prov-o/#Organization>.
  """

  use Grax.Schema

  schema PROV.Organization < PROV.Agent do
  end
end
