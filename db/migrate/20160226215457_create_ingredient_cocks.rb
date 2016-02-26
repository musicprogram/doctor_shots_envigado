class CreateIngredientCocks < ActiveRecord::Migration
  def change
    create_table :ingredient_cocks do |t|
      t.string :nombre
      t.belongs_to :cocktail, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
