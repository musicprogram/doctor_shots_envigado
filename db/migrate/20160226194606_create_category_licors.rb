class CreateCategoryLicors < ActiveRecord::Migration
  def change
    create_table :category_licors do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
