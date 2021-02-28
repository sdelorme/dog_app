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
    sex: params[:sex],  
    )
    @dog.save
    render 'show.json.jb'
  end
  def show
    if params[:id].to_i < Dog.count
      @dog = Dog.find_by(id: params[:id])
    else
      @dog = Dog.new
    end
    render 'show.json.jb'
  end
  def update
    @dog = Dog.find_by(id: params[:id])
    @dog.breed = params[:breed] || @dog.breed
    @dog.name = params[:name] || @dog.name
    @dog.age = params[:age] || @dog.age
    @dog.sex = params[:sex] || @dog.sex
    @dog.color = params[:color] || @dog.color
    @dog.save
    render 'show.json.jb'
  end
  def destroy
    @dog = Dog.find_by(id: params[:id])
    @dog.destroy
    render json: {message: "oops! you deleted this dog"}
  end   
end
