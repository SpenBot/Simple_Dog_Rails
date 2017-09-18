class AppointmentsController < ApplicationController


  def show
    @appointment = Appointment.find(params[:id])
  end


  def new
    @dogs = Dog.all
    @daycares = Daycare.all
    @appointment = Appointment.new
    # THIS IS NESTED STUFF
    # @dog = Dog.find(params[:dog_id])
    # @appointment = @dog.appointments.new
  end


  def create
    @appointment = Appointment.create!(appointment_params)

    redirect_to appointment_path(@appointment)

    # THIS IS NESTED STUFF
    # @dog = Dog.find(params[:dog_id])
    # @appointment = @dog.appointments.create!(appointment_params)
  end


  def edit
    @appointment = Appointment.find(params[:id])

    # THIS IS NESTED STUFF
    # @dog = Dog.find(params[:dog_id])
    # @appointment = @dog.appointments.find(params[:id])
  end


  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)

    redirect_to appointment_path(@appointment)
    # redirect_to dog_path(@appointment.dog)

    # THIS IS NESTED STUFF
    # @dog = Dog.find(params[:dog_id])
    # @appointment = @dog.appointments.find(params[:id])
  end


  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

    redirect_to dog_path(@appointment.dog)

    # THIS IS NESTED STUFF
    # @dog = Dog.find(params[:dog_id])
    # @appointment = @dog.appointments.find(params[:id])
  end


  private
  def appointment_params
    params.require(:appointment).permit(:dog_id, :daycare_id, :day, :month, :year, :hour)
  end


end
