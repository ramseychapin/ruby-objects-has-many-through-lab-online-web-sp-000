class Patient

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, patient, self)
  end


  def appointments
    Appointments.all.select do |appts|
      appts.doctor = self
    end
  end


  def patients
    appointments.collect { |appointment| appointment.patient }
  end

end
