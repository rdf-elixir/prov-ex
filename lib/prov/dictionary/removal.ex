defmodule PROV.Removal do
  @moduledoc """
  A Grax schema struct for `prov:Removal`s.

  This is the qualified class form of the property `prov:derivedByRemovalFrom`.

  See <http://www.w3.org/TR/prov-dictionary/#Removal>.
  """

  use Grax.Schema

  schema PROV.Removal < PROV.Derivation do
    link dictionary: PROV.dictionary(), type: PROV.Dictionary, required: true
    property removed_key: PROV.removedKey(), type: list_of(:any), required: true
  end
end
