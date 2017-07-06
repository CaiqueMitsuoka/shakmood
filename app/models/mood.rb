class Mood < ApplicationRecord
  enum status: [ :happy, :normal, :sad, :stressed ]

  validates_presence_of :status
end
