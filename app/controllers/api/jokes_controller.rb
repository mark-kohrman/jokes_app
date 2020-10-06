class Api::JokesController < ApplicationController

  def index

    render 'index.json.jb'
  end

  def show
    response = HTTP.get("https://us-central1-dadsofunny.cloudfunctions.net/DadJokes/random/jokes?key=#{Rails.application.credentials.jokes_api[:api_key]}")
    @joke = response.parse

    render 'show.json.jb'
  end
end
