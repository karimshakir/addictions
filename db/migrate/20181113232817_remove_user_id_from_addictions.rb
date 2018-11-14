class RemoveUserIdFromAddictions < ActiveRecord::Migration[5.2]
  def change
    remove_column :addictions, :user_id, :integer
  end
end
