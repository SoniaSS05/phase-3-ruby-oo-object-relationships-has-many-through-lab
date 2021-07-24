class Doctor

    attr_accessor :name

    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.create(name)
        doctor = doctor.new(name)
        doctor
    end

    def appointments
        Appointment.all.filter {|appointment| appointment.doctor == self}
    end

    def patients
       self.appointments.map {|appointment| appointment.patient }
    end

    def new_appointment(date,patient)
      Appointment.new(date, patient, self)
    end

end
