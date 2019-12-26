class User < ApplicationRecord
  has_many :user_posts
  has_many :posts, through: :user_posts

  has_many :follower_followees, foreign_key: 'follower_id', class_name: 'FollowerFollowee'
  has_many :followees, through: :follower_followees, foreign_key: 'followee_id'

  has_many :followee_followers, foreign_key: 'followee_id', class_name: 'FollowerFollowee'
  has_many :followers, through: :followee_followers, foreign_key: 'follower_id'

  def followees_of_followees
    FollowerFollowee.where(follower_id: followees.ids).pluck(:followee_id)
  end
end
