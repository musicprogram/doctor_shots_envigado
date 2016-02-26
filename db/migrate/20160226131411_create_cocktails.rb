class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :nombre
      t.float :precio
      t.string :descripcion
      t.belongs_to :category, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
