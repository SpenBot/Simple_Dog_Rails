class DogsController < ApplicationController


  def index

    if !current_user
      flash[:alert] = "You must have an account to view your profile."
      redirect_to homes_nonuser_dogs_path
    else
      @my_dogs = current_user.dogs
      @dogs = Dog.where.not(id: @my_dogs.each{|my_dog| my_dog.id})
    end

  end


  def show

    if !current_user
      flash[:alert] = "You must have an account to view dogs profile."
      redirect_to homes_nonuser_dogs_path
    else
      @dog = Dog.find(params[:id])
    end

  end


  def new

    @dog = Dog.new

    if !current_user
      flash[:alert] = "You must have an account to create dog profiles."
      redirect_to dogs_path
    end

  end


  def create

    if !current_user
      flash[:alert] = "You must have an account to create dog profiles."
      redirect_to dogs_path
    else
      @dog = Dog.create!(dog_params.merge(user: current_user))
      redirect_to dog_path(@dog)
    end

  end


  def edit

    @dog = Dog.find(params[:id])

    if @dog.user != current_user
      flash[:alert] = "Only the dog owner can edit dog profiles."
      redirect_to dogs_path
    end

  end


  def update

    @dog = Dog.find(params[:id])

    if @dog.user == current_user
      @dog.update(dog_params)
    else
      flash[:alert] = "Only the dog owner can update dog profiles."
    end

    redirect_to dog_path(@dog)

  end


  def destroy
    @dog = Dog.find(params[:id])

    if @dog.user == current_user
      @dog.destroy
    else
      flash[:alert] = "Only the dog owner can delete dog profiles."
    end

    redirect_to dogs_path

  end



  private

    def dog_params
      params.require(:dog).permit(:name, :photo_url, :owner, :breed, :weight, :medical_check)
    end


end
