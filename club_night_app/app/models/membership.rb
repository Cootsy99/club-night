class Membership < ApplicationRecord
  belongs_to :club
  belongs_to :user

  validates :admin, :level, presence: true
  validates :user_id, uniqueness: { scope: :club_id, message: "You've already got a membership here!" }

  def self.membership_counter
    self.count
  end
end
