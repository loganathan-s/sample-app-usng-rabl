object @blog_entry
attributes :id, :title, :content,:created_at
node(:edit_url) { |entry| edit_blog_entry_url(entry) if current_user_entry?(entry)}

child :user do
  attributes :id, :name
end

child :comments do
  attributes :id, :description
end