class Membership < ApplicationRecord
  belongs_to :club
  belongs_to :user

  attr_accessor :club_password 

  validates :level,:club_password, presence: true
  validates :admin, inclusion: { in: [true, false] }
  validates :user_id, uniqueness: { scope: :club_id, message: "You've already got a membership here!" }

end