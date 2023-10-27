class CatchController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create

  def index
    pokemon_number = rand(1..640)
    @pokemon = PokeApi.get(pokemon: pokemon_number)
    @pokemon_name = @pokemon.name.capitalize
    @pokemon_image = "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/#{pokemon_number.to_s.rjust(3, '0')}.png"
    # @pokemon_image = "https://unpkg.com/pokeapi-sprites@2.0.2/sprites/pokemon/other/dream-world/#{pokemon_number.to_s.rjust(3, '0')}.svg"
    @pokemon_id = pokemon_number
  end

  def create
    @pokemon_id = params[:pokemon_id]
    probability = rand(30..100)
    if probability > 50
      pokemon = PokeApi.get(pokemon: @pokemon_id)
      pokemon_json = JSON.parse(pokemon.to_json).with_indifferent_access.slice :id, :name, :types
      pokemon_json[:types] = pokemon_json[:types].map { |type| type[:type][:name] }
      type1 = pokemon_json[:types][0]
      if pokemon_json[:types].length > 1
        type2 = pokemon_json[:types][1]
      else
        type2 = "None"
      end
      new_pokemon = PokemonModel.new(
        pokemon_id: pokemon_json[:id],
        pokemon_name: pokemon_json[:name].capitalize,
        tipo1: type1.capitalize,
        tipo2: type2.capitalize
      )
      new_pokemon.save
      user = TrainerModel.find(1)
      user.pokemon_models << new_pokemon
      redirect_to trainers_path
    else
      @pokemon_name = params[:pokemon_name]
      redirect_to controllers: "catch", action: "fled", pokemon_id: @pokemon_id, pokemon_name: @pokemon_name
    end
  end

  def fled
    @pokemon_name = params[:pokemon_name]
    @pokemon_id = params[:pokemon_id]
    @pokemon_image = "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/#{@pokemon_id}.png"
  end
end
