defmodule PROV.Plan do
  @moduledoc """
  A Grax schema struct for `prov:Plan`s.

  See <http://www.w3.org/TR/prov-o/#Plan>.
  """

  use Grax.Schema

  schema PROV.Plan < PROV.Entity do
  end
end
