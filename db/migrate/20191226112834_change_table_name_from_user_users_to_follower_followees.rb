class ChangeTableNameFromUserUsersToFollowerFollowees < ActiveRecord::Migration[6.0]
  def change
    rename_table :user_users, :follower_followees
  end
end
