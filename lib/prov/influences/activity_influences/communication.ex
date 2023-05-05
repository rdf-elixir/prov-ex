defmodule PROV.Communication do
  @moduledoc """
  A Grax schema struct for `prov:Communication`s.

  This is the qualified class form of the property `prov:wasInformedBy`.

  See <http://www.w3.org/TR/prov-o/#Communication>.
  """

  use Grax.Schema

  schema PROV.Communication < PROV.ActivityInfluence do
  end
end
