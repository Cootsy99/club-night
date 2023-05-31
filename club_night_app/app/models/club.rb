class Club < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :users, through: :memberships

    validates :name, :founder, :location, :timetable  presence: true
  validates :name, uniqueness: true


end
