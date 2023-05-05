defmodule PROV.ExampleDataTests.PROVBookTests do
  use PROV.Test.Case

  setup_all do
    [:d100, :d200, :d300]
    |> Enum.map(fn dataset ->
      {dataset, "provbook/#{dataset}.ttl" |> TestData.path() |> RDF.read_file!()}
    end)
  end

  def now_news_iri(suffix), do: ~i<http://www.provbook.org/nownews/is/##{suffix}>
  def other_news_iri(suffix), do: ~i<http://www.provbook.org/othernews/#{suffix}>

  @tag skip: "TODO: data seems invalid; a string is used as prov:atLocation"
  test "d100", %{d100: d100} do
    assert {:ok, %PROV.Entity{}} = PROV.Entity.load(d100, now_news_iri("f11"))
  end

  test "d200", %{d200: d200} do
    assert PROV.Entity.load(d200, other_news_iri("paper1")) ==
             PROV.Entity.build(other_news_iri("paper1"),
               was_attributed_to:
                 "OtherNews"
                 |> other_news_iri()
                 |> PROV.Agent.build!()
                 |> Grax.add_additional_statements(%{
                   RDF.type() => ~I<http://schema.org/Organization>
                 }),
               was_derived_from:
                 "dataset1"
                 |> other_news_iri()
                 |> PROV.Entity.build!()
                 |> Grax.add_additional_statements(%{
                   RDF.type() => ~I<http://vocab.deri.ie/void#Dataset>
                 })
             )
  end

  test "d300", %{d300: d300} do
    iri = ~I<http://www.provbook.org/policyorg/report1>

    assert PROV.Entity.load!(d300, iri) ==
             iri
             |> PROV.Entity.build!(
               was_attributed_to:
                 ~I<http://www.provbook.org/policyorg/PolicyOrg>
                 |> PROV.Agent.build!()
                 |> Grax.add_additional_statements(%{
                   RDF.type() => ~I<http://schema.org/Organization>
                 }),
               was_derived_from: [
                 ~I<http://www.provbook.org/nownews/employment-article-v1.html>
                 |> PROV.Entity.build!()
                 |> Grax.add_additional_statements(%{
                   ~I<http://www.provbook.org/ns/#topicIn> =>
                     ~I<http://www.provbook.org/provapi/documents/d100>
                 }),
                 other_news_iri("paper1")
                 |> PROV.Entity.build!()
                 |> Grax.add_additional_statements(%{
                   ~I<http://www.provbook.org/ns/#topicIn> =>
                     ~I<http://www.provbook.org/provapi/documents/d200>
                 }),
                 other_news_iri("paper2")
                 |> PROV.Entity.build!()
                 |> Grax.add_additional_statements(%{
                   ~I<http://www.provbook.org/ns/#topicIn> =>
                     ~I<http://www.provbook.org/provapi/documents/d200>
                 })
               ],
               qualified_generation:
                 PROV.Generation.build!(
                   ~B<blank1>,
                   at_time: ~U[2012-11-01 10:00:00.000Z]
                 )
             )
             |> Grax.add_additional_statements(%{
               PROV.hadMember() => [
                 ~I<http://www.provbook.org/nownews/employment-article-v1.html>,
                 other_news_iri("paper1"),
                 other_news_iri("paper2")
               ]
             })
  end
end
