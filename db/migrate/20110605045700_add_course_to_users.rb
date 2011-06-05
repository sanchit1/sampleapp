class AddCourseToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :cn1, :string
    add_column :users, :cn2, :string
    add_column :users, :cn3, :string
    add_column :users, :cn4, :string
    add_column :users, :cn5, :string
    add_column :users, :cn6, :string
    add_column :users, :cn7, :string
  end

  def self.down
    remove_column :users, :cn7
    remove_column :users, :cn6
    remove_column :users, :cn5
    remove_column :users, :cn4
    remove_column :users, :cn3
    remove_column :users, :cn2
    remove_column :users, :cn1
  end
end
