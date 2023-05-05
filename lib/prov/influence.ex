defmodule PROV.Influence do
  @moduledoc """
  A Grax schema struct for `prov:Influence`s.

  This is the qualified class form of the property `prov:wasInfluencedBy`.

  It is not intended to build structs of this Grax schema directly.
  It serves as a base class for more specific influences.
  Its most specific subclasses should be preferred.

  See <http://www.w3.org/TR/prov-o/#Influence>.
  """

  use Grax.Schema

  alias PROV.OWL

  schema PROV.Influence do
    link influencers: PROV.influencer(), type: list_of(OWL.Thing)

    link had_role: PROV.hadRole(), type: list_of(PROV.Role)
    link had_activity: PROV.hadActivity(), type: list_of(PROV.Activity)
  end
end
