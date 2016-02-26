class CreateLicors < ActiveRecord::Migration
  def change
    create_table :licors do |t|
      t.string :nombre
      t.string :cantidad
      t.float :precio
      t.float :mililitros
      t.float :valor
      t.string :categoria
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
