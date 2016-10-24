class ArticlesController < ApplicationController
	#http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]
	before_action :set_article, only: [:show, :edit, :update, :destroy]
	def index 
		@articles = Article.all.order(created_at: :desc)
		respond_to do |format|
        format.html { render :index, notice: 'Article was successfully created.' }
        format.json { render json: @articles, status: :created }
    end
	end
	def show
		respond_to do |format|
        format.html { render @article, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created }
    end
	end
	def new
		@article = Article.new
	end
	def edit
	end
	def create
		@article = Article.new(article_params)
  	respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
	end
	def update
	  respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
	end
	def destroy
  	@article.destroy
    respond_to do |format|
      format.html { redirect_to articles_path, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
	end
	private
		def article_params
			params.require(:article).permit(:title,:text)
		end
		def set_article
			@article = Article.find(params[:id])
		end
end
