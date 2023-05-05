defmodule PROV.Revision do
  @moduledoc """
  A Grax schema struct for `prov:Revision`s.

  This is the qualified class form of the property `prov:wasRevisionOf`.

  See <http://www.w3.org/TR/prov-o/#Revision>.
  """

  use Grax.Schema

  schema PROV.Revision < PROV.Derivation do
  end
end
