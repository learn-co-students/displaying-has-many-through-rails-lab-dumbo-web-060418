class AppointmentsController < ApplicationController

  def show
    set_appointment
    @doctor = @appointment.doctor
    @patient = @appointment.patient
    @datetime = @appointment.datetime
  end

  private
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
end
