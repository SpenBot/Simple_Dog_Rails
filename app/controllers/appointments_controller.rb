class AppointmentsController < ApplicationController

  def new
    @dog = Dog.find(params[:dog_id])
    @appointment = @dog.appointments.new
    # @appointment = Appointment.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @appointment = @dog.appointments.create!(appointment_params)

    redirect_to dog_path(@dog)
  end

  def edit
    @dog = Dog.find(params[:dog_id])
    @appointment = @dog.appointments.find(params[:id])    
    # @appointment = Appointment.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:dog_id])
    @appointment = @dog.appointments.find(params[:id])
    # @appointment = Appointment.find(params[:id])

    @appointment.update(appointment_params)

    redirect_to dog_path(@dog)
  end

  def destroy
    @dog = Dog.find(params[:dog_id])
    @appointment = @dog.appointments.find(params[:id])
    # @appointment = Appointment.find(params[:id])

    @appointment.destroy

    redirect_to dog_path(@dog)
  end

  private
  def appointment_params
    params.require(:appointment).permit(:dog_id, :daycare_id, :day, :month, :year, :hour)
  end

end
