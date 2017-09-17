class DaycaresController < ApplicationController


  def index
    @daycares = Daycare.all
  end


  def show
    @daycare = Daycare.find(params[:id])
  end


  def new
    @daycare = Daycare.new
  end


  def create
  @daycare = Daycare.create!(daycare_params)

  redirect_to daycare_path(@daycare)
  end


  def edit
    @daycare = Daycare.find(params[:id])
  end


  def update
    @daycare = Daycare.find(params[:id])
    @daycare.update(daycare_params)

    redirect_to daycare_path(@daycare)
  end


  def destroy
    @daycare = Daycare.find(params[:id])
    @daycare.destroy

    redirect_to daycares_path

  end



  private

    def daycare_params
      params.require(:daycare).permit(:name, :address, :price)
    end


end
