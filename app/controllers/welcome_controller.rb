class WelcomeController < ApplicationController
  def index
  	@art = Article.first 
  	@com = @art.comments.first
  end
  def about
  	show_paths()
  end
  def show_paths
  	print welcome_about_url
  end
end

