defmodule PROV.Invalidation do
  @moduledoc """
  A Grax schema struct for `prov:Invalidation`s.

  This is the qualified class form of the property `prov:wasInvalidatedBy`.

  See <http://www.w3.org/TR/prov-o/#Invalidation>.
  """

  use Grax.Schema

  schema PROV.Invalidation < [PROV.ActivityInfluence, PROV.InstantaneousEvent] do
  end
end
