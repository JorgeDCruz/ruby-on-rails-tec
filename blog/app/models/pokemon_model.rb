class PokemonModel < ApplicationRecord
    has_and_belongs_to_many :trainer_models, join_table: "trainers_pokemons"
end
