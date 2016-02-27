class CreateBillLicors < ActiveRecord::Migration
  def change
    create_table :bill_licors do |t|
      t.integer :cantidad
      t.belongs_to :bill, index: true, foreign_key: true
      t.belongs_to :licor, index: true, foreign_key: true
      t.integer :total_mili
      t.float :total_valor
      t.timestamps null: false
    end
  end
end
