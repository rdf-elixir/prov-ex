defmodule PROV.Activity do
  @moduledoc """
  A Grax schema struct for `prov:Activity`s.

  See <http://www.w3.org/TR/prov-o/#Activity>.
  """

  use Grax.Schema

  schema PROV.Activity < PROV.Resource do
    property started_at: PROV.startedAtTime(), type: :date_time
    property ended_at: PROV.endedAtTime(), type: :date_time

    link at_location: PROV.atLocation(), type: list_of(PROV.Location)

    # influences
    link was_influenced_by: PROV.wasInfluencedBy(), type: list_of(PROV.Resource)
    link used: PROV.used(), type: list_of(PROV.Entity)
    link was_started_by: PROV.wasStartedBy(), type: list_of(PROV.Entity)
    link was_ended_by: PROV.wasEndedBy(), type: list_of(PROV.Entity)
    link was_associated_with: PROV.wasAssociatedWith(), type: list_of(PROV.Agent)
    link was_informed_by: PROV.wasInformedBy(), type: list_of(PROV.Activity)

    link generated: PROV.generated(), type: list_of(PROV.Entity)
    link invalidated: PROV.invalidated(), type: list_of(PROV.Entity)

    # qualification properties
    link qualified_influence: PROV.qualifiedInfluence(), type: list_of(PROV.Influence), depth: +1

    link qualified_start: PROV.qualifiedStart(), type: PROV.Start, depth: +1
    link qualified_end: PROV.qualifiedEnd(), type: PROV.End, depth: +1
    link qualified_usages: PROV.qualifiedUsage(), type: list_of(PROV.Usage), depth: +1

    link qualified_associations: PROV.qualifiedAssociation(),
         type: list_of(PROV.Association),
         depth: +1

    link qualified_communications: PROV.qualifiedCommunication(),
         type: list_of(PROV.Communication),
         depth: +1
  end
end
