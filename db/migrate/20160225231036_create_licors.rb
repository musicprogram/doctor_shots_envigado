class CreateLicors < ActiveRecord::Migration
  def change
    create_table :licors do |t|
      t.string :nombre
      t.float :mililitros
      t.float :valor
      t.belongs_to :category_licor, index: true, foreign_key: true
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
