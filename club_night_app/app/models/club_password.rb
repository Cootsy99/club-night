class ClubPassword < ApplicationRecord
  belongs_to :club

  # validates :password, presence: true
end
