class CreateTrainerModels < ActiveRecord::Migration[7.1]
  def change
    create_table :trainer_models do |t|
      t.integer :trainer_id
      t.string :name

      t.timestamps
    end
  end
end
