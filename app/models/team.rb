class Team < ApplicationRecord
  has_many :moods
  has_many :users
end
