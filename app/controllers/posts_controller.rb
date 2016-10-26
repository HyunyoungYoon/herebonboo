class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    @post.save
      
    uploader = HbUploader.new
    uploader.store!(params[:img_name])
    @post.update(img_name: uploader.url)
    
    flash[:notice] = 'Your post has been successfully saved in timeline.' # does not work
    
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all.order("created_at DESC")
    @post = Post.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @posts }
    end
    
    
  end

  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render xml: @post }
    end
  end

  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render xml: @post }
    end
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update(post_params)
        flash[:notice] = '$2 was successfully updated.'
        format.html { redirect_to(@post) }
        format.xml  { head :ok }
      else
        format.html { render action: 'edit' }
        format.xml  { render xml: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
  def post_params
    params.require(:post).permit(:content, :img_name)
  end
end
