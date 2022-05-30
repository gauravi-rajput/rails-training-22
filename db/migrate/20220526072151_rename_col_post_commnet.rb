class RenameColPostCommnet < ActiveRecord::Migration[6.1]
  def change
    rename_column :post_comments, :users_id, :user_id
  end
end
