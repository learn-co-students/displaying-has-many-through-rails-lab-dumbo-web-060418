class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor


  def datetime
    self.appointment_datetime.strftime(format='%B %e, %Y at %k:%M')
  end
end
