class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_buyms

  def create
    @comment = @buym.comments.create(comment_params)
    respond_to do |format|
        format.html { redirect_to @buym }
        format.js
    end
  end

  def destroy
    @comment = @buym.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
        format.html { redirect_to @buym }
        format.js
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:body, :user_id)
  end

  def set_buyms
    @buym = Buym.find(params[:buym_id])
  end
end
