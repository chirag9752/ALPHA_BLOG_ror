class AddAdminToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :admin, :boolean, default: false
  end
end


# user.toggle!(:admin)  ->  The toggle! method changes the value of a boolean column in the database from true to false or from false to true