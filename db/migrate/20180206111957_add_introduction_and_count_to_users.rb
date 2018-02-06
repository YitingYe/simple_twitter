class AddIntroductionAndCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :introduction, :text
    add_column :users, :follower_count, :integer
    add_column :users, :likes_count, :integer
  end
end
