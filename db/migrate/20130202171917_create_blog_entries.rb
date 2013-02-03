class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.string :title
      t.text :content
      t.references :user
      

      t.timestamps
    end
    add_index :blog_entries, :user_id
  end
end
