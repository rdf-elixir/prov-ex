defmodule PROV.Start do
  @moduledoc """
  A Grax schema struct for `prov:Start`s.

  This is the qualified class form of the property `prov:wasStartedBy`.

  See <http://www.w3.org/TR/prov-o/#Start>.
  """

  use Grax.Schema

  schema PROV.Start < [PROV.EntityInfluence, PROV.InstantaneousEvent] do
  end
end
