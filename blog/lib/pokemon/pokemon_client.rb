require 'poke-api-v2'

module Pokemon
    class PokemonClient
        def self.pokemon_by_type(type:)
            pokemon_types = PokeApi.get(type: type)
            pokemons = JSON.parse(pokemon_types.to_json).with_indifferent_access.slice :pokemon
            pokemons[:pokemon].map { |element| {name: element[:pokemon][:name], url: element[:pokemon][:url] } }
        end

        def self.pokemon_by_name(name:)
            pokemon = PokeApi.get(pokemon: name)
            JSON.parse(pokemon.to_json).with_indifferent_access
        end
    end
end