class CreateForceAbilities < ActiveRecord::Migration[6.1]
  def change
    create_table :force_abilities do |t|
      t.string :name

      t.timestamps
    end
  end
end
