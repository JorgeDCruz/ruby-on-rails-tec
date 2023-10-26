class TrainerModel < ApplicationRecord
    has_and_belongs_to_many :pokemon_models, join_table: "trainers_pokemons"
end
