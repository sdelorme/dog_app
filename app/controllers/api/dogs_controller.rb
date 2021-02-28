class Api::DogsController < ApplicationController
  def index
    @index = Dog.all
    render 'index.json.jb'
  end
end
