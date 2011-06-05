class CreateDocuments < ActiveRecord::Migration
  def self.up
    create_table :documents do |t|
      t.integer :parent_id
      t.string :content_type
      t.string :filename
      t.integer :size
      t.integer :attachable_id
      t.string :attachable_type
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :documents
  end
end
