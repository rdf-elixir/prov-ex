# PROV.ex

An implementation of the [W3C PROV (Provenance)](http://www.w3.org/TR/prov-overview/) vocabulary for Elixir as Grax schemas.

The API documentation can be found [here](https://hexdocs.pm/prov]/).
For more information about the RDF on Elixir projects, go to <https://rdf-elixir.dev>.


## Features

- The `PROV` module acts as the `RDF.Vocabulary.Namespace` for the PROV vocabulary
- Grax structures for all PROV classes and their properties, for easy
  creation and manipulation of provenance information including entities, activities, and agents
- Seamless integration with all RDF on Elixir projects


## Installation

Add `prov` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:prov, "~> 0.1"}
  ]
end
```

## Usage

```elixir
PROV.Entity.build!(EX.report(),
  was_generated_by: EX.compile(),
  was_attributed_to: EX.researcher(),
  generated_at: DateTime.utc_now(),
  was_derived_from: EX.data()
) 
|> Grax.to_rdf!(prefixes: [prov: PROV, ex: EX, xsd: RDF.NS.XSD]) 
|> RDF.Turtle.write_string!()
```

produces:

```turtle
@prefix ex: <http://example.com/> .
@prefix prov: <http://www.w3.org/ns/prov#> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .

ex:report
    a prov:Entity ;
    prov:generatedAtTime "2024-08-06T23:46:18.503394Z"^^xsd:dateTime ;
    prov:wasAttributedTo ex:researcher ;
    prov:wasDerivedFrom ex:data ;
    prov:wasGeneratedBy ex:compile .
```


## Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for details.


## Consulting

If you need help with your Elixir and Linked Data projects, just contact [NinjaConcept](https://www.ninjaconcept.com/) via <contact@ninjaconcept.com>.


## License and Copyright

(c) 2024 Marcel Otto. MIT Licensed, see [LICENSE](LICENSE.md) for details.
