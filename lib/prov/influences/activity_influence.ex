defmodule PROV.ActivityInfluence do
  @moduledoc """
  A Grax schema struct for `prov:ActivityInfluence`s.

  It is not intended to build structs of this Grax schema directly.
  It serves as a base class for more specific activity influences.
  Its most specific subclasses should be preferred.

  See <http://www.w3.org/TR/prov-o/#ActivityInfluence>.
  """

  use Grax.Schema

  schema PROV.ActivityInfluence < PROV.Influence do
    link activity: PROV.activity(), type: list_of(PROV.Activity)
    link had_activities: PROV.hadActivity(), type: list_of(PROV.Activity)
  end
end
