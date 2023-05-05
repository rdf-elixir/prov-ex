defmodule PROV do
  @moduledoc """
  Implementation of the W3C PROV vocabulary.

    See <http://www.w3.org/TR/prov-overview/>.
  """

  import RDF.Namespace

  act_as_namespace PROV.NS.PROV
end
