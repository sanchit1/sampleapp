class AddRollnoToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :rollno, :string
  end

  def self.down
    remove_column :users, :rollno
  end
end
