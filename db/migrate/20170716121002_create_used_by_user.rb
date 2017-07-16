class CreateUsedByUser < ActiveRecord::Migration[5.0]
  def change
    create_table :used_by_users do |t|
      t.belongs_to :bicycle, foreign_key: true
      t.belongs_to :user, foreign_key: true
    end
  end
end
