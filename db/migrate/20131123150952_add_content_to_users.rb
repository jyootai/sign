class AddContentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :content, :string
  end
end
