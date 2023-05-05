defmodule PROV.End do
  @moduledoc """
  A Grax schema struct for `prov:End`s.

  This is the qualified class form of the property `prov:wasEndedBy`.

  See <http://www.w3.org/TR/prov-o/#End>.
  """

  use Grax.Schema

  schema PROV.End < [PROV.EntityInfluence, PROV.InstantaneousEvent] do
  end
end
