class CommentsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin", only: :destroy
  # GET /examples
  # GET /examples.json
  def index
    @comments = Comment.all
  end


  def show
  end

  def new
    @comment = Comment.new
  end
  def edit
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to article_path(@article), notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  	@article = Article.find(params[:article_id])
  	@comment = Comment.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to article_path(@article), notice: 'comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @example.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to article_path(@article), notice: 'comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end

end