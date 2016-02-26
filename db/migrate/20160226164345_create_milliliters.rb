class CreateMilliliters < ActiveRecord::Migration
  def change
    create_table :milliliters do |t|
      t.string :licor
      t.float :mililitro
      t.belongs_to :shot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
