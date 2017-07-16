class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bicycles
  has_many :suggestions
  has_many :suggested_bicycles, through: :suggestions, source: :bicycle
  has_many :used_by_users
  has_many :used_bicycles, through: :used_by_users, source: :bicycle

  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
