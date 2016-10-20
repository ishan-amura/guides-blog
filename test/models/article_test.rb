require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true

  def setup
  	@article = Article.new(title:"avc",text:"asedsaewqe")
  end

  test "title should be of 5 char" do
  	@article.title = "sda"
  	assert_not @article.valid?
  end
  
 end
