defmodule PROV.PrimarySource do
  @moduledoc """
  A Grax schema struct for `prov:PrimarySource`s.

  This is the qualified class form of the property `prov:hadPrimarySource`.

  See <http://www.w3.org/TR/prov-o/#PrimarySource>.
  """

  use Grax.Schema

  schema PROV.PrimarySource < PROV.Derivation do
  end
end
