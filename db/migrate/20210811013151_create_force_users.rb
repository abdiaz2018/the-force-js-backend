class CreateForceUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :force_users do |t|
      t.string :name
      t.string :team
      t.string :gender
      t.string :race
      t.belongs_to :force_ability, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
