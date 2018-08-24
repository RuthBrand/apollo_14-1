class Astronaut < ApplicationRecord
  validates_presence_of :name, :age, :job

  belongs_to :space_mission

  def self.average_age
    average(:age)
  end

  def self.space_missions
    space_missions.order(name: :asc)
  end
end
