class CreateBlogCategoriesBlogEntries < ActiveRecord::Migration
  def up
    create_table :blog_categories_blog_entries, :id => false do |t|
      t.references :blog_category, :null => false
      t.references :blog_entry, :null => false
    end
    
  end

  def down
  end
end
