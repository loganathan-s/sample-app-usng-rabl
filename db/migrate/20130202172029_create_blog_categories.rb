class CreateBlogCategories < ActiveRecord::Migration
  def change
    create_table :blog_categories do |t|
      t.string :name
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :blog_categories, :user_id
  end
end
