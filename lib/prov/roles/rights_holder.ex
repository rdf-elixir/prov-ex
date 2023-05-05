defmodule PROV.RightsHolder do
  @moduledoc """
  A Grax schema struct for `prov:RightsHolder`s.
  """

  use Grax.Schema

  schema PROV.RightsHolder < PROV.Role do
  end
end
