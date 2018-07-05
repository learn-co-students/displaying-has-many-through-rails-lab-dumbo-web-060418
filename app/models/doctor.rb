class Doctor < ActiveRecord::Base

  has_many :appointments
  has_many :patients, through: :appointments

  def patient_count
    self.patients.count
  end

  def appointment_time
    self.appointments.map {|appointment| appointment.appointment_datetime.strftime("%B %-d, %Y at %T")}
  end
end
