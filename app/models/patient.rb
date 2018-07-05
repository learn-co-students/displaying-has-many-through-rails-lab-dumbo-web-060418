class Patient < ActiveRecord::Base

  has_many :appointments
  has_many :doctors, through: :appointments

  def appointment_count
    self.appointments.count
  end

  def appointment_time
    self.appointments.map {|appointment| appointment.appointment_datetime.strftime("%B %-d, %Y at %T")}
  end
end
