class User < ApplicationRecord
  has_many :user_posts
  has_many :posts, through: :user_posts

  has_many :hoge_fugas, foreign_key: 'hoge_id', class_name: 'UserUser'
  has_many :fugas, through: :hoge_fugas, foreign_key: 'fuga_id'

  has_many :fuga_hoges, foreign_key: 'fuga_id', class_name: 'UserUser'
  has_many :hoges, through: :fuga_hoges, foreign_key: 'hoge_id'
end
