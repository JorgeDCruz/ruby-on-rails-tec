class CreateUsersRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :trainers_pokemons do |t|
      t.references :pokemon_model, null: false, foreign_key: true
      t.references :trainer_model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
