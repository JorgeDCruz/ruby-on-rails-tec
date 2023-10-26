class CreatePokemonModels < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemon_models do |t|
      t.integer :pokemon_id
      t.string :pokemon_name
      t.string :tipo1
      t.string :tipo2

      t.timestamps
    end
  end
end
