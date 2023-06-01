class Club < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :users, through: :memberships

    validates :name, :founder, :location, :timetable,  presence: true
  validates :name, uniqueness: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "founder", "id", "location", "name", "timetable", "updated_at"]
end

def self.ransackable_associations(auth_object = nil)
  ["memberships", "users"]
end

end
