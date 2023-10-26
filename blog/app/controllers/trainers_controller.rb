class TrainersController < ApplicationController
  def index
    @trainers = TrainerModel.find(1)
    @pokemons = @trainers.pokemon_models
    p @trainers.pokemon_models
  end
end
