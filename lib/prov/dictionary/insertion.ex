defmodule PROV.Insertion do
  @moduledoc """
  A Grax schema struct for `prov:Insertion`s.

  This is the qualified class form of the property `prov:derivedByInsertionFrom`.

  See <http://www.w3.org/TR/prov-dictionary/#Insertion>.
  """

  use Grax.Schema

  schema PROV.Insertion < PROV.Derivation do
    link dictionary: PROV.dictionary(), type: PROV.Dictionary, required: true

    link inserted_key_entity_pair: PROV.insertedKeyEntityPair(),
         type: list_of(PROV.KeyEntityPair),
         required: true
  end
end
