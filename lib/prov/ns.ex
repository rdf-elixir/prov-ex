defmodule PROV.NS do
  @moduledoc """
  `RDF.Vocabulary.Namespace`s for the used vocabularies.
  """

  use RDF.Vocabulary.Namespace

  @vocabdoc """
  The W3C PROVenance vocabulary.

  See <http://www.w3.org/TR/prov-o/>
  """
  defvocab PROV,
    base_iri: "http://www.w3.org/ns/prov#",
    file: "prov.ttl",
    case_violations: :fail
end
