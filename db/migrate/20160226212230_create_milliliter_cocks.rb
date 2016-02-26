class CreateMilliliterCocks < ActiveRecord::Migration
  def change
    create_table :milliliter_cocks do |t|
      t.belongs_to :licor, index: true, foreign_key: true
      t.float :mililitro
      t.belongs_to :cocktail, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
