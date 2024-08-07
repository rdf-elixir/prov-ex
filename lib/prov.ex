defmodule PROV do
  @moduledoc """
  Implementation of the W3C PROV vocabulary.

  The following features are provided:

  - The `PROV` module acts as the `RDF.Vocabulary.Namespace` for the PROV vocabulary.
  - Grax structures for all PROV classes and their properties.

  See <http://www.w3.org/TR/prov-overview/>.
  """

  import RDF.Namespace

  act_as_namespace PROV.NS.PROV
end
