defmodule PROV.ServiceDescription do
  @moduledoc """
  A Grax schema struct for `prov:ServiceDescription`s.
  """

  use Grax.Schema

  schema PROV.ServiceDescription < PROV.SoftwareAgent do
  end
end
