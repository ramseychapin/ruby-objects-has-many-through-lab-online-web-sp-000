class Patient

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end


  def appointments
    Appointments.all.select do |appts|
      appts.patient = self
    end
  end


  def patients
    appointments.collect { |appointment| appointment.patient }
  end

end
