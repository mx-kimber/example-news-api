class ArticlesController < ApplicationController

  def index

    web_response = HTTP.get("https://newsapi.org/v2/everything?q=starship&apiKey=#{Rails.application.credentials.news_api.api_key}").parse(:json)

    render json: web_response
  end
end


