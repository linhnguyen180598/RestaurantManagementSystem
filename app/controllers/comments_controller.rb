class CommentsController < ApplicationController
  before_action :logged_in_user, :load_dish, only: [:create, :destroy]

  def create
    @comment = @dish.comments.build(comment_params)
    @comment.user_id = current_user.id
    @comment.dish_id = @dish.id
    if @comment.save
      flash[:success] = "Commented!"
      redirect_to dish_path(@dish)
    else
      flash[:danger] = "No comment"
      redirect_to dish_path(@dish)
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    redirect_to dish_path(@dish)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

  def load_dish
    @dish = Dish.find_by(id: params[:dish_id])
  end

end
