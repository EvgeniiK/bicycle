class Bicycle < ApplicationRecord
  has_many :suggestions
  has_many :used_by_users

  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :avatar, content_type: %r{\Aimage\/.*\z}
  validates :avatar, :name, :description, presence: true

  scope :unused_bicycles, -> (user_id) { includes(:used_by_users).where('used_by_users.user_id = ?', user_id).references(:used_by_users) }
end
