class BbcNewsController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=#{Rails.application.credentials.bbc_api[:api_key]}")

    render json: response.parse(:json)
  end
end
