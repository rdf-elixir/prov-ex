defmodule PROV.Generation do
  @moduledoc """
  A Grax schema struct for `prov:Generation`s.

  This is the qualified class form of the property `prov:wasGeneratedBy`.

  See <http://www.w3.org/TR/prov-o/#Generation>.
  """

  use Grax.Schema

  schema PROV.Generation < [PROV.ActivityInfluence, PROV.InstantaneousEvent] do
  end
end
