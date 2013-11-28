class RemoveContentFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :content, :string
  end
end
