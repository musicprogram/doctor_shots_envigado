class CreateMilliliters < ActiveRecord::Migration
  def change
    create_table :milliliters do |t|
      t.belongs_to :licor, index: true, foreign_key: true
      t.float :mililitro
      t.belongs_to :shot, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
