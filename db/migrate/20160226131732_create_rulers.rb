class CreateRulers < ActiveRecord::Migration
  def change
    create_table :rulers do |t|
      t.string :nombre
      t.float :precio
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
