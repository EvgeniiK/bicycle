class CreateSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :suggestions do |t|
      t.belongs_to :bicycle
      t.belongs_to :user
      t.json :diff
    end
  end
end
