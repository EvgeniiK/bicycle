class CreateBicycle < ActiveRecord::Migration[5.0]
  def change
    create_table :bicycles do |t|
      t.string :name, uniqueness: true, index: true
      t.text :description
      t.string :category
      t.belongs_to :user

      t.index :category

      t.timestamps
    end
  end
end
