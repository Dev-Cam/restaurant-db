class CommentsController < ApplicationController
  
  def create
    
    #create a new comment for the post from current user
    @comment = @current_user.comments.new(comment_params)
    if !@comment.save
      flash[:notice] = @comment.errors.full_message.to_sentence
    end

    redirect_to recipe_path(params[:recipe_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(recipe_id: params[:recipe_id])
  end
end
