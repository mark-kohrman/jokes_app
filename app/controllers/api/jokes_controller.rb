class Api::JokesController < ApplicationController

  def index

    render 'index.json.jb'
  end
end
