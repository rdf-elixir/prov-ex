defmodule PROV.DirectQueryService do
  @moduledoc """
  A Grax schema struct for `prov:DirectQueryService`s.
  """

  use Grax.Schema

  schema PROV.DirectQueryService < PROV.SoftwareAgent do
  end
end
