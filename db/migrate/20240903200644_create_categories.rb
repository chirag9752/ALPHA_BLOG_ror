class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end
  end
end


# called test driven model in which first we right test and then we start 
# creating so that in minimum code we achieve what we want