class BlogCategoriesController < ApplicationController
  before_filter :authorize,only: [:new,:edit,:create,:update,:destroy]
  before_filter :admin?,only: [:edit,:update,:destroy]
  # GET /blog_categories
  # GET /blog_categories.json
  def index
    @blog_categories = current_user ? current_user.blog_categories.paginate(:page => params[:page]) : BlogCategory.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json # index.json.rabl
    end
  end

  # GET /blog_categories/1
  # GET /blog_categories/1.json
  def show
    @blog_category = BlogCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json # show.json.
    end
  end

  # GET /blog_categories/new
  # GET /blog_categories/new.json
  def new

    @blog_category = BlogCategory.new 

    respond_to do |format|
      unless current_user.blank?
        format.html # new.html.erb
        format.json { render json: @blog_category }
      else
        store_location
        format.html {redirect_to(login_url)}# new.html.erb
        format.json { render json: @blog_category }
      end
    end
  end

  # GET /blog_categories/1/edit
  def edit
    @blog_category = BlogCategory.find(params[:id])
  end

  # POST /blog_categories
  # POST /blog_categories.json
  def create
    @blog_category = current_user.blog_categories.new(params[:blog_category])

    respond_to do |format|
      if @blog_category.save
        format.html { redirect_to @blog_category, notice: 'Blog category was successfully created.' }
        format.json { render json: @blog_category, status: :created, location: @blog_category }
      else
        format.html { render action: "new" }
        format.json { render json: @blog_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blog_categories/1
  # PUT /blog_categories/1.json
  def update
    @blog_category = BlogCategory.find(params[:id])

    respond_to do |format|
      if @blog_category.update_attributes(params[:blog_category])
        format.html { redirect_to @blog_category, notice: 'Blog category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_categories/1
  # DELETE /blog_categories/1.json
  def destroy
    
    @blog_category.destroy

    respond_to do |format|
      format.html { redirect_to blog_categories_url }
      format.json { head :no_content }
    end
  end

 private
   def admin?
    @blog_category = BlogCategory.find(params[:id])
    (current_user ? current_user.blog_categories.include?(@blog_category) : false)
    respond_to do |format|
      format.html { redirect_to root_url }
      format.any(:xml, :json) { render nothing: true, status: :forbidden }
    end
  end
end
