defmodule PROV.Resource do
  @moduledoc !"""
             This Grax schema is just needed as a shared base schema
             for the type of prov:wasInfluencedBy link property,
             which has the three main classes of PROV as rdfs:range.
             """

  use Grax.Schema

  schema do
  end
end
