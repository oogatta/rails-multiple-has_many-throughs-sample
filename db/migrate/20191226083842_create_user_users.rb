class CreateUserUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :user_users do |t|
      t.references :hoge, null: false, foreign_key: { to_table: :users }
      t.references :fuga, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
