class Membership < ApplicationRecord
  belongs_to :club
  belongs_to :user

  validates :admin, :level, presence: true

end
