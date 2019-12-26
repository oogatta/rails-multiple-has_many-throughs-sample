class Team < ApplicationRecord
  has_many :team_users
  has_many :users, through: :team_users
  has_many :posts, through: :users
  has_many :fugas, through: :users
end
