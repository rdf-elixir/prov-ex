defmodule PROV.Bundle do
  @moduledoc """
  A Grax schema struct for `prov:Bundle`s.

  See <http://www.w3.org/TR/prov-o/#Bundle>.
  """

  use Grax.Schema

  schema PROV.Bundle < PROV.Entity do
  end
end
