class AddUsernameAndPhonenumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :phonenumber, :string
  end
end
