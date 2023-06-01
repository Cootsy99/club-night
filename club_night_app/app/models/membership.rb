class Membership < ApplicationRecord
  belongs_to :club
  belongs_to :user

  validates :admin, :level, presence: true
  def self.membership_counter
    self.count
  end
end
