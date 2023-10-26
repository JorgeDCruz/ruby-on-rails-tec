class CreatePokemonModels < ActiveRecord::Migration[7.1]
  def change
    drop_table :pokemon_models 
  end
end
