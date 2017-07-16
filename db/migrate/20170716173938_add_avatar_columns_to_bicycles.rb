class AddAvatarColumnsToBicycles < ActiveRecord::Migration[5.0]
  def up
    add_attachment :bicycles, :avatar
  end

  def down
    remove_attachment :bicycles, :avatar
  end
end
