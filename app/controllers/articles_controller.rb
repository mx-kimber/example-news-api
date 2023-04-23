class ArticlesController < ApplicationController

  def index

    web_response = HTTP.get("https://newsapi.org/v2/everything?q=starship&apiKey=#{Rails.application.credentials.news_api.api_key}").parse(:json)

    articles = web_response["articles"]
    filtered_articles = [ ]
    articles.each do |article|
      if article["title"][0] == "E"
        filtered_articles << article
      end
    end
    render json: filtered_articles
  end
end


