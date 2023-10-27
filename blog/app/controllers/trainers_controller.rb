class TrainersController < ApplicationController
  def index
    @trainers = TrainerModel.find(1)
    @pokemons = @trainers.pokemon_models
    @pokemons = @pokemons.sort_by { |pokemon| pokemon.pokemon_id }
    @pokemons_name = params[:pokemon_name]
  end
end
