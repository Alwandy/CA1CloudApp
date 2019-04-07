require "open-uri"

class HomeController < ApplicationController
  def index
    url = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=1ea665b090a945c284d2771a0c1edf71'
    article_serialized = open(url).read # reads the json and store it in a var
    @articles = JSON.parse(article_serialized) # Storing the json in a shared variable to for loop on index page
  end
end
