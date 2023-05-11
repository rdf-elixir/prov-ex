defmodule PROV.Entity do
  @moduledoc """
  A Grax schema struct for `prov:Entity`s.

  > An entity is a physical, digital, conceptual, or other kind of thing with
  > some fixed aspects; entities may be real or imaginary.

  See <http://www.w3.org/TR/prov-o/#Entity>.
  """

  use Grax.Schema

  schema PROV.Entity < PROV.Resource do
    property value: PROV.value(), type: :any
    property generated_at: PROV.generatedAtTime(), type: :date_time
    property invalidated_at: PROV.invalidatedAtTime(), type: :date_time

    link at_location: PROV.atLocation(), type: list_of(PROV.Location)

    link alternate_of: PROV.alternateOf(), type: list_of(PROV.Entity)
    link specialization_of: PROV.specializationOf(), type: list_of(PROV.Entity)

    # derivation
    link was_derived_from: PROV.wasDerivedFrom(), type: list_of(PROV.Entity)
    link was_revision_of: PROV.wasRevisionOf(), type: list_of(PROV.Entity)
    link was_quoted_from: PROV.wasQuotedFrom(), type: list_of(PROV.Entity)
    link had_primary_source: PROV.hadPrimarySource(), type: list_of(PROV.Entity)

    # influences
    link was_influenced_by: PROV.wasInfluencedBy(), type: list_of(PROV.Resource)

    link was_generated_by: PROV.wasGeneratedBy(), type: list_of(PROV.Activity)
    link was_invalidated_by: PROV.wasInvalidatedBy(), type: list_of(PROV.Activity)
    link was_attributed_to: PROV.wasAttributedTo(), type: list_of(PROV.Agent)

    # qualification properties
    link qualified_influences: PROV.qualifiedInfluence(), type: list_of(PROV.Influence)
    link qualified_generation: PROV.qualifiedGeneration(), type: PROV.Generation
    link qualified_invalidation: PROV.qualifiedInvalidation(), type: PROV.Invalidation
    link qualified_attributions: PROV.qualifiedAttribution(), type: list_of(PROV.Attribution)

    link qualified_derivations: PROV.qualifiedDerivation(), type: list_of(PROV.Derivation)
    link qualified_revision: PROV.qualifiedRevision(), type: PROV.Revision
    link qualified_quotations: PROV.qualifiedQuotation(), type: list_of(PROV.Quotation)

    link qualified_primary_sources: PROV.qualifiedPrimarySource(),
         type: list_of(PROV.PrimarySource)

    # from PROV links spec
    link as_in_bundle: PROV.asInBundle(), type: list_of(PROV.Entity)
  end
end
