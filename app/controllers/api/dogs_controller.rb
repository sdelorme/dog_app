class Api::DogsController < ApplicationController
  def index
    @index = Dog.all
    render 'index.json.jb'
  end
  def create
    @dog = Dog.new(
    breed: params[:breed],
    name: params[:name],
    age: params[:age],
    color: params[:color],
    sex: params [:sex]  
    )
    @dog.save
    render 'index.json.jb'
  end
end
