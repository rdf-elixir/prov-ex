defmodule PROV.Dictionary do
  @moduledoc """
  A Grax schema struct for `prov:Dictionary`s.

  See <http://www.w3.org/TR/prov-dictionary/#Dictionary>.
  """

  use Grax.Schema

  schema PROV.Dictionary < PROV.Collection do
    link had_dictionary_members: PROV.hadDictionaryMember(), type: list_of(PROV.KeyEntityPair)

    link derived_by_insertion_from: PROV.derivedByInsertionFrom(), type: PROV.Dictionary
    link derived_by_removal_from: PROV.derivedByRemovalFrom(), type: PROV.Dictionary

    link qualified_insertion: PROV.qualifiedInsertion(), type: list_of(PROV.Insertion)
    link qualified_removal: PROV.qualifiedRemoval(), type: list_of(PROV.Removal)
  end
end
