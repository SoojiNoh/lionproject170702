class BoardController < ApplicationController
  before_action :set_post, only: [:show_post, :edit_post, :update_post, :destroy_post]
  before_action :set_comment, only: [:edit_comment, :update_comment, :destroy_comment]
  

  def index
    @posts = Post.all
  end
  
  def new_post
    @post = Post.new
  end
  
  def create_post
  end
  
  def show_post
  end
  
  def edit_post
  end
  
  def update_post
  end

  def destroy_post
  end
  
  def new_comment
  end
  
  def create_comment
  end
  
  def edit_comment
  end
  
  def update_comment
  end
  
  def destroy_comment
  end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def post_params
    #   params.require(:post).permit(:title, :description)
    # end
    
    def post_params
      params.require(:post).permit(:category, :title, :content)
    end
end
