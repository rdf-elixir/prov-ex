defmodule PROV.InstantaneousEvent do
  @moduledoc """
  A Grax schema struct for `prov:InstantaneousEvent`s.

  See <http://www.w3.org/TR/prov-o/#InstantaneousEvent>.
  """

  use Grax.Schema

  schema PROV.InstantaneousEvent do
    property at_time: PROV.atTime(), type: :date_time

    link at_location: PROV.atLocation(), type: list_of(PROV.Location)
    link had_roles: PROV.hadRole(), type: list_of(PROV.Role)
  end
end
