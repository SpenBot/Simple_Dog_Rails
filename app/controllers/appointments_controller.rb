class AppointmentsController < ApplicationController
  before_action :validate_user

  def validate_user

  end

  def show

    @appointment = Appointment.find(params[:id])

    if (current_user == @appointment.daycare.user)
      @appointment = Appointment.find(params[:id])
    elsif (current_user == @appointment.dog.user)
      @appointment = Appointment.find(params[:id])
    else
      @appointment = nil
      flash[:alert] = "You are not authorized to view this appointment."
      redirect_to dogs_path
    end

  end


  def new







    if !current_user
      flash[:alert] = "You must have an account to create new appointments."
      redirect_to dogs_path

    else
      @dogs = Dog.all
      @daycares = Daycare.all

      @appointment = Appointment.new
    end

  end


  def create
    # @appointment = Appointment.create!(appointment_params)
    #
    # redirect_to appointment_path(@appointment)



    @appointment = Appointment.new(appointment_params)

    if (current_user == @appointment.daycare.user)
      @appointment.save
      redirect_to appointment_path(@appointment)
    elsif (current_user == @appointment.dog.user)
      @appointment.save
      redirect_to appointment_path(@appointment)
    else
      @appointment = nil
      flash[:alert] = "You are not authorized to make appointments for others."
      redirect_to dogs_path
    end


  end


  def edit

    @appointment = Appointment.find(params[:id])

    if (current_user == @appointment.daycare.user)
      @appointment = Appointment.find(params[:id])
    elsif (current_user == @appointment.dog.user)
      @appointment = Appointment.find(params[:id])
    else
      @appointment = nil
      flash[:alert] = "You are not authorized to edit this appointment."
      redirect_to dogs_path
    end

    # @appointment = Appointment.find(params[:id])
    # puts "*"*44
    # puts "*"*44
    # puts "current_user"
    # puts current_user
    # puts "daycare user"
    # puts @appointment.daycare.user
    # puts "dog user"
    # puts @appointment.dog.user
    # puts "*"*44
    # puts "*"*44

    # if (current_user != @appointment.daycare.user)
    #   flash[:alert] = "You are not authorized to edit this appointment."
    #   redirect_to dogs_path
    # elsif (current_user != @appointment.dog.user)
    #   flash[:alert] = "You are not authorized to edit this appointment."
    #   redirect_to dogs_path
    # end

  end


  def update
    # @appointment = Appointment.find(params[:id])
    # @appointment.update(appointment_params)
    #
    # redirect_to appointment_path(@appointment)

    @appointment = Appointment.find(params[:id])

    if (current_user == @appointment.daycare.user)
      @appointment.update(appointment_params)
      redirect_to appointment_path(@appointment)
    elsif (current_user == @appointment.dog.user)
      @appointment.update(appointment_params)
      redirect_to appointment_path(@appointment)
    else
      flash[:alert] = "You are not authorized to update this appointment."
      redirect_to appointment_path(@appointment)
    end


  end


  def destroy
    # @appointment = Appointment.find(params[:id])
    # @appointment.destroy
    #
    # redirect_to dog_path(@appointment.dog)

    @appointment = Appointment.find(params[:id])

    if (current_user == @appointment.daycare.user)
      @appointment.destroy(@appointment.dog)
      redirect_to dogs_path
    elsif (current_user == @appointment.dog.user)
      @appointment.destroy
      redirect_to dogs_path(@appointment.dog)
    else
      @appointment = nil
      flash[:alert] = "You are not authorized to update this appointment."
      redirect_to dogs_path
    end

  end


  private
  def appointment_params
    params.require(:appointment).permit(:dog_id, :daycare_id, :created_by, :weekday, :month, :day, :time)
  end


end
