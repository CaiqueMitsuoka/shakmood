class User < ApplicationRecord
  belongs_to :team

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
