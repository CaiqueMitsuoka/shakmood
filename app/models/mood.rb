class Mood < ApplicationRecord
  belongs_to :team

  enum status: [ :happy, :normal, :sad, :stressed ]

  validates_presence_of :status
end
