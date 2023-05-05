defmodule PROV.Usage do
  @moduledoc """
  A Grax schema struct for `prov:Usage`s.

  This is the qualified class form of the property `prov:used`.

  See <http://www.w3.org/TR/prov-o/#Usage>.
  """

  use Grax.Schema

  schema PROV.Usage < [PROV.EntityInfluence, PROV.InstantaneousEvent] do
  end
end
