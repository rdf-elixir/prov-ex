defmodule PROVTest do
  use PROV.Test.Case
  doctest PROV

  {properties, classes} = Enum.split_with(PROV.NS.PROV.__terms__(), &RDF.Utils.downcase?/1)
  @classes classes
  @properties properties

  describe "RDF.Vocabulary.Namespace compatibility" do
    Enum.each(@classes, fn class ->
      test "PROV.#{class} can be resolved to a RDF.IRI" do
        assert PROV
               |> Module.concat(unquote(class))
               |> RDF.iri() ==
                 PROV.NS.PROV
                 |> Module.concat(unquote(class))
                 |> RDF.iri()
      end
    end)

    Enum.each(@properties, fn property ->
      test "PROV.#{property}/0" do
        assert apply(PROV, unquote(property), []) ==
                 apply(PROV.NS.PROV, unquote(property), [])
      end

      test "PROV.#{property}/2" do
        assert apply(PROV, unquote(property), [EX.S, EX.O]) ==
                 apply(PROV.NS.PROV, unquote(property), [EX.S, EX.O])
      end

      test "PROV.#{property}/1" do
        o = RDF.iri(EX.O)
        desc = apply(PROV.NS.PROV, unquote(property), [EX.S, o])
        assert apply(PROV, unquote(property), [desc]) == [o]
      end
    end)

    test "__file__/0" do
      assert PROV.__file__() == PROV.NS.PROV.__file__()
    end
  end

  test "was_influenced_by uses the correct schema" do
    graph =
      Graph.build do
        EX.Act1
        |> PROV.wasInfluencedBy(EX.Person1)

        EX.Person1
        |> RDF.type(PROV.Person)
      end

    assert graph |> PROV.Activity.load(EX.Act1) ==
             PROV.Activity.build(EX.Act1, was_influenced_by: PROV.Person.build!(EX.Person1))

    graph =
      Graph.build do
        EX.Ent1
        |> PROV.wasInfluencedBy(EX.Rig1)

        EX.Rig1
        |> RDF.type([PROV.Activity, PROV.RightsAssignment])
      end

    assert graph |> PROV.Entity.load(EX.Ent1) ==
             PROV.Entity.build(EX.Ent1,
               was_influenced_by:
                 PROV.RightsAssignment.build!(EX.Rig1)
                 |> Grax.add_additional_statements(%{RDF.type() => PROV.Activity})
             )
  end
end
