object @blog_category
attributes :id, :name, :description
node(:edit_url) { |category| edit_blog_category_url(category) if current_user_category?(category)}

child :user do
  attributes :name
end
