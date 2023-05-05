defmodule PROV.Quotation do
  @moduledoc """
  A Grax schema struct for `prov:Quotation`s.

  This is the qualified class form of the property `prov:wasQuotedFrom`.

  See <http://www.w3.org/TR/prov-o/#Quotation>.
  """

  use Grax.Schema

  schema PROV.Quotation < PROV.Derivation do
  end
end
