class RenameFollowerCountInUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :follower_count, :followers_count
  end
end
