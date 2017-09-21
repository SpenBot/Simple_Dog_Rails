class DaycaresController < ApplicationController


  def index
    if current_user
      @my_daycares = current_user.daycares
      @daycares = Daycare.where.not(id: @my_daycares.each{|my_daycare| my_daycare.id})
    else
      @daycares = Daycare.all
    end
  end


  def show
    @daycare = Daycare.find(params[:id])
  end


  def new

    @daycare = Daycare.new

    if !current_user
      flash[:alert] = "You must have an account to create daycare profiles."
      redirect_to daycares_path
    end

  end


  def create

    if !current_user
      flash[:alert] = "You must have an account to create daycare profiles."
      redirect_to daycares_path
    else
      @daycare = Daycare.create!(daycare_params).merge(user: current_user)
      redirect_to daycare_path(@daycare)
    end

  end


  def edit

    @daycare = Daycare.find(params[:id])

    if @daycare.user != current_user
      flash[:alert] = "Only the daycare users can edit dog profiles."
      redirect_to daycare_path
    end

  end


  def update

    @daycare = Daycare.find(params[:id])

    if @daycare.user == current_user
      @daycare.update(daycare_params)
    else
      flash[:alert] = "Only the daycare users can update dog profiles."
    end

    redirect_to daycare_path(@daycare)

  end


  def destroy
    @daycare = Daycare.find(params[:id])

    if @daycare.user == current_user
      @daycare.destroy
    else
      flash[:alert] = "Only the daycare owner can delete daycare profiles."
    end

    redirect_to daycares_path

  end



  private

    def daycare_params
      params.require(:daycare).permit(:name, :address, :city, :price, :photo_url)
    end


end
