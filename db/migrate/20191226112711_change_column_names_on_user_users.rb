class ChangeColumnNamesOnUserUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_users, :hoge_id, :follower_id
    rename_column :user_users, :fuga_id, :followee_id
  end
end
