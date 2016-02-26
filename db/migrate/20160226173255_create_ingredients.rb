class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :nombre
      t.belongs_to :shot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
