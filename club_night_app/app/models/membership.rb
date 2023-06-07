class Membership < ApplicationRecord
  belongs_to :club
  belongs_to :user

  validates :admin, :level, presence: true
  validates :user_id, uniqueness: { scope: :club_id, message: "You've already got a membership here!" }
  validate :maximum_players_court_1

  def maximum_players_court_1
    court_1_players = Membership.where(court: 1).count
    if court == 1 && court_1_players >= 4
      errors.add(:checked, "cannot have more than 4 players on court 1")
    end
  end
end