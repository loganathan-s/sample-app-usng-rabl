class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :description
      t.references :user
      t.references :blog_entry
      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :blog_entry_id
  end
end
