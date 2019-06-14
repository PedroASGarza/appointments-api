class AppointmentsController < ApplicationController

  def index
    appointments = Appointment.all
    render json: appointments
  end

  def show
    appointment = Appointment.find(params[:id])
    render json: appointment
  end

  def create
    appointment = Appointment.new(appointment_params)
    if appointment.save
      render json: appointment
    else
      render json: appointment.errors
    end
  end

  def update
    appointment = Appointment.find(params[:id])
    if appointment.update(appointment_params)
      render json: appointment
    else
      render json: appointment.errors
    end
  end

  def destroy
    appointment = Appointment.find(params[:id])
    appointment.destroy
  end

  private

  def appointment_params
    params.permit(:cause, :reminder, :physician_id, :patient_id)
  end
end
