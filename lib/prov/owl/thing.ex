defmodule PROV.OWL.Thing do
  @moduledoc """
  A Grax schema struct for `owl:Thing`s.

  This is just a placeholder class, that is used as the type of links
  for PROV properties with range `owl:Thing`
  """

  use Grax.Schema

  alias RDF.NS.OWL

  schema OWL.Thing do
  end
end
