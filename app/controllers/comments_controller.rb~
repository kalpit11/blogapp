class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create(params[:comment])
    #redirect_to blog_path(@blog)
    respond_to do |format|  
      if @comment.save  
        format.html { redirect_to(@blog) }  
        format.js
      else  
        format.html { render :action => "new" }  
        format.js  { render :js=>'alert("Commenter and body cannot be blank");' }
      end  
    end
  end
 
  def destroy
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    redirect_to blog_path(@blog)
  end
end
