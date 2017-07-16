class UsedByUser < ApplicationRecord
  belongs_to :user
  belongs_to :bicycle
end
