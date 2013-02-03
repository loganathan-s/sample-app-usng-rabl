module ApplicationHelper
  def current_user_comments?(comment)
    current_user ? (current_user.comments.include?(comment) ? true : false) : false
  end

  def current_user_entry?(entry)
    current_user ? (current_user.blog_entries.include?(entry) ? true : false) : false
  end


  def current_user_category?(category)
    current_user ? (current_user.blog_categories.include?(category) ? true : false) : false
  end
end
