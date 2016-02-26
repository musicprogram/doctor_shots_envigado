class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.string :nombre
      t.float :precio
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
